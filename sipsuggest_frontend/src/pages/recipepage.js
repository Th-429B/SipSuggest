import React, { useEffect, useState } from 'react'
import { Box } from '@mui/material'
import Header from '../components/header'
import axios from 'axios'
import CocktailCard from '../components/cocktailcard'

function RecipePage() {

  const [cocktails, setCocktails] = useState(null);

  const fetchData = () => {
    //const apiEndpoint = `https://api.example.com/data?query=${searchText}`;
    const API = `http://localhost:3000/recipes?search=all`

    // fetch(API)
    //   .then(response => response.json())
    //   .then(data => setCocktails(data))
    //   .catch(error => console.error('Error fetching data:', error));

    // first then gets the data from the request and passes it down
    // 2nd then gets the data from the first then and sets the data.
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