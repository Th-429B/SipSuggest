import React, { useState } from 'react'
import Bar from './bar';
import CocktailCard from './cocktailcard';
import { Typography } from '@mui/material';
import CocktailDetails from './cocktaildetails';

// this should contain the searchbar and the cards
function CocktailTable() {
  
  const [searchText, setSearchText] = useState('');
  const [cocktails, setCocktails] = useState(null);
  const [cocktailDetails, setCocktailDetails] = useState(null);

  const fetchData = () => {
    //const apiEndpoint = `https://api.example.com/data?query=${searchText}`;
    const API = 'http://localhost:3000/recipes'

    fetch(API)
      .then(response => response.json())
      .then(data => setCocktails(data))
      .catch(error => console.error('Error fetching data:', error));

    // axios.get(API_URL).then((resp) => resp.data).catch(error => console.error('Error fetching data:', error));
  };

  const handleKeyDown = (event) => {
    if (event.key === 'Enter'&& searchText != '') {
      fetchData();
    }
  };

  return (
    <div onKeyDown={handleKeyDown}>
      <Bar onSearchTextChange={setSearchText}/>
      <h1>{searchText}</h1>
      {cocktails && <CocktailCard cocktailData={cocktails} onClick={setCocktailDetails}/>}
      {cocktailDetails && <CocktailDetails data={cocktailDetails}/>}
      {/* {cocktails && (
        <div>
          <h3>Response Data:</h3>
          <pre>{JSON.stringify(cocktails, null, 2)}</pre>
        </div>
      )} */}
    </div>
  )
}

export default CocktailTable