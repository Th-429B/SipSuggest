import React, { useState } from 'react'
import Box from '@mui/material/Box';
import TextField from '@mui/material/TextField';
import SearchIcon from '@mui/icons-material/Search';
import InputAdornment from '@mui/material/InputAdornment';
import { Button, Typography } from '@mui/material';


function Bar( {onSearchTextChange, onClickSearchButton, onClickRandomButton} ) {

  return (
    <Box       
      sx={{
        display:'flex', 
        flexDirection:'column',
        alignItems:'center'
      }}
    >
      <TextField id="outlined-basic" variant="outlined"        
        sx={{
          paddingRight: '10px',
          paddingLeft: '10px',
          boxSizing: 'border-box', // box sizing tells browser to include padding to total width so we don't have additional horizontal scroll
          width: '60%'
        }}
        onChange={(e) => onSearchTextChange(e.target.value)}  
        InputProps={{
          startAdornment: (
            <InputAdornment position="start">
              <SearchIcon />
            </InputAdornment>
          ),
        }}
        helperText='Enter an ingredient name'
      />
      <Box sx={{display:'flex', justifyContent:'space-around', gap:'16px'}}>
        <Button variant='contained' sx={{background:'grey'}} onClick={onClickSearchButton}>Search</Button>
        <Button variant='contained' sx={{background:'grey'}} onClick={onClickRandomButton}>I'm Feeling Lucky</Button>
      </Box>
    </Box>
  );
}

export default Bar