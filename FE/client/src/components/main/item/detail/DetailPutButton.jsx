import React, { useState } from 'react'
import Button from '@material-ui/core/Button';
import Dialog from '@material-ui/core/Dialog';
import DialogActions from '@material-ui/core/DialogActions';
import DialogContent from '@material-ui/core/DialogContent';
import Typography from '@material-ui/core/Typography';
import { makeStyles } from '@material-ui/core/styles';

const useStyles = makeStyles({
    putBtn: {
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

const DetailPutButton = ({ title, count, setDetailOpen }) => {
    const classes = useStyles();
    const [isOpen, setOpen] = useState(false);

    const handleConfirm = () => setDetailOpen(false);
    const handleOpen = () => setOpen(true);
    const handleClose = () => setOpen(false);

    return (
        <>
            <Button onClick={handleOpen} className={classes.putBtn} variant='contained' color='primary' children='담기' />
            <Dialog open={isOpen}>
                <DialogContent>
                    <Typography gutterBottom>
                        <span className='confirm-text'>{title}</span> · <span className='confirm-text'>{count}</span>개
                        <div>장바구니에 담겠습니까?</div>
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

export default DetailPutButton
