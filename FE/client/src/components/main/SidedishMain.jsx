import React from 'react'
import ItemList from './item/ItemList';
import { itemData } from '../../data/itemData';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    mainWrap: {
        width: '65%',
        margin: '0 auto',
        textAlign: 'center',
    },
});

const SidedishMain = () => {
    const classes = useStyles();

    return (
        <div className={classes.mainWrap}>
            {itemData.map(data => <ItemList key={data.id} itemData={data} />)}
        </div>
    )
}

export default SidedishMain
