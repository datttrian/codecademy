rm -rf authorization-form
app_name='authorization-form'
yarn create react-app $app_name
cat << 'EOF' > $app_name/public/index.html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <link rel="icon" href="%PUBLIC_URL%/favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#000000" />
    <meta
      name="description"
      content="Web site created using create-react-app"
    />
    <link rel="apple-touch-icon" href="%PUBLIC_URL%/logo192.png" />
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
    <title>Authorization Form</title>
  </head>
  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
  </body>
</html>

EOF
cat << 'EOF' > $app_name/src/App.js
import React, { Component } from 'react';

class App extends Component {
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
    const auth = (password === this.state.password);
    this.setState({
      authorized: auth
    });
  }
  render() {
    const login = (
      <form action="#" onSubmit={this.authorize}>
        <input type="password" placeholder="Password" />
        <input type="submit" />
      </form>
     );
    const contactInfo = (
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
        <h1>{this.state.authorized ? 'Contact' : 'Enter the Password'}</h1>
        {this.state.authorized ? contactInfo : login}
      </div>
    );
  }
}

export default App;
EOF
cat << 'EOF' > $app_name/src/index.css
body {
  margin: 0;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen',
    'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
    sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

code {
  font-family: source-code-pro, Menlo, Monaco, Consolas, 'Courier New',
    monospace;
}
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
