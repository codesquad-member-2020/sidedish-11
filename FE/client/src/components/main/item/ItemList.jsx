import React from 'react'
import Slider from 'react-slick';
import Item from './Item';
import { PrevArrow, NextArrow } from './SliderArrow';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    itemList: {
        cursor: 'pointer',
        border: '0',
        outline: '0',
    },
    slider: {
        '& .slick-dots': {
            bottom: '-40px',
        }
    }
});

const ItemList = ({ itemsData }) => {
    const classes = useStyles();

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

    const itemList = itemsData.map(data => {
        return (
            <div key={data.detail_hash} className={classes.itemList}>
                <Item data={data} itemKey={data.detail_hash} />
            </div>
        )
    })

    return (
        <Slider className={classes.slider} {...settings}>
            {itemList}
        </Slider>
    )
}

export default ItemList

