import React from 'react'
import './style/SliderArrow.css';
import ArrowBackIosRoundedIcon from '@material-ui/icons/ArrowBackIosRounded';
import ArrowForwardIosRoundedIcon from '@material-ui/icons/ArrowForwardIosRounded';

export function NextArrow({ onClick }) {
    return (
        <div className='arrow nextArrow' {...{ onClick }}>
            <ArrowForwardIosRoundedIcon color='secondary' />
        </div>
    );
}

export function PrevArrow({ onClick }) {
    return (
        <div className='arrow prevArrow' {...{ onClick }}>
            <ArrowBackIosRoundedIcon color='secondary' />
        </div>
    );
}