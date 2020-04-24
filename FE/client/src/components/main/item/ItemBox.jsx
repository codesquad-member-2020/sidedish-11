import React, { useState } from 'react'
import useFetch from '../../util/useFetch';
import CircularProgress from '@material-ui/core/CircularProgress';
import ItemList from './ItemList';
import { makeStyles } from '@material-ui/core/styles';
import KeyboardArrowRightIcon from '@material-ui/icons/KeyboardArrowRight';

const useStyles = makeStyles((theme) => ({
    itemBox: {
        padding: '40px',
        marginBottom: '40px',
        '& .category': {
            color: '#999',
            fontSize: '18px',
            marginBottom: '10px',
        },
        '& .title': {
            color: '#5a5a5a',
            fontSize: '32px',
            fontWeight: '300',
            marginBottom: '45px'
        },
        '& .more-item': {
            display: 'flex',
            justifyContent: 'center',
            alignItems: 'center',
            marginTop: '80px',
            fontWeight: '300',
            width: '800px',
            margin: '0 auto',
            color: '#444',
            border: '1px solid #d7d7d7',
            padding: '10px 0',
            cursor: 'pointer',
            '&:hover': {
                color: '#000',
                border: '1px solid #b4b4b4',
            }
        }
    },
    progress: {
        margin: theme.spacing(10),
    },
}));

const ItemBox = ({ itemBoxData }) => {
    const classes = useStyles();
    const [itemListData, setitemListData] = useState(null);
    const { category, title, url } = itemBoxData;
    const loading = useFetch(setitemListData, url);

    let itemList = <CircularProgress color="secondary" className={classes.progress} />
    if (!loading) itemList = <ItemList itemListData={itemListData.body} />

    return (
        <div className={classes.itemBox}>
            <h2 className='category'>{category}</h2>
            <div className='title'>{title}</div>
            {itemList}
            <div className='more-item'>
                {category} 전체보기 <KeyboardArrowRightIcon />
            </div>
        </div>
    )
}

export default ItemBox
