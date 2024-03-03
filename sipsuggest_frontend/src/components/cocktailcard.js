import React, { useState } from 'react'
import Box from '@mui/material/Box';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import CardMedia from '@mui/material/CardMedia';
import Typography from '@mui/material/Typography';
import CardActionArea from '@mui/material/CardActionArea';
import image from '../images/cocktail_placeholder_crop.jpg'
import { Fab } from '@mui/material';
import CloseIcon from '@mui/icons-material/Close';


function CocktailCard( {cocktailData, onClick, isDeleteToggled} ) {

  // console.log(cocktailData)

  // const debug = (value) => {
  //   console.log(value)
  // }

  const listCards = cocktailData.map( cocktail => (
    <Card key={cocktail.id} sx={{ margin: 4, minWidth:350, minHeight: 350 }} >
      <CardActionArea onClick={() => onClick(cocktail)} component='div' sx={{height: '100%'}}>
        <CardMedia
            component="img"
            height="200"
            image={cocktail.img_link == "nil" ? image : cocktail.img_link}
            alt="Picture of cocktail"
        />
        <CardContent>
          <Typography variant="h5" component="div" >
            {cocktail.name}
          </Typography>
          <Typography color="text.secondary">
            {cocktail.description}
          </Typography>
        </CardContent>
        {isDeleteToggled && <Fab size="small" color="secondary" sx={{ bgcolor: 'red' }} aria-label="add">
          <CloseIcon />
        </Fab>}
      </CardActionArea>
    </Card>
  )
  );



  return (
    <Box sx={{display: 'flex', flexWrap: 'wrap', justifyContent: 'center', marginY:10 }}>
      {listCards}
    </Box>
  )
}

export default CocktailCard