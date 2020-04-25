import React, { useState } from 'react';
import Badge from './Badge';
import ItemDetail from './detail/ItemDetail';
import './style/Item.css';

const Item = ({ data, itemKey }) => {
    const [isHover, setHover] = useState(false);
    const [isDetailOpen, setDetailOpen] = useState(false);
    const handleMouseEnter = () => setHover(true);
    const handleMouseLeave = () => setHover(false);
    const handleClick = () => { if (!isDetailOpen) setDetailOpen(true) };

    return (
        <div className='item-wrap' onClick={handleClick}>
            {isDetailOpen && <ItemDetail {...{ itemKey, isDetailOpen, setDetailOpen }} />}
            <div className='image-wrap' onMouseEnter={handleMouseEnter} onMouseLeave={handleMouseLeave}>
                <img className='item-image' src={data.image} alt={data.alt}></img>
                {isHover && <div className='hover-image'>
                    <div>
                        {data.delivery_type.map((type, idx) => <span key={idx}>{type}</span>)}
                    </div>
                </div>}
            </div>
            <h3 className='item-title'>{data.title}</h3>
            <p className='item-description'>{data.description}</p>
            <div className='price-wrap'>
                <span className='s-price'>{data.s_price ? data.s_price : data.n_price}</span>
                <span className='price-unit'>원</span>
                <span className='n-price'>{data.s_price ? data.n_price : ''}</span>
            </div>
            <div className='item-badge'>
                <Badge badgeData={data.badge} badgeColor={data.color} />
            </div>
        </div>
    )
}

export default Item
