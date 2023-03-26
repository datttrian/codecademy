rm -rf authorization-form
app_name='authorization-form'
yarn create react-app $app_name

cat << 'EOF' > $app_name/src/styles.css
html, body {
	margin: 0;
	height: 100%;
}

body {
	background-color: #ffffff;
	font-family: Helvetica, Arial, sans-serif;
  text-align: center;
}

#app {
	position: relative;
	height: 100%;
	width: 100%;
	padding-top: 10px;
}

#app div div {
	height: 100%;
}

#app div div div {
	position: relative;
	height: auto;
}

h1, h2 {
	margin-left: 5%;
	margin-right: 5%;
}

ul {
	list-style-type: none;
	padding: 0;
}

label {
	display: block;
	margin: 20px;
	font-size: 30px;
	font-weight: bold;
}

nav a {
	margin:12px;
	text-transform: uppercase;
	font-size: 10px;
}

button {
	-webkit-transition-duration: 0.1s; /* Safari */
	transition-duration: 0.1s;
	background-color: #F4595B;
	border-radius: 8px;
	border-bottom: 4px solid #C24648;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	font-family: 'Oxygen', sans-serif;
	letter-spacing: 2px;
}

button:hover {
  background-color: #FF7375;
  border: none;
  border-radius: 8px;
  border-bottom: 4px solid #C24648;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  font-family: 'Oxygen', sans-serif;
  letter-spacing: 2px;
}

button:active {
  background-color: #C24648;
  border: none;
  border-radius: 8px;
  border-bottom: 4px solid #C24648;
  color: #CCC;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  font-family: 'Oxygen', sans-serif;
  letter-spacing: 2px;
}

#authorization {
	max-width: 600px;
	width: 70%;
	margin: 100px auto;
	border: 1px solid black;
}

input {
	display: block;
	margin: 10px auto;
	padding: 5px;
	font-size: 16px;
	border-radius: 5px;
}

button, input[type="submit"] {
	margin: 20px;
	padding: 7px 35px;
	border-radius: 10px;
	font-size: 16px;
	cursor: pointer;
	display: inline-block;
}

EOF
cat << 'EOF' > $app_name/src/App.js
import React from 'react';
import Contact from './Contact';


class App extends React.Component {
    render(){
        return(
            <div>
                <h1>Enter Password "swordfish"</h1>
                <Contact/>
                <Contact/>
                <Contact/>
                <Contact/>
                <Contact/>
                <Contact/>

            </div>
          
        )
    }
}

export default App;

EOF
cat << 'EOF' > $app_name/src/index.js
import React from 'react';
import ReactDOM from 'react-dom';
//import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';

ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();

EOF

cat << 'EOF' > $app_name/src/Contact.js
import React from 'react';

import './styles.css';


class Contact extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      password: 'swordfish',
      authorized: false
    };
    this.authorize = this.authorize.bind(this);
  }

  authorize(e) {
    const password = e.target.querySelector(
      'input[type="password"]').value;
    const auth = password === this.state.password;
    this.setState({
      authorized: auth
    });
  }

  render() {
    const login =(
      <form action='#'
      onSubmit={this.authorize}>
      <input
      type='password'
      placeholder='Password' />
      <input type='submit'/>
      </form>
    );

    const contactInfo =(
       <ul>
          <li>
            client@example.com
          </li>
          <li>
            555.555.5555
          </li>
        </ul>

    );
          





    return (
      <div id="authorization">
        <h1>{this.state.authorized ? 'Contact' : 'Enter the Password' }</h1>
        {this.state.authorized ? contactInfo : login }
      </div>
    );
  }
}

export default Contact;

EOF

cat << 'EOF' > $app_name/src/reportWebVitals.js
const reportWebVitals = onPerfEntry => {
  if (onPerfEntry && onPerfEntry instanceof Function) {
    import('web-vitals').then(({ getCLS, getFID, getFCP, getLCP, getTTFB }) => {
      getCLS(onPerfEntry);
      getFID(onPerfEntry);
      getFCP(onPerfEntry);
      getLCP(onPerfEntry);
      getTTFB(onPerfEntry);
    });
  }
};

export default reportWebVitals;

EOF
