import React, { useState } from 'react'
import Box from '@mui/material/Box';
import Card from '@mui/material/Card';
import CardActions from '@mui/material/CardActions';
import CardContent from '@mui/material/CardContent';
import CardMedia from '@mui/material/CardMedia';
import Button from '@mui/material/Button';
import Typography from '@mui/material/Typography';
import CardActionArea from '@mui/material/CardActionArea';
import image from '../images/cocktail_placeholder_crop.jpg'

function CocktailCard( {cocktailData} ) {

  const onClick = (value) => {
    console.log(value)
  }

  const listCards = cocktailData.map( cocktail => (
    <Card key={cocktail.id} sx={{ width: 300, height: 300, margin: 2 }} >
      <CardActionArea onClick={() => onClick(cocktail.name)} component='div' sx={{height: '100%'}}>
        <CardMedia
            component="img"
            height="200"
            image={image}
            alt="cocktail placeholder"
        />
        <CardContent>
          <Typography variant="h5" component="div" >
            {cocktail.name}
          </Typography>
          <Typography color="text.secondary">
            {cocktail.description}
          </Typography>
        </CardContent>
      </CardActionArea>
    </Card>
  )
  );



  return (
    <div style={{display: 'flex', flexWrap: 'wrap', justifyContent: 'center' }}>
      {listCards}
    </div>
  )
}

export default CocktailCard