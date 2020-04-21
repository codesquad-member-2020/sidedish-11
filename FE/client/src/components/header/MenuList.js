import React from 'react';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    menu: {
        position: 'relative',
        top: '5px',
        width: '100px',
        height: '55px',
        textAlign: 'center',
        cursor: 'pointer',
        '&:hover': {
            backgroundColor: '#fff',
            color: '#18C2BD',
            textDecoration: 'underline',
        },
    },
    title: {
        display: 'inline-block',
        fontSize: '16px',
    },
    contents: {
        padding: '10px 0 10px 20px',
        position: 'absolute',
        color: '#5a5a5a',
        backgroundColor: '#fff',
        textAlign: 'start',
        top: '55px',
        width: '150px',
        border: '1px solid #b3b3b3',
        borderTop: 'none',
        zIndex: '1',
        '& li': {
            lineHeight: '35px',
            cursor: 'pointer',
            '&:hover': {
                backgroundColor: '#fff',
                color: '#18C2BD',
                textDecoration: 'underline',
            }
        },
    },
});

function MenuList({ menuData }) {
    const classes = useStyles();
    const menuList = menuData.map(menu => {
        return (
            <li className={classes.menu} key={menu.id}>
                <span className={classes.title}>{menu.title}</span>
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