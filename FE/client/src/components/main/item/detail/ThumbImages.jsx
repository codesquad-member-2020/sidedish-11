import React from 'react'

const ThumbImages = ({ thumb_images, product_description, handleMouseEnter }) => {
    let needBlankLength = 4;

    const thumb = thumb_images.map((imageURL, idx) => {
        needBlankLength--;
        return <img onMouseEnter={handleMouseEnter} key={idx} src={imageURL} alt={product_description}></img>
    });

    const blank = [];
    for (let i = 0; i < needBlankLength; i++) {
        blank.push(<div key={`blank-${i}`} className='blank-thumb' />)
    }

    const images = [...thumb, ...blank];

    return (
        <>
            {images}
        </>
    )
}

export default ThumbImages
