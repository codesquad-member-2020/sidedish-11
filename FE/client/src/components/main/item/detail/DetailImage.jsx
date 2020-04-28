import React, { useState } from 'react'
import ThumbImages from './ThumbImages';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    detailImageWrap: {
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
            justifyContent: 'space-between',
            '& img': {
                width: 'calc(20% - 10px)',
                height: 'auto',
                cursor: 'pointer',
            },
            '& .blank-thumb': {
                width: 'calc(20% - 10px)',
                height: 'auto',
                backgroundColor: '#e2e2e2',
            },
        },
    },
});

const DetailImage = ({ detailData }) => {
    const { top_image, thumb_images, product_description } = detailData.data;
    const classes = useStyles();
    const [currImage, setCurrImage] = useState(null);
    const handleMouseEnter = ({ target }) => setCurrImage(<img src={target.src} alt={target.alt}></img>);

    return (
        <div className={classes.detailImageWrap}>
            <div className='default-image'>
                {currImage ? currImage : <img src={top_image} alt={product_description}></img>}
            </div>
            <div className='thumb-images'>
                <img src={top_image} onMouseEnter={handleMouseEnter} alt={product_description}></img>
                <ThumbImages {...{ thumb_images, product_description, handleMouseEnter }} />
            </div>
        </div>
    )
}

export default DetailImage
