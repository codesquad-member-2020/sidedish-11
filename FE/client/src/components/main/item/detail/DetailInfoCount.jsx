import React, { useState } from 'react'
import ArrowDropUpIcon from '@material-ui/icons/ArrowDropUp';
import ArrowDropDownIcon from '@material-ui/icons/ArrowDropDown';
import DetailPutButton from './DetailPutButton';

const DetailInfoCount = ({ title, price, setDetailOpen, numberComma }) => {
    const [count, setCount] = useState(1);

    const handleCount = (isCountUp) => {
        let newCount = isCountUp ? count + 1 : count - 1;
        if (newCount < 1) newCount = 1;
        setCount(newCount);
    };
    const handleChange = ({ target }) => {
        let newCount = parseInt(target.value);
        if (!target.value) setCount(0);
        if (typeof newCount !== 'number' || !newCount || newCount < 0) return;
        setCount(newCount);
    }

    return (
        <>
            <div className='select-count'>
                <div className='select-count-text'>수량</div>
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
            <DetailPutButton {...{ title, count, setDetailOpen }} />
        </>
    )
}

export default DetailInfoCount
