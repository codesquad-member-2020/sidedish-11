import React, { useState } from 'react'
import './style/DetailInfo.css';
import ArrowDropUpIcon from '@material-ui/icons/ArrowDropUp';
import ArrowDropDownIcon from '@material-ui/icons/ArrowDropDown';
import Button from '@material-ui/core/Button';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    detailInfoWrap: {
        width: '470px',
        height: 'auto',
        marginLeft: '30px',
    },
    test: {
        color: '#fff',
        boxShadow: 'none',
        marginTop: '20px',
        width: '100%',
        fontSize: '18px',
        '&:hover': {
            backgroundColor: '#27cfca',
            borderColor: '#27cfca',
            boxShadow: 'none',
        },
    }
});

const DetailInfo = ({ title, product_description, delivery_fee, delivery_info, point, prices, stock, numberComma, setDetailOpen }) => {
    const classes = useStyles();
    const [count, setCount] = useState(1);
    const price = prices.reduce((acc, curr) => {
        if (acc === 0) acc = curr;
        else acc = curr && curr < acc ? curr : acc;
        return acc;
    }, 0);

    const handleCount = (isCountUp) => {
        let newCount = isCountUp ? count + 1 : count - 1;
        if (newCount < 1) newCount = 1;
        setCount(newCount);
    };
    const handleChange = ({ target }) => {
        let newCount = parseInt(target.value);
        if (typeof newCount !== 'number' || newCount === NaN || newCount < 0) return;
        if (!target.value) newCount = 0;
        setCount(newCount);
    }
    const handleClick = () => {
        alert(`${title}을 ${count}개 담았습니다!`);
        setDetailOpen(false);
    }

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
            <div className='select-number'>
                <div className='select-number-text'>수량</div>
                <div className='select-input-wrap'>
                    <input onChange={handleChange} className='select-input' type='text' maxLength='4' value={count}></input>
                    <div className='select-input-btn-wrap'>
                        <button onClick={() => { handleCount(true) }} className='select-input-up'>
                            <ArrowDropUpIcon />
                        </button>
                        <button onClick={() => { handleCount(false) }} className='select-input-down'>
                            <ArrowDropDownIcon />
                        </button>
                    </div>
                </div>
            </div>
            <div className='amount-price'>
                <div className='amount-price-text'>총 상품금액</div>
                {numberComma(price * count)}
                <span className='amount-price-unit'>원</span>
            </div>
            <Button onClick={handleClick} className={classes.test} variant='contained' color='primary' children='담기' />
        </div>
    )
}

export default DetailInfo
