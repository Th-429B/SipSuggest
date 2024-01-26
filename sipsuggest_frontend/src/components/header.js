import React from 'react';
import AppBar from '@mui/material/AppBar';
import Toolbar from '@mui/material/Toolbar';
import Typography from '@mui/material/Typography';
import LocalBarIcon from '@mui/icons-material/LocalBar';
import { Link } from 'react-router-dom';
import { Box, Button } from '@mui/material';


function Header() {
  return (
    <AppBar position="static" sx={{ backgroundColor: 'transparent', boxShadow: 'none' }}>
      <Toolbar>
        <Box sx={{display:'flex', alignItems:'center', flexGrow:1}}>
            <LocalBarIcon sx={{color: 'black'}}/>

            <Link to="/" style={{ textDecoration: 'none' }}>
              <Typography variant="h6" component="div" sx={{color:'black'}}>
                  SipSuggest
              </Typography>
            </Link>
        </Box>

        <Box sx={{display:'flex', justifyContent:'space-between'}}>

          <Link to="/" style={{ textDecoration: 'none', marginRight: 20 }}>
            <Typography variant="h6" component="div" sx={{color:'black'}}>
              Home
            </Typography>
          </Link>

          <Link to="/new" style={{ textDecoration: 'none', marginRight: 20 }}>
            <Typography variant="h6" component="div" sx={{color:'black'}}>
              New
            </Typography>
          </Link>

          <Link to="/recipes" style={{ textDecoration: 'none' }}>
            <Typography variant="h6" component="div" sx={{color:'black'}}>
              Recipes
            </Typography>
          </Link>
        </Box>



      </Toolbar>
    </AppBar>
  );
}

export default Header;
