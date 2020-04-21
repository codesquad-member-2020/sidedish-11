import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Menu from './Menu';
import { menuData } from '../../mock/menuData';

const useStyles = makeStyles({
    menuNavWrap: {
        width: '100%',
        lineHeight: '50px',
        backgroundColor: '#483F35',
        color: '#fff',
        fontSize: '15px',
    },
    menuNavInner: {
        width: '65%',
        padding: '0',
        margin: '0 auto',
        display: 'flex',
        justifyContent: 'space-between',
        '& li': {
            cursor: 'pointer',
            listStyle: 'none',
        }
    },
});

function MenuNav() {
    const classes = useStyles();
    return (
        <div className={classes.menuNavWrap}>
            <ul className={classes.menuNavInner}>
                <Menu menuData={menuData} />
            </ul>
        </div>
    );
}

export default MenuNav;