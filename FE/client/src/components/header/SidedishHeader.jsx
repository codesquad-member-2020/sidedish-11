import React from 'react';
import TopNav from './TopNav';
import Search from './Search';
import MenuNav from './MenuNav';

function SidedishHeader() {
    return (
        <>
            <TopNav />
            <Search />
            <MenuNav />
        </>
    );
}

export default SidedishHeader;