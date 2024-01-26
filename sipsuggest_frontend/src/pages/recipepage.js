import React, { useEffect, useState } from 'react'
import { Box, FormControl, FormControlLabel, FormGroup, Switch, Typography } from '@mui/material'
import Header from '../components/header'
import axios from 'axios'
import CocktailCard from '../components/cocktailcard'

function RecipePage() {

  const [cocktails, setCocktails] = useState(null);
  const [toggleAddButton, setToggleAddButton] = useState(false)

  const [isDeleteChecked, setIsDeleteChecked] = useState(false);

  const handleDeleteSwitchChange = () => {
    setIsDeleteChecked(!isDeleteChecked)
  };

  const fetchData = () => {
    const API = `http://localhost:3000/recipes?search=all`

    return axios.get(API)
            .then((resp) => resp.data)
            .catch(error => console.error('Error fetching data:', error))
  };

  useEffect(()=> {
    let mounted = true;
    fetchData().then((items) => {
      if (mounted) {
        setCocktails(items);
      }
    });
    return () => (mounted = false);

  }, []);

  return (
    <Box sx={{textAlign: 'center'}}>
      <Header/>
      <h1>Recipe Page</h1>

      <Box sx={{display:'flex', alignItems:'center', justifyContent:'flex-end', marginRight:30}}>
        <Switch
          checked={isDeleteChecked}
          onChange={handleDeleteSwitchChange}
          name="checkedSwitch"
          inputProps={{ 'aria-label': 'controlled' }}
          sx={{
            '& .MuiSwitch-switchBase.Mui-checked': {
              color: 'red',
            },
            '& .MuiSwitch-switchBase.Mui-checked + .MuiSwitch-track': {
              backgroundColor: 'red',
            },
          }}
        />
        <Typography>Delete a recipe</Typography>
      </Box>

      {cocktails && <CocktailCard cocktailData={cocktails} isDeleteToggled={isDeleteChecked}/>}
    </Box>
  )
}

export default RecipePage