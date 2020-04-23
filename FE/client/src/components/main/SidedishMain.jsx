import React from 'react'
import ItemBox from './item/ItemBox';
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
            {itemData.map(itemBoxData => <ItemBox key={itemBoxData.id} itemBoxData={itemBoxData} />)}
        </div>
    )
}

export default SidedishMain
