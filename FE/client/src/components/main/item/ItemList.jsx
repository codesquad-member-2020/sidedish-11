import React from 'react'
import Slider from "react-slick";
import Item from './Item';
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    itemList: {
        cursor: 'pointer',
        '& .item-image': {
            width: '215px',
            borderRadius: '50%',
            margin: '0 auto',
            marginBottom: '30px',
        },
        '& .item-title': {
            minHeight: '20px',
            fontSize: '16px',
            fontWeight: '600',
            letterSpacing: '-0.07em',
            color: '#000',
            whiteSpace: 'nowrap',
            textOverflow: 'ellipsis',
            overflow: 'hidden',
            marginBottom: '5px',
        },
        '& .item-description': {
            width: '100%',
            fontSize: '13px',
            color: '#666',
            minHeight: '16px',
            overflow: 'hidden',
            textOverflow: 'ellipsis',
            whiteSpace: 'nowrap',
            marginBottom: '15px',
        },
        '& .price-wrap': {
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center',
        },
        '& .s-price': {
            marginRight: '2px',
            fontSize: '26px',
            color: '#2ac1bc',
            fontWeight: 'bold',
            verticalAlign: 'middle',
            lineHeight: '1',
            letterSpacing: '-0.04em',
        },
        '& .price-unit': {
            fontWeight: '600',
            fontSize: '14px',
            color: '#2ac1bc',
            paddingLeft: '2px',
        },
        '& .n-price': {
            margin: '0',
            marginLeft: '10px',
            padding: '0',
            border: '0',
            outline: '0',
            fontSize: '100%',
            fontWeight: 'normal',
            textDecoration: 'line-through',
            verticalAlign: 'baseline',
            background: 'transparent',
            color: '#888',
        },
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
    };

    return (
        <Slider {...settings}>
            {itemList}
        </Slider>
    )
}



export default ItemList

