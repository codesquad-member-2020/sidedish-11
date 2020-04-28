import React, { useState, useContext } from 'react'
import ArrowDropUpIcon from '@material-ui/icons/ArrowDropUp';
import ArrowDropDownIcon from '@material-ui/icons/ArrowDropDown';
import DetailPurchaseButton from './DetailPurchaseButton';
import { ItemContext } from '../Item';

const DetailInfoCount = ({ title, price, stock }) => {
    const { numberComma } = useContext(ItemContext);
    const [count, setCount] = useState(stock === 0 ? 0 : 1);

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
            <DetailPurchaseButton {...{ title, count }} />
        </>
    )
}

export default DetailInfoCount
