import React, {Component} from 'react';
import Content from './Content';

class BuyCorp extends Component {
	constructor() {
		super(); 
		this.state= {
			available_lot: '',
            balance: ''

		};
	}
updateCorpDatabase() {
	console.log('this is in updateDatabase', this.props.currentCorp.available_lot)
	// console.log('this is the coming from BuyCorp userID', this.props.user.balance)

		let something = this.props.currentCorp.available_lot

		fetch('http://localhost:3000/corps/' + this.props.currentCorp.id, {
            method: 'PUT',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                available_lot: something ,
                
            }) 
        })
        .then((response) => {
        	// console.log(response)
            return response.json()
        })
        .then((body) => {
            // console.log('!!!!!!!!!!!!!!!!!!!!!!!!!!this is what is being returned from the api------>',body)
            this.setState({
                response: body
            })
        });
}
updateUserDatabase() {
    console.log(this.props.userBal)
	let something = 
			fetch('http://localhost:3000/users/' + this.props.userID, {
            method: 'PUT',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                balance: something ,
                
            }) 
        })
        .then((response) => {
        	console.log(response)
            return response.json()
        })
        .then((body) => {
            console.log('!!!!!!!!!!!!!!!!!!!!!!!!!!this is what is being returned from the api------>',body)
            this.setState({
                response: body
            })
        });

}



onSubmit(event) {
	event.preventDefault(); 
	console.log('this is in onsubmit trying to pass user', this.props.userBal)
	// console.log('this is the id', this.props.id)
	// console.log('This is being clicked!', this.refs.purchaseamt.value);

		


/////////////// GET ROUTE for Corp Data //////////////////
	var inital = this.refs.purchaseamt.value
	
	let amtpurchase = this.refs.purchaseamt.value; 
	fetch('http://localhost:3000/corps/' + this.props.currentCorp.id)
            .then((response) => {
                // console.log(response.json())
                //YOU HAVE TO RETURN A JSON OBJECT TO CONTINUE WITH COMPONENT DID MOUNT()
              return response.json()
              })
            .then((responseJson) => {
            	// console.log('this is buy amount', inital)
            	var results = (responseJson.available_lot - inital )
            	this.setState({available_lot: results}, this.updateCorpDatabase)
            	// console.log(responseJson.available_lot)
            	// console.log('this is results', results)
            });
///////// GET ROUTE for User Data /////////////////////////
    var inital = this.refs.purchaseamt.value
	fetch('http://localhost:3000/users/' + this.props.userID)
            .then((response) => {
                // console.log(response.json())
                //YOU HAVE TO RETURN A JSON OBJECT TO CONTINUE WITH COMPONENT DID MOUNT()
              return response.json()
              })
            .then((responseJson) => {
            	console.log('this is buy amount', inital)
            	var results = (responseJson.balance - inital )
            	this.setState({balance: results}, this.updateUserDatabase)
            	console.log(responseJson.balance)
            	console.log('this is results', results)
            });


};

renderForm(){
        return(
                <div className="form">
                    <form onSubmit = { this.onSubmit.bind(this) } >
                        <input className="search-form" type = "integer" placeholder = "Amount Purchase" ref = "purchaseamt" />
                        <input type = "submit" />
                    </form>
                </div>   
            
            )
    };
    render() {
    	return(
    		<div className='buy-corp'> 
    		{this.renderForm()}
    		Available Amount:{this.state.available_lot}
            <br/>
            Account Balance: {this.state.balance}
    		</div> 
    		)
    }

}





export default BuyCorp;