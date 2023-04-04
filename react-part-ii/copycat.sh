app_name='copycat'
rm -rf $app_name
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
    <title>Copycat</title>
  </head>
  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
  </body>
</html>

EOF

cat << 'EOF' >> $app_name/src/index.css

img {
  width: 40%;
}
EOF

cat << 'EOF' > $app_name/src/App.js
import {CopyCatContainer} from './containers/CopyCatContainer'
function App() {
  return (
    <CopyCatContainer />
  );
}

export default App;

EOF

mkdir $app_name/src/components $app_name/src/containers
cat << 'EOF' > $app_name/src/components/CopyCat.js
import React from "react";
import PropTypes from "prop-types";
import { styles } from "../styles";

const images = {
  copycat:
    "https://content.codecademy.com/courses/React/react_photo_copycat.png",
  quietcat:
    "https://content.codecademy.com/courses/React/react_photo_quietcat.png",
};

export class CopyCat extends React.Component {
  render() {
    const copying = this.props.copying;
    const toggleTape = this.props.toggleTape;
    const value = this.props.input;
    const handleChange = this.props.handleChange;
    const name = this.props.name

    return (
      <div style={styles.divStyles}>
        <h1 style={{ marginBottom: 80 }}>Copy Cat {name ? name : 'Tom'}</h1>
        <input type="text" value={value} onChange={handleChange} />
        <img
          alt="cat"
          src={copying ? images.copycat : images.quietcat}
          onClick={toggleTape}
          style={styles.imgStyles}
        />
        <p>{copying ? value : ""}</p>
      </div>
    );
  }
}

CopyCat.propTypes = {
  copying: PropTypes.bool.isRequired,
  toggleTape: PropTypes.func.isRequired,
  value: PropTypes.string,
  handleChange: PropTypes.func.isRequired,
  name: PropTypes.string,
};

EOF
cat << 'EOF' > $app_name/src/containers/CopyCatContainer.js
import React from "react";
import { CopyCat } from "../components/CopyCat";

export class CopyCatContainer extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      copying: true,
      input: "",
    };

    this.toggleTape = this.toggleTape.bind(this);
    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(e) {
    this.setState({ input: e.target.value });
  }

  toggleTape() {
    this.setState({ copying: !this.state.copying });
  }

  render() {
    const copying = this.state.copying;
    const toggleTape = this.toggleTape;
    const input = this.state.input;
    const handleChange = this.handleChange;

    return (
      <CopyCat
        copying={copying}
        toggleTape={toggleTape}
        input={input}
        handleChange={handleChange}
      />
    );
  }
}

EOF

cat << 'EOF' > $app_name/src/styles.js
const fontFamily = "Comic Sans MS, Lucida Handwriting, cursive";
const fontSize = "5vh";
const backgroundColor = "#282c34";
const minHeight = "100vh";
const minWidth = 400;
const display = "flex";
const flexDirection = "column";
const alignItems = "center";
const justifyContent = "center";
const color = "white";
const marginTop = "20px";
const width = "50%";

const divStyles = {
  fontFamily: fontFamily,
  fontSize: fontSize,
  color: color,
  backgroundColor: backgroundColor,
  minHeight: minHeight,
  minWidth: minWidth,
  display: display,
  flexDirection: flexDirection,
  alignItems: alignItems,
  justifyContent: justifyContent,
};

const imgStyles = {
  marginTop: marginTop,
  width: width,
};

export const styles = {
  imgStyles: imgStyles,
  divStyles: divStyles,
};

EOF