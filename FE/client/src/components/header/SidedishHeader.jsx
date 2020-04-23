import React from 'react';
import TopNav from './top/TopNav';
import Search from './search/Search';
import MenuNav from './menu/MenuNav';

function SidedishHeader() {
    return (
        <div>
            <TopNav />
            <Search />
            <MenuNav />
        </div>
    );
}

export default SidedishHeader;