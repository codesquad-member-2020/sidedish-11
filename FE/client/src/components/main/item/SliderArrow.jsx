import React from 'react'
import './style/SliderArrow.css';
import NavigateBeforeIcon from '@material-ui/icons/NavigateBefore';
import NavigateNextIcon from '@material-ui/icons/NavigateNext';

export function NextArrow({ onClick }) {
    return (
        <div className='arrow nextArrow' {...{ onClick }}>
            <NavigateNextIcon color='secondary' />
        </div>
    );
}

export function PrevArrow({ onClick }) {
    return (
        <div className='arrow prevArrow' {...{ onClick }}>
            <NavigateBeforeIcon color='secondary' />
        </div>
    );
}