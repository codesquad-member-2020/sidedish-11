import React from 'react';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    contentsWrap: {
        position: 'absolute',
        top: '23px',
        left: '-10px',
        zIndex: '2',
        backgroundColor: '#fff',
        border: '1px solid #b3b3b3',
        padding: '7px 0',
        width: '150px',
    },
    contents: {
        padding: '5px 20px',
        margin: '0',
        cursor: 'pointer',
        border: 'none',
        height: '23px',
        lineHeight: '23px',
        '&:hover': {
            color: '#18C2BD',
            textDecoration: 'underline',
        }
    }
});

function TopNavPopupList({ contents }) {
    const classes = useStyles();

    return (
        <div className={classes.contentsWrap}>
            {
                contents.map((content, idx) => {
                    return <div key={idx} className={classes.contents}>{content}</div>
                })
            }
        </div>
    );
}

export default TopNavPopupList;