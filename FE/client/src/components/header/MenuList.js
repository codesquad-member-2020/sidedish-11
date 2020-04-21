import React from 'react';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    menu: {
        position: 'relative',
        '& span': {
            cursor: 'pointer',
        },
    },
    contents: {
        padding: '10px 0 20px 20px',
        position: 'absolute',
        color: '#5a5a5a',
        top: '40px',
        width: '150px',
        left: '-20px',
        border: '1px solid #b3b3b3',
        zIndex: '-1',
        '& li': {
            height: '30px',
            cursor: 'pointer',
        },
    },
});

function MenuList({ menuData }) {
    const classes = useStyles();
    const menuList = menuData.map(menu => {
        return (
            <li className={classes.menu} key={menu.id}>
                <span>{menu.title}</span>
                <ul className={classes.contents}>
                    {
                        menu.contents.map((content, idx) => {
                            return <li key={idx}>{content}</li>
                        })
                    }
                </ul>
            </li>
        )
    })

    return menuList;
}

export default MenuList;