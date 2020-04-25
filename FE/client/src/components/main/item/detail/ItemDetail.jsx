import React, { useState } from 'react'
import useFetch from '../../../util/useFetch';
import URL from '../../../../constants/url';
import Dialog from '@material-ui/core/Dialog';
import DialogActions from '@material-ui/core/DialogActions';
import DialogContent from '@material-ui/core/DialogContent';
import CloseRoundedIcon from '@material-ui/icons/CloseRounded';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    dialogWrap: {
        position: 'relative',
        '& .detail-closeBtn': {
            position: 'absolute',
            top: '5px',
            right: '5px',
            cursor: 'pointer',
            color: '#b3b3b3',
            '&:hover': {
                color: '#5a5a5a',
            }
        },
    },
    detailWrap: {
        '& .detail-image-wrap': {
            width: '320px',
            height: 'auto',
        },
        '& .default-image': {
            marginBottom: '10px',
            '& img': {
                width: '100%',
                height: 'auto',
            },
        },
        '& .thumb-images': {
            display: 'flex',
            '& img': {
                width: 'calc(20% - 10px)',
                height: 'auto',
                marginRight: '10px',
                cursor: 'pointer',
            },
            '& :last-child': {
                marginRight: '0',
            },
        },
    },
});

const ItemDetail = ({ itemKey, isDetailOpen, setDetailOpen }) => {
    const classes = useStyles();
    const [detailData, setDetailData] = useState(null);
    const [currImage, setCurrImage] = useState(null);
    const handleClose = () => setDetailOpen(false);
    const handleMouseEnter = ({ target }) => setCurrImage(<img src={target.src} alt={target.alt}></img>);
    const loading = useFetch(setDetailData, URL.DEV.DETAIL + itemKey);

    let data = null;
    if (detailData) data = detailData.data;
    console.log(data);

    return (
        <Dialog className={classes.dialogWrap} open={isDetailOpen} onClose={handleClose}>
            {
                loading ? 'loading ' :
                    <DialogContent className={classes.detailWrap}>
                        <div className='detail-image-wrap'>
                            <div className='default-image'>
                                {currImage ? currImage : <img src={data.top_image} alt={data.product_description}></img>}
                            </div>
                            <div className='thumb-images'>
                                <img src={data.top_image} onMouseEnter={handleMouseEnter} alt={data.product_description}></img>
                                {data.thumb_images.map((imageURL, idx) => <img onMouseEnter={handleMouseEnter} key={idx} src={imageURL} alt={data.product_description}></img>)}
                            </div>
                        </div>
                    </DialogContent>
            }
            <DialogActions>
                <div className='detail-closeBtn'>
                    <CloseRoundedIcon onClick={handleClose} />
                </div>
            </DialogActions>
        </Dialog>
    )
}

export default ItemDetail
