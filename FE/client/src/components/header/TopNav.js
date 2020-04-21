import React, { useState } from 'react';
import TopNavMenuList from './TopNavMenuList';
import { makeStyles } from '@material-ui/core/styles';
import ArrowDropDownIcon from '@material-ui/icons/ArrowDropDown';

const useStyles = makeStyles({
    topNavWrap: {
        width: '100%',
        fontSize: '12px',
        borderBottom: '1px solid #e2e2e2',
        color: '#5a5a5a',
    },
    topNavInner: {
        width: '65%',
        display: 'flex',
        justifyContent: 'space-between',
        alignItems: 'center',
        margin: '0 auto',
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
            '&:last-child': {
                marginRight: '0',
                borderRight: '0',
                paddingRight: '0',
            },
        }
    },
    singleList: {
        '&:hover': {
            color: '#18C2BD',
        },
    },
    arrowIcon: {
        width: '20px',
        height: '20px',
        marginLeft: '-2px',
    },
    menuWrap: {
        position: 'relative',
    },
    menuText: {
        display: 'flex',
        alignItems: 'center',
        cursor: 'pointer',
        '&:hover': {
            color: '#18C2BD',
        }
    },
});

function TopNav() {
    const classes = useStyles();
    const [isOpenDownMenu, setDownMenu] = useState(false);
    const [isOpenMyPageMenu, setMyPageMenu] = useState(false);
    const [isOpenCenterMenu, setCenterMenu] = useState(false);

    const menuReset = () => {
        setDownMenu(false);
        setMyPageMenu(false);
        setCenterMenu(false);
    }
    const downMenuHandle = () => {
        menuReset();
        setDownMenu(!isOpenDownMenu);
    };
    const myPageMenuHandle = () => {
        menuReset();
        setMyPageMenu(!isOpenMyPageMenu);
    };
    const centerMenuHandle = () => {
        menuReset();
        setCenterMenu(!isOpenCenterMenu);
    };

    return (
        <div className={classes.topNavWrap}>
            <div className={classes.topNavInner}>
                <div className={classes.menuWrap}>
                    <div className={classes.menuText} onClick={downMenuHandle}>
                        배민찬 앱 다운로드<ArrowDropDownIcon className={classes.arrowIcon} />
                    </div>
                    {isOpenDownMenu && <TopNavMenuList menuList={['앱스토어', '구글플레이스토어']} />}
                </div>
                <ul className={classes.topNavMenu}>
                    <li className={classes.singleList}>로그인</li>
                    <li className={classes.singleList}>회원가입</li>
                    <li>
                        <div className={classes.menuWrap}>
                            <div className={classes.menuText} onClick={myPageMenuHandle}>
                                마이페이지<ArrowDropDownIcon className={classes.arrowIcon} />
                            </div>
                            {isOpenMyPageMenu && <TopNavMenuList menuList={['주문현황', '1:1문의', '교환/반품', '등급별혜택·쿠폰함', '포인트']} />}
                        </div>
                    </li>
                    <li>
                        <div className={classes.menuWrap}>
                            <div className={classes.menuText} onClick={centerMenuHandle}>
                                고객센터<ArrowDropDownIcon className={classes.arrowIcon} />
                            </div>
                            {isOpenCenterMenu && <TopNavMenuList menuList={['공지사항', '자주묻는 질문', '새벽배송안내', '정기배송안내']} />}
                        </div>
                    </li>
                    <li className={classes.singleList}>새벽배송 지역검색</li>
                    <li className={classes.singleList}>이벤트 게시판</li>
                    <li className={classes.singleList}><strong>장바구니</strong></li>
                </ul>
            </div>
        </div>
    );
}

export default TopNav;