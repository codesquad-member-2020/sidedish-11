import React, { useState, useEffect } from 'react'
import { getCookie, deleteCookie } from '../../../util/cookie';

const Login = () => {
    const [userData, setUserData] = useState(null);

    const cookieKey = 'userId';
    useEffect(() => {
        const userId = getCookie(cookieKey);
        setUserData(userId);
    }, [userData]);

    const logout = () => {
        deleteCookie(cookieKey);
        setUserData(null);
    }

    return (
        <>
            {
                !userData ?
                    <li className='singleList'><a href='https://github.com/login/oauth/authorize?client_id=8d92d01b11ba14d3d18f&scope=user%20public_repo'>로그인</a></li> :
                    <>
                        <span style={{ marginRight: '30px', cursor: 'auto' }}><span style={{ fontWeight: '600' }}>{userData}</span>님 반갑습니다!</span>
                        <li className='singleList' onClick={logout}>로그아웃</li>
                    </>
            }
        </>
    )
}

export default Login
