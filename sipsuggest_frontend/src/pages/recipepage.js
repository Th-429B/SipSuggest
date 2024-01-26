import React from 'react'
import CocktailTable from '../components/cocktailtable'
import { Box } from '@mui/material'
import Header from '../components/header'

function RecipePage() {
  return (
    <Box sx={{textAlign: 'center'}}>
      <Header/>
      <h1>Recipe Page</h1>    
    </Box>
  )
}

export default RecipePage