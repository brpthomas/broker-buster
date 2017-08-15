import React from 'react';
import NavApp from './NavApp';

// component that renders content
// this will render when there is a valid user
const Content = (props) => {
  return(
    <div className="content">
      <h2>Hi there, {props.user.name}</h2>
      <img src="https://i.kinja-img.com/gawker-media/image/upload/t_original/zdgtgaavyy6eppur0hos.jpg" className='profile-image'/>

      <h4>Your Account Balance: {props.user.balance}</h4>
       <NavApp id={props.user.id} balance={props.user.balance}/>

      <div className='log-out'>
      <button onClick={props.logout}>Click here to log out!</button>
     

      </div>
    </div>
  )
}

export default Content;
