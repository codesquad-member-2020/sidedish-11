import React from 'react';
import TopNav from './Top/TopNav';
import Search from './Search/Search';
import MenuNav from './Menu/MenuNav';

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