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
        width: '65%',
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
        '& .singleList': {
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
    const classes = useStyles();
    const { downloadApp, myPage, customerCenter } = topNavData;

    return (
        <div className={classes.topNavWrap}>
            <div className={classes.topNavInner}>
                <TopNavPopup title={downloadApp.title} contents={downloadApp.contents} />
                <ul className={classes.topNavList}>
                    <li className='singleList'>로그인</li>
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