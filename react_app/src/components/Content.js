import React from 'react';
import CorpList from './CorpList';
import BuyCorp from './BuyCorp'; 
import NavBondBar from './NavBondBar';

// component that renders content
// this will render when there is a valid user
const Content = (props) => {
  return(
    <div className="content">
      <h2>Welcome, {props.user.name}</h2>
      <p> <NavBondBar user={props.user}/> </p>
      <button onClick={props.logout}>Click here to log out!</button>
    </div>
    
     
    


  )
}

export default Content;
