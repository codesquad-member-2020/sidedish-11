import React from 'react'
import './style/DetailInfo.css';
import DetailInfoStatic from './DetailInfoStatic';
import DetailInfoCount from './DetailInfoCount';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    detailInfoWrap: {
        width: '470px',
        height: 'auto',
        marginLeft: '30px',
    },
});

const DetailInfo = ({ detailData, setDetailOpen, numberComma }) => {
    const { title, product_description, delivery_fee, delivery_info, point, prices } = detailData.data;
    const classes = useStyles();

    const price = prices.reduce((acc, curr) => {
        if (acc === 0) acc = curr;
        else acc = curr && curr < acc ? curr : acc;
        return acc;
    }, 0);

    return (
        <div className={classes.detailInfoWrap}>
            <DetailInfoStatic {...{ title, product_description, point, delivery_info, delivery_fee, price, numberComma }} />
            <DetailInfoCount {...{ title, price, setDetailOpen, numberComma }} />
        </div>
    )
}

export default DetailInfo
