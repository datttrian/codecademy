import React from 'react';

function Header (props) {

    return (
        <div>
            <img src={props.profileImg}/>
            <h1>{props.username}</h1>
        </div>
    )
}

export { Header }