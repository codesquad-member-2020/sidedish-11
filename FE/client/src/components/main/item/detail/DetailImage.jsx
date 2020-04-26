import React, { useState } from 'react'
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

const DetailImage = ({ topImage, thumbImages, description }) => {
    const classes = useStyles();
    const [currImage, setCurrImage] = useState(null);
    const handleMouseEnter = ({ target }) => setCurrImage(<img src={target.src} alt={target.alt}></img>);

    return (
        <div className={classes.detailImageWrap}>
            <div className='default-image'>
                {currImage ? currImage : <img src={topImage} alt={description}></img>}
            </div>
            <div className='thumb-images'>
                <img src={topImage} onMouseEnter={handleMouseEnter} alt={description}></img>
                {thumbImages.map((imageURL, idx) => <img onMouseEnter={handleMouseEnter} key={idx} src={imageURL} alt={description}></img>)}
            </div>
        </div>
    )
}

export default DetailImage
