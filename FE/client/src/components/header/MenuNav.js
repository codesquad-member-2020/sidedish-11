import React, { useState } from 'react';
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
        '&:last-child': {
            '& ul': {
                right: '0',
                padding: '10px 20px 10px 0',
                textAlign: 'end'
            }
        },
    },
});

function MenuNav() {
    const classes = useStyles();
    const defaultState = {
        sidedish: false,
        soups: false,
        maindish: false,
        forkids: false,
        mealplan: false,
        foreign: false,
        snack: false,
        brands: false,
    }
    const [isOpen, setOpen] = useState(defaultState);
    const handleMouseEnter = (key) => {
        setOpen({ ...defaultState, [key]: true });
    }
    const handleMouseLeave = () => {
        setOpen({ ...defaultState });
    }

    const menuList = menuData.map(menu => {
        return (
            <li onMouseEnter={() => { handleMouseEnter(menu.keyword) }} onMouseLeave={handleMouseLeave} className={classes.menu} key={menu.id}>
                <span className='title'>{menu.title}</span>
                {isOpen[menu.keyword] && <MenuList contents={menu.contents} />}
            </li>
        )
    });

    return (
        <div className={classes.menuNavWrap} onMouseLeave={handleMouseLeave} >
            <ul className={classes.menuNavInner}>
                {menuList}
            </ul>
        </div>
    );
}

export default MenuNav;