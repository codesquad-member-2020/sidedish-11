import React from 'react';
import SidedishHeader from './components/header/SidedishHeader';
import './globalStyle/reset.css';
import './globalStyle/App.css';
import { MuiThemeProvider, createMuiTheme } from '@material-ui/core/styles';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
  wrap: {
    minWidth: 1080
  }
});

const theme = createMuiTheme({
  typography: {
    fontFamily: '"Noto Sans KR", serif',
  }
});

function App() {
  const classes = useStyles();
  return (
    <MuiThemeProvider theme={theme}>
      <div className={classes.wrap}>
        <SidedishHeader />
      </div>
    </MuiThemeProvider>
  );
}

export default App;
