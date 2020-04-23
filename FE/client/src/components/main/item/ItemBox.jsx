import React, { useState } from 'react'
import useFetch from '../../util/useFetch';
import CircularProgress from '@material-ui/core/CircularProgress';
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import ItemList from './ItemList';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles((theme) => ({
    itemList: {
        padding: '40px',
        '& .category': {
            color: '#999',
            fontSize: '18px',
            marginBottom: '15px',
        },
        '& .title': {
            color: '#5a5a5a',
            fontSize: '32px',
            fontWeight: '300',
        },
    },
    progress: {
        margin: theme.spacing(10),
    }
}));

const Item = ({ itemData }) => {
    const classes = useStyles();
    const [data, setData] = useState(null);
    const { category, title, url } = itemData;

    useFetch(setData, url);

    const settings = {
        infinite: true,
        speed: 500,
        slidesToScroll: 4,
        slidesToShow: 4
    };

    let itemList = <CircularProgress color="secondary" className={classes.progress} />
    if (data) itemList = (<Slider {...settings}><ItemList itemData={data.body} /></Slider>);

    return (
        <div className={classes.itemList}>
            <h2 className='category'>{category}</h2>
            <div className='title'>{title}</div>
            {itemList}
        </div>
    )
}

export default Item
