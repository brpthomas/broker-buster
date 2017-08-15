import React, { Component } from 'react';



class DisplayCorp extends Component {

	displaySingleCorp() {

		if( !this.props.renderAll )
		return (
		
			<div className='bond-info'>
				<p>Name: {  this.props.currentCorp.name } </p>
				<p>Bond Description: {  this.props.currentCorp.descrip } </p>
				<p>Coupon Rate: {  this.props.currentCorp.coupon_rate } </p>
				<p>Yield: {  this.props.currentCorp.yield } </p>
				<p>S&P Ratings: {  this.props.currentCorp.sp_rating } </p>
				<p>Moody's Rating: {  this.props.currentCorp.moodys_rating } </p>
				<p>Current Offerings: {  this.props.currentCorp.available_lot } </p>
				<p>CUSIP: {  this.props.currentCorp.cusip } </p>
				<p>Maturity: {  this.props.currentCorp.maturity } </p>




			</div>
		
			)
		}


	displayAllCorps() {

		if( this.props.renderAll ) {
			return this.props.corps.map((el, index) => {
				return (
					<li>
					<div className="showall-bonds" key = { index } > 
						<p>ID: {el.id} </p>
						<p>Name: { el.name } </p>
						<p>Bond Description: { el.descrip } </p>
						<p>Yield: { el.yield } </p>
						<p>CUSIP: { el.cusip } </p>
						<p>Current Offerings: { el.available_lot } </p>
					</div>
					</li>
					)
			})
		}
	}



	render() {
		return (

				<div className="display-section">
					{ this.displaySingleCorp() }
					{ this.displayAllCorps() }
				</div>

		)
	}
}

export default DisplayCorp;