import React from 'react'
import CocktailTable from '../components/cocktailtable'
import { Box } from '@mui/material'
import Header from '../components/header'

function HomePage() {
  return (
    <Box sx={{textAlign: 'center'}}>
      <Header/>
      <h1>SipSuggest</h1>    
      <CocktailTable />
    </Box>
  )
}

export default HomePage