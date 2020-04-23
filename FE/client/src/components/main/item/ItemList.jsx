import React from 'react'
import Slider from 'react-slick';
import Item from './Item';
import 'slick-carousel/slick/slick.css';
import 'slick-carousel/slick/slick-theme.css';
import './style/ItemList.css';
import { makeStyles } from '@material-ui/core/styles';


const useStyles = makeStyles({
    itemList: {
        cursor: 'pointer',
    },
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
        className: 'item-slider',
    };

    return (
        <Slider {...settings}>
            {itemList}
        </Slider>
    )
}



export default ItemList

