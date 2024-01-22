import React from 'react'
import { Box, Button, ListItem, ListItemText, Typography, List, ListItemIcon } from '@mui/material';
import StarBorder from '@mui/icons-material/StarBorder';
import ArrowRightIcon from '@mui/icons-material/ArrowRight';



function CocktailDetails(data) {

  const ingredients = data.data.ingredients;

  const onClick = (value) => {
    console.log(data.data.steps);
      
  }  

  const listIngredients = data.data.ingredients.map( ingredient => {
    return (
        <ListItem key={ingredient.id}>
          <ListItemIcon>
            <ArrowRightIcon/>
          </ListItemIcon>
            <ListItemText primary={ingredient.name}/>
        </ListItem>
    )
  });

  const listSteps = data.data.steps.map( step => {
    return (
        <ListItem key={step.id}>
          <ListItemIcon>
            <ArrowRightIcon/>
          </ListItemIcon>
            <ListItemText primary={step.instruction}/>
        </ListItem>
    )
  });
  
  // TODO: Not sure why data passed as a prop is getting wrapped 2 times?
  return (
    <Box sx={{margin: 6}}>
      <Typography variant="h3">{data.data.name}</Typography>    
      <Button onClick={() => onClick(data.data.ingredients)}>TEST</Button>
      <Box sx={{display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center' }}>

        <Typography variant="h4">Ingredients:</Typography>    
        <List aria-label="ingredients" sx={{ width: '100%', bgcolor: 'background.paper' }}>
          {listIngredients}
        </List>

        <Typography variant="h4">Instructions:</Typography>    
        <List aria-label="steps" sx={{ width: '100%', bgcolor: 'background.paper' }}>
          {listSteps}
        </List>
      </Box>


      {/* {data.data.ingredients && listIngredients} */}

    </Box>
  )
}

export default CocktailDetails