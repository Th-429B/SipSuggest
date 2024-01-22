import React, { useState } from 'react'
import Bar from './bar';
import CocktailCard from './cocktailcard';
import { Typography } from '@mui/material';
import CocktailDetails from './cocktaildetails';
import axios from 'axios';


// this should contain the searchbar and the cards
function CocktailTable() {
  
  const [searchText, setSearchText] = useState('');
  const [cocktails, setCocktails] = useState(null);
  const [cocktailDetails, setCocktailDetails] = useState(null);

  const fetchData = () => {
    //const apiEndpoint = `https://api.example.com/data?query=${searchText}`;
    const API = `http://localhost:3000/recipes?search=${searchText}`

    // fetch(API)
    //   .then(response => response.json())
    //   .then(data => setCocktails(data))
    //   .catch(error => console.error('Error fetching data:', error));

    // first then gets the data from the request and passes it down
    // 2nd then gets the data from the first then and sets the data.
    axios.get(API)
      .then((resp) => resp.data)
      .catch(error => console.error('Error fetching data:', error))
      .then((data) => setCocktails(data));
  };

  const handleKeyDown = (event) => {
    if (event.key === 'Enter'&& searchText != '') {
      fetchData();
      setCocktailDetails(null);
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