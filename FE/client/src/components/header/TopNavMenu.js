import React from 'react';
import TopNavMenuList from './TopNavMenuList';
import { makeStyles } from '@material-ui/core/styles';
import ArrowDropDownIcon from '@material-ui/icons/ArrowDropDown';

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

function TopNavMenu({ title, contents, handleClick, trigger }) {
    const classes = useStyles();

    return (
        <>
            <div className={classes.menuWrap}>
                <div className='menuText' onClick={handleClick}>
                    {title}<ArrowDropDownIcon className='arrowIcon' />
                </div>
                {trigger && <TopNavMenuList contents={contents} />}
            </div>
        </>
    );
}

export default TopNavMenu;