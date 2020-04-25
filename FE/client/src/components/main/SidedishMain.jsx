import React, { useState } from 'react'
import ItemBox from './item/ItemBox';
import useFetch from '../util/useFetch';
import CircularProgress from '@material-ui/core/CircularProgress';
import URL from '../../constants/url';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    mainWrap: {
        width: '1080px',
        margin: '0 auto',
        textAlign: 'center',
    },
});

const SidedishMain = () => {
    const classes = useStyles();
    const [categoryData, setCategoryData] = useState(null);
    const loading = useFetch(setCategoryData, URL.DEV.CATEGORY);

    let sidedishMain = <CircularProgress color="secondary" className={classes.progress} />
    if (!loading) sidedishMain = categoryData.map(categoryData => <ItemBox key={categoryData.id} itemBoxData={categoryData} />);

    return (
        <div className={classes.mainWrap}>
            {sidedishMain}
        </div>
    )
}

export default SidedishMain
