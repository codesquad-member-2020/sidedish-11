import React from 'react'
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    detailInfoWrap: {

    },
});

const DetailInfo = ({ title, product_description }) => {
    const classes = useStyles();

    return (
        <div className={classes.detailInfoWrap}>
            <h3>{title}</h3>
            <p>{product_description}</p>
            <div>

            </div>
        </div>
    )
}

export default DetailInfo
