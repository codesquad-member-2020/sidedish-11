import React from 'react'
import './style/DetailInfo.css';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    detailInfoWrap: {
        width: '470px',
        height: 'auto',
        marginLeft: '30px',
    },
});

const DetailInfo = ({ title, product_description, delivery_fee, delivery_info, point, prices, stock, numberComma }) => {
    const classes = useStyles();
    const price = prices.reduce((acc, curr) => {
        if (acc === 0) acc = curr;
        else acc = curr && curr < acc ? curr : acc;
        return acc;
    }, 0);

    return (
        <div className={classes.detailInfoWrap}>
            <h3 className='detail-title'>{title}</h3>
            <p className='detail-description'>{product_description}</p>
            <div className='detail-box'>
                <div className='detail-label'>적립금</div>
                <div className='detail-text'>{point}원</div>
            </div>
            <div className='detail-box'>
                <div className='detail-label'>배송정보</div>
                <div className='detail-text'>{delivery_info}</div>
            </div>
            <div className='detail-box'>
                <div className='detail-label'>배송비</div>
                <div className='detail-text'>{delivery_fee}</div>
            </div>
            <div className='detail-price'>
                {numberComma(price)}
                <span className='detail-price-unit'>원</span>
            </div>
        </div>
    )
}

export default DetailInfo
