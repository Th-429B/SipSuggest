import React, { useState } from 'react'
import Box from '@mui/material/Box';
import TextField from '@mui/material/TextField';

function  Searchbar() {

  const [searchText, setSearchText] = useState('');
  const [cocktails, setCocktails] = useState(null);

  const fetchData = () => {
    //const apiEndpoint = `https://api.example.com/data?query=${searchText}`;
    const API = 'http://localhost:3000/recipes'

    fetch(API)
      .then(response => response.json())
      .then(data => setCocktails(data))
      .catch(error => console.error('Error fetching data:', error));

    // axios.get(API_URL).then((resp) => resp.data).catch(error => console.error('Error fetching data:', error));
  };

  const handleInputChange = (event) => {
    setSearchText(event.target.value);
  };

  const handleKeyDown = (event) => {
    if (event.key === 'Enter'&& searchText != '') {
      fetchData();
    }
  };

  return (
    <Box       
      sx={{
        // display: 'flex', 
        width: '100%',
        // boxSizing: 'border-box'
        // flexDirection: 'column'
        // paddingRight: '10px',
        // paddingLeft: '10px'
      }}
    >
      <TextField id="outlined-basic" variant="outlined" fullWidth       
        sx={{
          paddingRight: '10px',
          paddingLeft: '10px',
          boxSizing: 'border-box' // box sizing tells browser to include padding to total width so we don't have additional horizontal scroll
        }}
        onChange={handleInputChange}  
        onKeyDown={handleKeyDown}
      />
      {cocktails && (
        <div>
          <h3>Response Data:</h3>
          <pre>{JSON.stringify(cocktails, null, 2)}</pre>
        </div>
      )}
    </Box>
  );
}

export default Searchbar