import React from 'react'
import Slider from "react-slick";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    itemList: {
        display: 'relative',
        cursor: 'pointer',
        '& img': {
            margin: '0 auto',
            justifyContent: 'center',
            borderRadius: '50%',
            width: '215px'
        }
    },
});

const ItemList = ({ itemListData }) => {
    const classes = useStyles();
    const itemList = itemListData.map(data => {
        return (
            <div key={data.detail_hash} className={classes.itemList}>
                <img src={data.image} alt={data.alt} ></img>
            </div>
        )
    })

    const settings = {
        infinite: true,
        speed: 500,
        slidesToScroll: 4,
        slidesToShow: 4,
        draggable: false,
    };

    return (
        <Slider {...settings}>
            {itemList}
        </Slider>
    )
}

export default ItemList

