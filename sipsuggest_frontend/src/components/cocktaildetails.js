import React, { useState } from 'react'
import { Box, Button, ListItem, ListItemText, Typography, List, ListItemIcon, Checkbox, ListSubheader } from '@mui/material';
import StarBorder from '@mui/icons-material/StarBorder';
import ArrowRightIcon from '@mui/icons-material/ArrowRight';



function CocktailDetails(data) {
 
  console.log(data)
  const onClick = (value) => {
    console.log(data.data.steps);
      
  }  

  // const [checked, setChecked] = useState([]);

  // const handleToggle = (value) => {
  //   const currentIndex = checked.indexOf(value);
  //   const newChecked = [...checked];

  //   if (currentIndex === -1) {
  //     newChecked.push(value);
  //   } else {
  //     newChecked.splice(currentIndex, 1);
  //   }

  //   setChecked(newChecked);
  // };

  const listIngredients = data.data.ingredients.map( ingredient => {
    return (
        <ListItem 
          key={ingredient.id}
          secondaryAction={
            <Checkbox
              edge='end'
            />
          }
        >
          <ListItemIcon>
            <ArrowRightIcon/>
          </ListItemIcon>
            {/* <ListItemText 
              primary={ingredient.recipe_ingredients[0].quantity + ingredient.name}
            /> */}
            <Box sx={{ display: 'flex', justifyContent: 'space-between', width: '100%' }}>
            <ListItemText primary={ingredient.name} />
            <ListItemText primary={ingredient.quantity} sx={{display: 'flex', justifyContent: 'flex-end'}}/>
        </Box>
        </ListItem>
    )
  });

  const listSteps = data.data.steps.map( step => {
    return (
        <ListItem 
          key={step.id}
          secondaryAction={
            <Checkbox
              edge='end'
            />
          }
        >
          <ListItemIcon>
            <ArrowRightIcon/>
          </ListItemIcon>
            <ListItemText primary={step.instruction}/>
        </ListItem>
    )
  });
  
  // TODO: Not sure why data passed as a prop is getting wrapped 2 times?
  return (
    <Box sx={{ maxWidth:'1300px', marginX:40, marginY:20}}>
      <Typography variant="h3">{data.data.name}</Typography>    
      <h1>Image here</h1>
      <Button onClick={() => onClick(data.data.ingredients)}>TEST</Button>
      <Box sx={{display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center' }}>

        <Typography variant="h4">Ingredients:</Typography>    
        <List aria-label="ingredients" sx={{ width: '100%', bgcolor: 'background.paper' }}  
          subheader={
            <ListSubheader component="div">
              <Box sx={{ display: 'flex', justifyContent: 'space-between', paddingX: '25px'}}>
                <Typography variant="subtitle1">Ingredients</Typography>
                <Typography variant="subtitle1">Quantity</Typography>
              </Box>
            </ListSubheader>}>
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