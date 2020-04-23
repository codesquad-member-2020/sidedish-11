import React from 'react';
import './globalStyle/reset.css';
import './globalStyle/App.css';
import SidedishHeader from './components/header/SidedishHeader';
import SidedishMain from './components/main/SidedishMain';
import theme from './theme';
import { MuiThemeProvider } from '@material-ui/core/styles';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
  wrap: {
    minWidth: 1080
  }
});

function App() {
  const classes = useStyles();
  return (
    <MuiThemeProvider theme={theme}>
      <div className={classes.wrap}>
        <SidedishHeader />
        <SidedishMain />
      </div>
    </MuiThemeProvider>
  );
}

export default App;
