import React, { useEffect, useState } from 'react'
import { Box } from '@mui/material'
import Header from '../components/header'
import axios from 'axios'
import CocktailCard from '../components/cocktailcard'

function RecipePage() {

  const [cocktails, setCocktails] = useState(null);

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

      {cocktails && <CocktailCard cocktailData={cocktails} />}
    </Box>
  )
}

export default RecipePage