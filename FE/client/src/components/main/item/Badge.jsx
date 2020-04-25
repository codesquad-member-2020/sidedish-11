import React from 'react'

const Badge = ({ badgeData }) => {
    const badgeClassName = {
        '론칭특가': 'launching',
        '이벤트특가': 'eventSale',
    }

    let badges = null;
    if (badgeData) badges = badgeData.map(badge => {
        const badgeType = badgeClassName[badge];
        return (
            <div className={`badge ${badgeType}`}>
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
