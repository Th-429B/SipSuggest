import React from 'react'
import CocktailTable from '../components/cocktailtable'
import { Box } from '@mui/material'
import Header from '../components/header'

function NewPage() {
  return (
    <Box sx={{textAlign: 'center'}}>
      <Header/>
      <h1>newpage</h1>    
    </Box>
  )
}

export default NewPage