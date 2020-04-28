import React, { useState } from 'react'
import ArrowDropUpIcon from '@material-ui/icons/ArrowDropUp';
import ArrowDropDownIcon from '@material-ui/icons/ArrowDropDown';
import DetailPurchaseButton from './DetailPurchaseButton';

const DetailInfoCount = ({ title, price, stock, setDetailOpen, numberComma }) => {
    const [count, setCount] = useState(1);

    const handleCount = (isCountUp) => {
        let newCount = isCountUp ? count + 1 : count - 1;
        if (newCount <= 0) newCount = 1;
        if (newCount > stock) return;
        setCount(newCount);
    };
    const handleChange = ({ target }) => {
        let newCount = parseInt(target.value);
        if (!target.value) setCount(0);
        if (typeof newCount !== 'number' || !newCount || newCount < 0 || newCount > stock) return;
        setCount(newCount);
    }

    if (stock === 0) setCount(0);

    return (
        <>
            <div className='select-count'>
                <div className='select-count-text'>
                    <span>수량</span>
                    <span className='select-count-stock'>( 재고수량 : {stock === 0 ? '품절' : stock} )</span>
                </div>
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
            <DetailPurchaseButton {...{ title, count, setDetailOpen }} />
        </>
    )
}

export default DetailInfoCount
