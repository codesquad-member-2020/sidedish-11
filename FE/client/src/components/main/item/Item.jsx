import React, { useState } from 'react';

const Item = ({ data }) => {
    const [isOpen, setOpen] = useState(false);
    const handleMouseEnter = () => setOpen(true);
    const handleMouseLeave = () => setOpen(false);

    return (
        <>
            <div>
                <div>
                    <span>새벽배송</span>
                    <span>전국택배</span>
                </div>
                <img className='item-image' src={data.image} alt={data.alt}></img>
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
