import React from 'react';
import Menus from './Menus';
import { makeStyles } from '@material-ui/core/styles';
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
});

function MenuNav() {
    const classes = useStyles();
    const menus = menuData.map(menu => <Menus id={menu.id} title={menu.title} contents={menu.contents} />);

    return (
        <div className={classes.menuNavWrap}>
            <ul className={classes.menuNavInner}>
                {menus}
            </ul>
        </div>
    );
}

export default MenuNav;