import React from 'react';

function Menu({ menuData }) {
    const menuList = menuData.map(menu => {
        return (
            <li key={menu.id}>{menu.title}</li>
        )
    })
    return (
        <>
            {menuList}
        </>
    );
}

export default Menu;