import React, { Component } from 'react'; 


class GetId extends Component {
	constructor(props) {
		super(props); 
		this.state = {
			corps: [] 

		};
	}
	componentDidMount() {
		// console.log('~~~ CorpList mounted.  this.props.user is: ' + this.props.user)
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
			<div className='bondlist' key={i}>
				<span className="name"
						onClick={(e) => {this.clickHandler(e, corpData.id)}}
				>

				<p>Issuer: {corpData.name}</p> 
				</span>
				<span className="available-lot"> 
				</span>
				<p>Available Amount for Purchase:{corpData.available_lot}</p>
				<span className="info"> 
				<p>Description: {corpData.descrip}, CUSIP: {corpData.cusip}, Coupon Rate:{corpData.coupon_rate}, Yield: {corpData.yield}, S&P Rating: {corpData.sp_rating}, Moody's Rating: {corpData.moodys_rating}, Maturity: {corpData.maturity}; </p>
				</span>
				</div> 


		); 

		}); 
		let shownCorpElement = null; 
		if(this.state.shownCorpElement) {
			let shownCorp = this.state.corps.filter((corpData) => {
				return corpData.id === this.state.shownCorpId; 
			})[0]; 
			<div>
			<p class="home-link"
				onClick={(e) => {this.setState({shownCorpId: null});}}
				href="/corps">Back to Top 30 Corporate Bond List

				</p>
				</div>
		}
		return (
			<div> 
		
			<p> Would you like to buy this bond: {this.state.shownCorpId}</p>
			{shownCorpElement}
			{this.renderForm}
			<ul>
			<BuyCorp id={this.state.shownCorpId} user={this.props.user} />

			{this.state.shownCorpId ? [] : corps}
			</ul> 
			</div> 

			);


	}


}

export default GetId; 