import React, { useState } from 'react'
import { Box, Button, ListItem, ListItemText, Typography, List, ListItemIcon, Checkbox } from '@mui/material';
import StarBorder from '@mui/icons-material/StarBorder';
import ArrowRightIcon from '@mui/icons-material/ArrowRight';



function CocktailDetails(data) {
 
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
        >
          <ListItemIcon>
            <ArrowRightIcon/>
          </ListItemIcon>
            <ListItemText 
              primary={ingredient.name}
            />
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