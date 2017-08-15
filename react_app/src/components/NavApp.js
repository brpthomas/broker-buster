import React, { Component } from 'react';
import NavBar from './NavBar';
import DisplayCorp from './DisplayCorp';
import BuyCorp from './BuyCorp';
// import Form from './Form';

class NavApp extends Component {
	constructor(props) {
		super(props)
		this.state={
			corps:[],
			currentCorp:[],
			all: false,
			form: false
		}
	}
	componentDidMount() {
	console.log('~~~ NavApp mounted.  this.props.user is: ' + this.props.id)
	console.log('~~~ NavApp mounted. this,props.balance is:' + this.props.balance)

		fetch('http://localhost:3000/corps/')
            .then((response) => {
                // console.log(response.json())
                //YOU HAVE TO RETURN A JSON OBJECT TO CONTINUE WITH COMPONENT DID MOUNT()
              return response.json()
              })
            .then((responseJson) => {
            	// console.log('this is buy amount', inital)
            	this.setState(( )=> {
            	let newCurrentBond = []
            	newCurrentBond[0] = responseJson[0]

            	return{
            		corps: responseJson,
            		currentCorp: newCurrentBond[0]
            	}
            });
           })
	}
	updateCurrentBond (el) {
		let newCurrentBond = this.state.currentCorp
		newCurrentBond[0] = el

		this.setState({
			currentCorp: newCurrentBond[0]
		})
		if(el.name.length < 2) {
			this.setState({
				all: false
			})
		}
	} 

	showAllBonds(event) {
		console.log("event parameter in showAllBonds:" + event.target.id)
		if (event.target.id ==="showAll") {
			this.setState({
				all: true
			})
		}
	}
	renderForm(render) {
		console.log(render.target.className==="buy-bond")
		if(render.target.className) {
			this.setState({
				form: true
			})
		}
	}
  render() {
    return (
      <div className="">

        <NavBar 
          corps = {this.state.corps} 
          getCurrentBond = { this.updateCurrentBond.bind(this) }
          showAllBonds = { this.showAllBonds.bind(this) }
          renderForm = { this.renderForm.bind(this) }

        />


        <DisplayCorp 
          currentCorp = { this.state.currentCorp }
          renderAll = { this.state.all }
          corps = { this.state.corps }

        />
        <BuyCorp 
        userID={this.props.id}
        userBal={this.props.balance}
        currentCorp = { this.state.currentCorp }
        renderAll = { this.state.all }
        corps = { this.state.corps }
        />
      </div>
    );
  }
}

export default NavApp;