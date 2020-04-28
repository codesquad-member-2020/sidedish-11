import React, { useContext } from 'react'
import { ItemContext } from './Item';

const Badge = () => {
    const { badge: badgeData } = useContext(ItemContext);
    const badgeClassName = {
        '론칭특가': 'launching-sale',
        '이벤트특가': 'event-sale',
        '품절': 'sold-out',
    }

    let badges = null;
    if (badgeData) badges = badgeData.map((badge, idx) => {
        const badgeType = badgeClassName[badge];
        return (
            <div key={idx} className={`badge ${badgeType}`}>
                <span>{badge}</span>
            </div>
        )
    });

    return (
        <>
            {badges}
        </>
    )
}

export default Badge
