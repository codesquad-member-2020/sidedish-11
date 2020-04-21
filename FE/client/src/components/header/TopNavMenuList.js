import React from 'react';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    menu: {
        position: 'absolute',
        top: '23px',
        left: '-10px',
        zIndex: '2',
        backgroundColor: '#fff',
        border: '1px solid #b3b3b3',
        padding: '7px 0',
        width: '150px',
    },
    menuList: {
        listStyle: 'none',
        padding: '5px 20px',
        margin: '0',
        cursor: 'pointer',
        border: 'none',
        height: '23px',
        '&:hover': {
            color: '#18C2BD',
            textDecoration: 'underline',
        }
    }
});

function TopNavMenuList({ menuList }) {
    const classes = useStyles();

    return (
        <div className={classes.menu}>
            {
                menuList.map((menu, idx) => {
                    return <div key={idx} className={classes.menuList}>{menu}</div>
                })
            }
        </div>
    );
}

export default TopNavMenuList;