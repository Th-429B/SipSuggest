import React, { useState } from 'react'
import Box from '@mui/material/Box';
import TextField from '@mui/material/TextField';
import SearchIcon from '@mui/icons-material/Search';
import InputAdornment from '@mui/material/InputAdornment';
import { Typography } from '@mui/material';


function Bar( {onSearchTextChange} ) {

  return (
    <Box       
      sx={{
        // width: '100%',
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
    </Box>
  );
}

export default Bar