import React from 'react'
import Slider from 'react-slick';
import Item from './Item';
import { PrevArrow, NextArrow } from './SliderArrow';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    itemList: {
        cursor: 'pointer',
    },
    slider: {
        '& .slick-dots': {
            bottom: '-40px',
        }
    }
});

const ItemList = ({ itemListData }) => {
    const classes = useStyles();
    const itemList = itemListData.map(data => {
        return (
            <div key={data.detail_hash} className={classes.itemList}>
                <Item data={data} />
            </div>
        )
    })

    const settings = {
        dots: true,
        infinite: true,
        speed: 500,
        slidesToScroll: 4,
        slidesToShow: 4,
        draggable: false,
        nextArrow: <NextArrow />,
        prevArrow: <PrevArrow />,
    };

    return (
        <Slider className={classes.slider} {...settings}>
            {itemList}
        </Slider>
    )
}

export default ItemList

