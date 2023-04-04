app_name='random-color'
rm -rf $app_name
yarn create react-app $app_name
cat << 'EOF' > $app_name/src/Button.js
import React from 'react';

export class Button extends React.Component {
	render() {
		return (
			<button 
				className={ this.props.light ? 'light-button' : 'dark-button' }
        onClick={this.props.onClick}  
      >
				Refresh
			</button>
		);
	}
}

EOF
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
    <title>Random Color Picker</title>
  </head>
  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
  </body>
</html>

EOF
cat << 'EOF' > $app_name/src/App.js
import React from 'react';
import { Button } from './Button.js';
import './App.css';

class Random extends React.Component {
  constructor(props) {
    super(props);
    this.state = { color: [56, 60, 20] }
    this.handleClick = this.handleClick.bind(this)
  }
  
  componentDidMount() {
    this.applyColor();
  }

  componentDidUpdate(prevProps, prevState) {
    this.applyColor();
  }

  formatColor(ary) {
    return 'rgb(' + ary.join(', ') + ')';
  }

  isLight() {
    const rgb = this.state.color;
    return rgb.reduce((a,b) => a+b) < 127 * 3;
  }

  applyColor() {
    const color = this.formatColor(this.state.color);
    document.body.style.background = color;
  }

  chooseColor() {
    const random = [];
    for (let i = 0; i < 3; i++) {
      random.push(Math.floor(Math.random()*256));
    }
    return random;
  }

  handleClick() {
    this.setState({color: this.chooseColor()})
  }

  render() {
    return (
      <div>
        <h1 className={this.isLight() ? 'white' : 'black'}>
          Your color is {this.formatColor(this.state.color)}
        </h1>
        <Button 
          light={this.isLight()}
          onClick={this.handleClick}
        />
      </div>
    );
  }
}


function App() {
  return (
    <div className="App">
      <Random />
    </div>
  );
}

export default App;

EOF
cat << 'EOF' >> $app_name/src/index.css
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

#app div {
  width: 100%;
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

button {
  border-radius: 8px;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  font-family: 'Oxygen', sans-serif;
  letter-spacing: 2px;
}

.black {
	color: black;
}

.white {
	color: white;
}

.light-button {
  background-color: rgba(255,255,255,0.5);
  color: rgb(0,0,0);
}

.dark-button {
  background-color: rgba(0,0,0,0.5);
  color: rgb(255,255,255);
}

EOF
