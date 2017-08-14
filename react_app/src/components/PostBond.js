import React, { Component } from 'react'; 
import $ from 'jquery';

class PostBond extends Component {

    submitForm(e) {
        e.preventDefault()
        let name = this.refs.available_lot.value;

        fetch('http://localhost:3000/corps/', {
            method: 'PUT',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                available_lot: name,
            })
        })
        .then((response) => {
            return response.json()
        })
        .then((body) =>{
            console.log("bitches")
        })
        
    }
    renderForm(){
        if(this.props.show){
            return (
                <div className="form">
                    <form onSubmit = {this.submitForm.bind(this)}>
                        <label>Available Lot:</label>
                        <input type = "text" placeholder = "Enter Value" ref = "available_lot" />
                        <br/>

                    </form>
                </div>
            )
        }
    }
    render(){
        return(
            <div>
            {this.renderForm()}
            </div>
        )
    }
}

}