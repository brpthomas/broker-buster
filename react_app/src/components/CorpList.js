import React, { Component } from 'react'; 
import $ from 'jquery';


class CorpList extends Component {
	constructor(props) {
		super(props); 
		this.state = {corps: [] };
	}
	componentDidMount() {
		$.ajax({
			url: "http://localhost:3000/corps/"
		}).done((data)=> {
			console.log(data);
			this.setState({ corps: data}); 
		}); 
	}
	clickHandler(event, corpId){
		event.preventDefault(); 
		this.setState({shownCorpId: corpId});
	}
	render() {
		const corps = this.state.corps.map((corpData, i)=> {
		return (
			<li key={i}>
				<span className="name"
						onClick={(e) => {this.clickHandler(e, corpData.id)}}
				>

				<p>Issuer: {corpData.name}</p> 
				</span>
				<span className="available-lot"> 
				</span>
				<p>{corpData.availble_lot}</p>
				<span className="info"> 
				<p>Description: {corpData.descrip}, CUSIP: {corpData.cusip}, Coupon Rate:{corpData.coupon_rate}, Yield: {corpData.yield}, S&P Rating: {corpData.sp_rating}, Moody's Rating: {corpData.moodys_rating}, Maturity: {corpData.maturity}; </p>
				</span>
				</li> 


		); 

		}); 
		let shownCorpElement = null; 
		if(this.state.shownCorpElement) {
			let shownCorp = this.state.corps.filter((corpData) => {
				return corpData.id === this.state.shownCorpId; 
			})[0]; 
			<div>
			<h1>{shownCorp.name}</h1> 
			<p class="home-link"
				onClick={(e) => {this.setState({shownCorpId: null});}}
				href="/corps">Back to Top 30 Corporate Bond List</p>
				</div>
		}
		return (
			<div> 
			<h2> Top 30 Corporate Bond List </h2> 
			<p> Would you like to buy this bond: {this.state.shownCorpId}</p>
			{shownCorpElement}
			<ul>
			{this.state.shownCorpId ? [] : corps}
			</ul> 
			</div> 

			);


	}


}

export default CorpList; 