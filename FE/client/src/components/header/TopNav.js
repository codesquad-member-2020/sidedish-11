import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import ArrowDropDownIcon from '@material-ui/icons/ArrowDropDown';

const useStyles = makeStyles({
    topNavWrap: {
        display: 'flex',
        justifyContent: 'space-between',
        alignItems: 'center',
        fontSize: '12px',
        borderBottom: '1px solid #e2e2e2',
        color: '#424242',
    },
    downloadApp: {
        display: 'flex',
        alignItems: 'center',
        cursor: 'pointer',
        '&:hover': {
            color: '#18C2BD',
        }
    },
    topNavMenu: {
        cursor: 'pointer',
        display: 'flex',
        listStyle: 'none',
        '& li': {
            display: 'flex',
            alignItems: 'center',
            marginRight: '10px',
            borderRight: '1px solid #e2e2e2',
            paddingRight: '10px',
            height: '12px',
            '&:hover': {
                color: '#18C2BD',
            },
            '&:last-child': {
                marginRight: '0',
                borderRight: '0',
                paddingRight: '0',
            },
        }
    },
    arrowIcon: {
        width: '20px',
        height: '20px',
        marginLeft: '-2px',
    },
});

function TopNav() {
    const classes = useStyles();
    return (
        <div className={classes.topNavWrap}>
            <div className={classes.downloadApp}>
                배민찬 앱 다운로드<ArrowDropDownIcon className={classes.arrowIcon} />
            </div>
            <ul className={classes.topNavMenu}>
                <li>로그인</li>
                <li>회원가입</li>
                <li>마이페이지<ArrowDropDownIcon className={classes.arrowIcon} /></li>
                <li>고객센터<ArrowDropDownIcon className={classes.arrowIcon} /></li>
                <li>새벽배송 지역검색</li>
                <li>이벤트 게시판</li>
                <li><strong>장바구니</strong></li>
            </ul>
        </div>
    );
}

export default TopNav;