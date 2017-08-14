import React, { Component } from 'react'; 
import CorpList from './CorpList';

class NavBondBar extends Component {

render(){
        return(
        	<div> 
        	<p><CorpList user={this.props.user}/> </p>
        	</div> 
        	)
    }
}
export default NavBondBar; 