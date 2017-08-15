import React, { Component } from 'react';
import axios from 'axios';

// component for sign up
// this will render if the mode in user auth is signup
class SignUp extends Component {
  constructor(){
    super();
    // set up initial state
    this.state = { // track inputs for form
      inputs: {
        name: '',
        email: '',
        password: '',
        balance: '',
        image_url: '',
        password_confirmation: ''
      }
    }
  }

  // method to sign up
  signUp(e){
    e.preventDefault(); // prevent default form action
    // make request to server to create a new user
    axios.post(`${this.props.url}/users`, this.state.inputs)
      .then(res => { // the response will be the user
        // set the user
        this.props.setUser(res.data);
      })
  }

  // method to change one of the inputs
  changeInput(e, input){
    const val = e.target.value;
    this.setState(prev => { // set the input in the state to the value
      prev.inputs[input] = val;
      return prev;
    });
  }

  render(){
    return(
      <div className="auth-form">
        <h2>Sign Up</h2>
        <form onSubmit={this.signUp.bind(this)}>

          <label htmlFor='email'>Name</label>
          <input value={this.state.inputs.name}
            id='name' name='name' type='text'
            onChange={e => this.changeInput(e, 'name')}
          />

          <label htmlFor='email'>Email</label>
          <input value={this.state.inputs.email}
            id='email' name='email' type='email'
            onChange={e => this.changeInput(e, 'email')}
          />

          <label htmlFor='password'>Password</label>
          <input value={this.state.inputs.password}
            id='password' name='password' type='password'
            onChange={e => this.changeInput(e, 'password')}
          />

          <label htmlFor='password_confirmation'>Password Confirmation</label>
          <input value={this.state.inputs.password_confirmation}
            id='password_confirmation'
            name='password_confirmation' type='password'
            onChange={e => this.changeInput(e, 'password_confirmation')}
          />

          <label htmlFor='balance'>Amount Deposit</label>
          <input value={this.state.inputs.balance}
            id='balance'
            name='balance' type='integer'
            onChange={e => this.changeInput(e, 'balance')}
          />
          <label htmlFor='image_url'>Upload Picture!</label>
          <input value={this.state.inputs.image_url}
            id='image_url'
            name='image_url' type='text'
            onChange={e => this.changeInput(e, 'image_url')}
          />



          <div className="form-buttons">
            <button type="submit" className="form-button">Sign Up</button>
            <button onClick={this.props.toggleMode} className="form-button">Enter!</button>
          </div>

        </form>
      </div>
    )
  }
}

export default SignUp;
