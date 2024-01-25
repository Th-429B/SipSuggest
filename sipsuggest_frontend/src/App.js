import './App.css';
import axios from 'axios';
import CocktailTable from './components/cocktailtable';
import { useEffect, useState } from 'react';

function App() {

  return (
    <div className="App">
      <h1>SipSuggest</h1>    
      <CocktailTable />
    </div>
  );
}

export default App;
