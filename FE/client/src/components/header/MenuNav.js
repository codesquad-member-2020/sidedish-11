import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import MenuList from './MenuList';
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
            listStyle: 'none',
        },
    },
    menu: {
        position: 'relative',
        top: '5px',
        width: '100px',
        height: '60px',
        textAlign: 'center',
        cursor: 'pointer',
        '&:hover': {
            backgroundColor: '#fff',
            color: '#18C2BD',
            textDecoration: 'underline',
        },
        '& .title': {
            display: 'inline-block',
            fontSize: '16px',
        },
    },
});

function MenuNav() {
    const classes = useStyles();
    const menuList = menuData.map(menu => {
        return (
            <li className={classes.menu} key={menu.id}>
                <span className='title'>{menu.title}</span>
                <MenuList contents={menu.contents} />
            </li>
        )
    });

    return (
        <div className={classes.menuNavWrap}>
            <ul className={classes.menuNavInner}>
                {menuList}
            </ul>
        </div>
    );
}

export default MenuNav;