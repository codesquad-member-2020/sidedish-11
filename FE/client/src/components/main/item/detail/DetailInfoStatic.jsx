import React from 'react'

const DetailInfoStatic = ({ title, product_description, point, delivery_info, delivery_fee, price, numberComma }) => {
    return (
        <>
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
        </>
    )
}

export default DetailInfoStatic
