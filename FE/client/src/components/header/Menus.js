import React, { useState } from 'react';
import MenuList from './MenuList';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
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

function Menus({ id, title, contents }) {
    const classes = useStyles();
    const [isOpen, setOpen] = useState(false);
    const handleMouseEnter = () => setOpen(true);
    const handleMouseLeave = () => setOpen(false);

    return (
        <li onMouseEnter={handleMouseEnter}
            onMouseLeave={handleMouseLeave}
            className={classes.menu}
            key={id}>
            <span className='title'>{title}</span>
            {isOpen && <MenuList contents={contents} />}
        </li>
    );
}

export default Menus;