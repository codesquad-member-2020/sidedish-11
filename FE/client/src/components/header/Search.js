import React from 'react';
import Toolbar from '@material-ui/core/Toolbar';
import InputBase from '@material-ui/core/InputBase';
import { makeStyles } from '@material-ui/core/styles';
import SearchIcon from '@material-ui/icons/Search';

const useStyles = makeStyles((theme) => ({
    searchWrap: {
        width: '100%',
    },
    searchInner: {
        width: '65%',
        padding: '15px 0',
        margin: '0 auto',
    },
    toolbar: {
        padding: '0',
        '& .logoImg': {
            cursor: 'pointer',
        },
        '& .searchBar': {
            position: 'relative',
            marginLeft: '30px',
        },
        '& .searchBarIcon': {
            padding: theme.spacing(0, 1),
            height: '100%',
            position: 'absolute',
            pointerEvents: 'none',
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center',
            color: '#b3b3b3',
        },
        '& .eventItem': {
            position: 'absolute',
            display: 'flex',
            right: '0',
            '& .item': {
                cursor: 'pointer',
                marginRight: '40px',
                '&:last-child': {
                    marginRight: '0',
                },
                '& .topText': {
                    color: '#18C2BD',
                    fontWeight: '600',
                    fontSize: '13px',
                    marginBottom: '-6px',
                },
                '& .bottomText': {
                    color: '#584e43',
                    fontWeight: '600',
                    fontSize: '26px',
                }
            },
        },
    },
    inputRoot: {
        color: '#5a5a5a',
    },
    inputInput: {
        padding: theme.spacing(1.4, 1, 1.4, 0),
        paddingLeft: `calc(1em + ${theme.spacing(3)}px)`,
        transition: theme.transitions.create('width'),
        [theme.breakpoints.up('sm')]: {
            width: '20ch',
            '&:focus': {
                width: '28ch',
                border: '1px solid #18C2BD',
            },
        },
        fontSize: '14px',
        border: '1px solid #b3b3b3',
        '&:hover': {
            border: '1px solid #18C2BD',
        },
    },
}));

function Search() {
    const classes = useStyles();

    return (
        <div className={classes.searchWrap}>
            <div className={classes.searchInner}>
                <Toolbar className={classes.toolbar}>
                    <img className='logoImg' src="https://web.archive.org/web/20190122062652im_/https://cdn.bmf.kr/web/common/bmc-logo.png" alt="배민찬 타이틀 이미지"></img>
                    <div className='searchBar'>
                        <div className='searchBarIcon'>
                            <SearchIcon />
                        </div>
                        <InputBase
                            classes={{
                                root: classes.inputRoot,
                                input: classes.inputInput,
                            }}
                        />
                    </div>
                    <div className='eventItem'>
                        <div className='item'>
                            <div className='topText'>제일 잘 팔리는</div>
                            <div className='bottomText'>베스트</div>
                        </div>
                        <div className='item'>
                            <div className='topText'>놓치면 후회</div>
                            <div className='bottomText'>이벤트</div>
                        </div>
                    </div>
                </Toolbar>
            </div>
        </div>
    );
}

export default Search;