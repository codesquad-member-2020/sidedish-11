import React, { useState } from 'react';
import Badge from './Badge';
import ItemDetail from './detail/ItemDetail';
import './style/Item.css';

const Item = ({ data, itemKey }) => {
    const { title, description, s_price, n_price, delivery_type, image, alt, badge, color } = data
    const [isHover, setHover] = useState(false);
    const [isDetailOpen, setDetailOpen] = useState(false);
    const handleMouseEnter = () => setHover(true);
    const handleMouseLeave = () => setHover(false);
    const handleClick = () => { if (!isDetailOpen) setDetailOpen(true) };
    const numberComma = (number) => number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

    return (
        <div className='item-wrap' onClick={handleClick}>
            {isDetailOpen && <ItemDetail {...{ itemKey, isDetailOpen, setDetailOpen, numberComma }} />}
            <div className='image-wrap' onMouseEnter={handleMouseEnter} onMouseLeave={handleMouseLeave}>
                <img className='item-image' src={image} alt={alt}></img>
                {isHover && <div className='hover-image'>
                    <div className='item-delivery-type'>
                        {delivery_type.map((type, idx) => <span key={idx}>{type}</span>)}
                    </div>
                </div>}
            </div>
            <h3 className='item-title'>{title}</h3>
            <p className='item-description'>{description}</p>
            <div className='price-wrap'>
                <span className='s-price'>{s_price ? numberComma(s_price) : numberComma(n_price)}</span>
                <span className='price-unit'>원</span>
                <span className='n-price'>{s_price ? numberComma(n_price) : ''}</span>
            </div>
            <div className='item-badge'>
                <Badge badgeData={badge} badgeColor={color} />
            </div>
        </div>
    )
}

export default Item
