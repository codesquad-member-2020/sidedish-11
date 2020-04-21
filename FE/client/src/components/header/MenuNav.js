import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import MenuList from './MenuList';
import { menuData } from '../../mock/menuData';

const useStyles = makeStyles({
    menuNavWrap: {
        width: '100%',
        height: '60px',
        lineHeight: '55px',
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
            listStyle: 'none',
        },
    },
});

function MenuNav() {
    const classes = useStyles();

    return (
        <div className={classes.menuNavWrap}>
            <ul className={classes.menuNavInner}>
                <MenuList menuData={menuData} />
            </ul>
        </div>
    );
}

export default MenuNav;