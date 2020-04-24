import React, { useState } from 'react';
import './style/Item.css';

const Item = ({ data }) => {
    const [isHover, setHover] = useState(false);
    const handleMouseEnter = () => setHover(true);
    const handleMouseLeave = () => setHover(false);

    return (
        <>
            <div className='image-wrap' onMouseEnter={handleMouseEnter} onMouseLeave={handleMouseLeave}>
                <img className='item-image' src={data.image} alt={data.alt}></img>
                {isHover && <div className='hover-image'>
                    <div>
                        <span>새벽배송</span>
                        <span>전국택배</span>

                    </div>
                </div>}
            </div>
            <h3 className='item-title'>{data.title}</h3>
            <p className='item-description'>{data.description}</p>
            <div className='price-wrap'>
                <span className='s-price'>{data.s_price.substr(0, data.s_price.length - 1)}</span>
                <span className='price-unit'>원</span>
                <span className='n-price'>{data.n_price}</span>
            </div>
        </>
    )
}

export default Item
