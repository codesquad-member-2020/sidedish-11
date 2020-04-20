import React from 'react';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    topNavWrap: {
        display: 'flex',
        justifyContent: 'space-around',
        alignItems: 'center',
        fontSize: '13px',
    },
    downloadApp: {
        cursor: 'pointer',
        '&:hover': {
            color: 'red',
        }
    },
    topNavMenu: {
        cursor: 'pointer',
        display: 'flex',
        listStyle: 'none',
        '& li': {
            marginRight: '10px',
            '&:hover': {
                color: 'red',
            }
        }
    }
});

function TopNav() {
    const classes = useStyles();
    return (
        <div className={classes.topNavWrap}>
            <div className={classes.downloadApp}>
                배민찬 앱 다운로드
            </div>
            <ul className={classes.topNavMenu}>
                <li>로그인</li>
                <li>회원가입</li>
                <li>마이페이지</li>
                <li>고객센터</li>
                <li>새벽배송 지역검색</li>
                <li>이벤트 게시판</li>
                <li>장바구니</li>
            </ul>
        </div>
    );
}

export default TopNav;