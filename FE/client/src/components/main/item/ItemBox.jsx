import React, { useState } from 'react'
import useFetch from '../../../util/useFetch';
import CircularProgress from '@material-ui/core/CircularProgress';
import ItemList from './ItemList';
import KeyboardArrowRightIcon from '@material-ui/icons/KeyboardArrowRight';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles((theme) => ({
    itemBox: {
        padding: '40px',
        marginBottom: '40px',
        '& .category-name': {
            color: '#999',
            fontSize: '18px',
            marginBottom: '10px',
        },
        '& .category-desc': {
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
            },
        }
    },
    progress: {
        margin: theme.spacing(10),
    },
}));

const ItemBox = ({ categoryData }) => {
    const classes = useStyles();
    const [itemsData, setItemsData] = useState(null);
    const { name, description, url } = categoryData;
    const loading = useFetch(setItemsData, url);

    let itemList = <CircularProgress color='secondary' className={classes.progress} />
    if (!loading) itemList = <ItemList itemsData={itemsData.items} />

    return (
        <div className={classes.itemBox}>
            <h2 className='category-name'>{name}</h2>
            <div className='category-desc'>{description}</div>
            {itemList}
            <div className='more-item'>
                <span>{name} 전체보기</span>
                <span><KeyboardArrowRightIcon /></span>
            </div>
        </div>
    )
}

export default ItemBox
