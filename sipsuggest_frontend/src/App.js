import './App.css';
import axios from 'axios';
import CocktailTable from './components/cocktailtable';
import { useEffect, useState } from 'react';

const API_URL = 'http://localhost:3000/recipes'

// function getAPIData() {
//   return axios.get(API_URL).then((resp) => resp.data)
// }

function App() {
  // const [recipes, setRecipes] = useState([])
  
  // useEffect(()=> {
  //   let mounted = true;
  //   getAPIData().then((items) => {
  //     if (mounted) {
  //       setRecipes(items);
  //       console.log(items)
  //     }
  //   });
  //   return () => (mounted = false);

  // }, []);
  
  return (
    <div className="App">
      <h1>SipSuggest</h1>    
      <CocktailTable />
    </div>
  );
}

export default App;
