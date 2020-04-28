import React, { useState, useContext } from 'react'
import Button from '@material-ui/core/Button';
import Dialog from '@material-ui/core/Dialog';
import DialogActions from '@material-ui/core/DialogActions';
import DialogContent from '@material-ui/core/DialogContent';
import Typography from '@material-ui/core/Typography';
import { makeStyles } from '@material-ui/core/styles';
import { ItemContext } from '../Item';
import URL from '../../../../constants/url';

const useStyles = makeStyles({
    purchaseBtn: {
        color: '#fff',
        boxShadow: 'none',
        marginTop: '20px',
        width: '100%',
        fontSize: '18px',
        '&:hover': {
            backgroundColor: '#27cfca',
            borderColor: '#27cfca',
            boxShadow: 'none',
        },
    },
});

const DetailPurchaseButton = ({ title, count }) => {
    const { itemKey, setDetailOpen } = useContext(ItemContext);
    const classes = useStyles();
    const [isOpen, setOpen] = useState(false);

    const handleConfirm = () => fetchCount();
    const handleOpen = () => setOpen(true);
    const handleClose = () => setOpen(false);

    const fetchCount = async () => {
        const res = await fetch(URL.DEV.ORDER + itemKey, {
            method: 'PUT',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                orderNumber: count
            })
        });
        const data = await res.json();
        alert(data.message);
        setDetailOpen(false);
    }

    return (
        <>
            <Button disabled={count <= 0 ? true : false} onClick={handleOpen} className={classes.purchaseBtn} variant='contained' color='primary' children='구매' />
            <Dialog open={isOpen}>
                <DialogContent>
                    <Typography gutterBottom>
                        <span className='confirm-text'>{title}</span> · <span className='confirm-text'>{count}</span>개
                        <div>구매하시겠습니까?</div>
                    </Typography>
                </DialogContent>
                <DialogActions>
                    <Button variant="outlined" color="primary" onClick={handleConfirm}>확인</Button>
                    <Button variant="outlined" color="primary" onClick={handleClose}>취소</Button>
                </DialogActions>
            </Dialog>
        </>
    )
}

export default DetailPurchaseButton
