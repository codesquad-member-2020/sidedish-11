import React from 'react';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
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
            },
        },
    },
});

function MenusSubList({ contents }) {
    const classes = useStyles();

    return (
        <ul className={classes.contents}>
            {
                contents.map((content, idx) => {
                    return <li key={idx}>{content}</li>
                })
            }
        </ul>
    );
}

export default MenusSubList;