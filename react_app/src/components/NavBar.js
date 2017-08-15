import React, { Component } from 'react'

class NavBar extends Component {

	display() {
		return this.props.corps.map((el, index) => {
			return <div className='display-bonds'
			key = { index } 
			className = "single-bond"
			id = "showSingle"
			onClick = {  
				 () => { 
					  this.props.getCurrentBond(el)
				 } 
				
			}


			> { el.name } </div>
		})
	}

	render() {
		return (
				<div className="side-bar">
					<button
						id = "showAll" 
						className = "show-all-bonds"
						onClick = { this.props.showAllBonds.bind(this) }
					>Show All Bonds</button>


					<ul 
						className="bonds-list"> 
						{ this.display() }
					 </ul>
				</div>

		)
	}
}

export default NavBar;