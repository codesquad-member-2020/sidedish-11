import React from 'react'
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    detailInfoWrap: {
        width: '320px',
        height: 'auto',
        '& .default-image': {
            marginBottom: '10px',
            '& img': {
                width: '100%',
                height: 'auto',
            },
        },
        '& .thumb-images': {
            display: 'flex',
            '& img': {
                width: 'calc(20% - 10px)',
                height: 'auto',
                marginRight: '10px',
                cursor: 'pointer',
            },
            '& :last-child': {
                marginRight: '0',
            },
        },
    },
});

const DetailInfo = ({ title, description }) => {
    const classes = useStyles();

    return (
        <div className={classes.detailInfoWrap}>
            <h3>{title}</h3>
            <p>{description}</p>
            <div>

            </div>
        </div>
    )
}

export default DetailInfo
