import './App.css';
import axios from 'axios';
import CocktailTable from './components/cocktailtable';
import { useEffect, useState } from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import HomePage from './pages/homepage';
import RecipePage from './pages/recipepage';
import NewPage from './pages/newpage';


function App() {

  return (
    <Router>
      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route path="/recipes" element={<RecipePage />} />
        <Route path="/new" element={<NewPage />} />

      </Routes>
    </Router>
  );
}

export default App;
