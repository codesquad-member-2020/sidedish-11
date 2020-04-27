import React from 'react';
import TopNavPopup from './TopNavPopup';
import { makeStyles } from '@material-ui/core/styles';
import { topNavData } from '../../../data/topNavData';

const useStyles = makeStyles({
    topNavWrap: {
        width: '100%',
        fontSize: '12px',
        borderBottom: '1px solid #e2e2e2',
        color: '#5a5a5a',
    },
    topNavInner: {
        width: '1080px',
        height: '37px',
        display: 'flex',
        justifyContent: 'space-between',
        alignItems: 'center',
        margin: '0 auto',
    },
    topNavList: {
        cursor: 'pointer',
        display: 'flex',
        '& li': {
            display: 'flex',
            alignItems: 'center',
            marginRight: '10px',
            borderRight: '1px solid #e2e2e2',
            paddingRight: '10px',
            height: '12px',
            '&:last-child': {
                marginRight: '0',
                borderRight: '0',
                paddingRight: '0',
            },
        },
        '& .singleList, .singleList *': {
            color: '#5a5a5a',
            '&:hover': {
                color: '#18C2BD',
            },
        },
        '& strong': {
            fontWeight: '600',
        }
    },
});

function TopNav() {
    const { downloadApp, myPage, customerCenter } = topNavData;
    const classes = useStyles();

    return (
        <div className={classes.topNavWrap}>
            <div className={classes.topNavInner}>
                <TopNavPopup title={downloadApp.title} contents={downloadApp.contents} />
                <ul className={classes.topNavList}>
                    <li className='singleList'><a href='https://github.com/login/oauth/authorize?client_id=8d92d01b11ba14d3d18f&scope=user%20public_repo'>로그인</a></li>
                    <li className='singleList'>회원가입</li>
                    <li>
                        <TopNavPopup title={myPage.title} contents={myPage.contents} />
                    </li>
                    <li>
                        <TopNavPopup title={customerCenter.title} contents={customerCenter.contents} />
                    </li>
                    <li className='singleList'>새벽배송 지역검색</li>
                    <li className='singleList'>이벤트 게시판</li>
                    <li className='singleList'><strong>장바구니</strong></li>
                </ul>
            </div>
        </div>
    );
}

export default TopNav;