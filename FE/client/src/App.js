import React from 'react';
import SidedishHeader from './components/header/SidedishHeader';
import './App.css';
import { MuiThemeProvider, createMuiTheme } from '@material-ui/core/styles';

const theme = createMuiTheme({
  typography: {
    fontFamily: '"Noto Sans KR", serif',
  }
})

function App() {
  return (
    <MuiThemeProvider theme={theme}>
      <SidedishHeader />
    </MuiThemeProvider>
  );
}

export default App;
