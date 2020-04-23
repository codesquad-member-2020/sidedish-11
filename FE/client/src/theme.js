import { createMuiTheme } from '@material-ui/core/styles';

const theme = createMuiTheme({
    typography: {
        fontFamily: '"Noto Sans KR", serif',
    },
    palette: {
        primary: {
            main: '#18C2BD',
        },
        secondary: {
            main: '#e2e2e2',
        },
    },
});

export default theme;