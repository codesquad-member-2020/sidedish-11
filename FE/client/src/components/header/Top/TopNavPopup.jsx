import React, { useState } from 'react';
import TopNavPopupSubList from './TopNavPopupSubList';
import ArrowDropDownIcon from '@material-ui/icons/ArrowDropDown';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    menuWrap: {
        position: 'relative',
        '& .menuText': {
            display: 'flex',
            alignItems: 'center',
            cursor: 'pointer',
            '&:hover': {
                color: '#18C2BD',
            }
        },
        '& .arrowIcon': {
            width: '20px',
            height: '20px',
            marginLeft: '-2px',
        },
    },
});

function TopNavPopup({ title, contents }) {
    const classes = useStyles();
    const [isOpen, setOpen] = useState(false);
    const handleClick = () => setOpen(!isOpen);
    const handleMouseLeave = () => setOpen(false);

    return (
        <div className={classes.menuWrap} onClick={handleClick} onMouseLeave={handleMouseLeave}>
            <div className='menuText'>
                {title}<ArrowDropDownIcon className='arrowIcon' />
            </div>
            {isOpen && <TopNavPopupSubList contents={contents} />}
        </div>
    );
}

export default TopNavPopup;