rm -rf js-react-animal-fun-facts
app_name='js-react-animal-fun-facts'
yarn create react-app $app_name
mkdir $app_name/public/images
IMAGE_URL="https://raw.githubusercontent.com/datttrian/codecademy/develop/react-part-i/js-react-animal-fun-facts/public/images/dolphin.jpg"
curl -o "$app_name/public/images/dolphin.jpg" "$IMAGE_URL"
IMAGE_URL="https://raw.githubusercontent.com/datttrian/codecademy/develop/react-part-i/js-react-animal-fun-facts/public/images/lobster.jpg"
curl -o "$app_name/public/images/lobster.jpg" "$IMAGE_URL"
IMAGE_URL="https://raw.githubusercontent.com/datttrian/codecademy/develop/react-part-i/js-react-animal-fun-facts/public/images/ocean.jpg"
curl -o "$app_name/public/images/ocean.jpg" "$IMAGE_URL"
IMAGE_URL="https://raw.githubusercontent.com/datttrian/codecademy/develop/react-part-i/js-react-animal-fun-facts/public/images/starfish.jpg"
curl -o "$app_name/public/images/starfish.jpg" "$IMAGE_URL"
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
    <!--
      manifest.json provides metadata used when your web app is installed on a
      user's mobile device or desktop. See https://developers.google.com/web/fundamentals/web-app-manifest/
    -->
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
    <link rel="stylesheet" href="./styles.css" />
    <!--
      Notice the use of %PUBLIC_URL% in the tags above.
      It will be replaced with the URL of the `public` folder during the build.
      Only files inside the `public` folder can be referenced from the HTML.

      Unlike "/favicon.ico" or "favicon.ico", "%PUBLIC_URL%/favicon.ico" will
      work correctly both with client-side routing and a non-root public URL.
      Learn how to configure a non-root public URL by running `npm run build`.
    -->
    <title>React App</title>
  </head>
  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
    <!--
      This HTML file is a template.
      If you open it directly in the browser, you will see an empty page.

      You can add webfonts, meta tags, or analytics to this file.
      The build step will place the bundled scripts into the <body> tag.

      To begin the development, run `npm start` or `yarn start`.
      To create a production bundle, use `npm run build` or `yarn build`.
    -->
  </body>
</html>
EOF
cat << 'EOF' > $app_name/public/styles.css
div {
	display: flex;
	align-items: center;
	flex-direction: column;
}

.background {
	position: absolute;
	margin-top: 80px;
	width: 95%;
	z-index: 1
}

#fact {
	display: flex;
	justify-content: center;
  position: fixed;
	margin-top: 100px;
	width: 80%;
	font-size: 5vw;
	z-index: 2;
}

.animals {
	display: flex;
	flex-direction: row;
	position: fixed;
	width: 90%;
	margin-top: 240px;
	z-index: 2
}

.animal {
	width: 33.3%;
}

@media only screen and (max-width: 670px) {
	.animals {
		margin-top: 180px;
	}

  h1 {
    font-size: 24px;
  }
}

@media only screen and (max-width: 390px) {
	.animals {
		margin-top: 150px;
	}
}

@media only screen and (max-width: 300px) {
	.animals {
		margin-top: 130px;
	}
}

@media only screen and (max-width: 200px) {
	.animals {
		margin-top: 120px;
	}
}

EOF
cat << 'EOF' > $app_name/src/animals.js
export const animals = {
  dolphin: {
    image: "/images/dolphin.jpg",
    facts: [
      "Dolphins have been shown to give distinct names to each other!",
      "Dolphins are known to display their own culture!",
      "Dolphins have two stomachs!",
    ],
  },
  lobster: {
    image: "/images/lobster.jpg",
    facts: [
      "Lobsters taste with their legs!",
      "Lobsters chew with their stomachs!",
      "Lobsters can live as long as 100 years.",
    ],
  },
  starfish: {
    image: "/images/starfish.jpg",
    facts: [
      "Starfish can have up to 40 arms!",
      "Starfish have no brain and no blood!",
      "Starfish can regenerate their own arms!",
    ],
  },
};

EOF
cat << 'EOF' > $app_name/src/index.js
import { animals } from './animals';
import React from 'react';
import ReactDOM from 'react-dom';

let images = []
const showBackground = true

function displayFact(e) {
  let facts = animals[e.target.alt].facts
  document.getElementById('fact').innerHTML = facts[Math.floor(Math.random() * facts.length)]
}

for (const animal in animals) {
  images.push(
    <img
    key={animal}
    className='animal'
    alt={animal}
    src={animals[animal].image}
    ariaLabel={animal}
    role='button'
    onClick={displayFact}
    />
    )
}

const background = <img alt="ocean" src="/images/ocean.jpg" />
const animalFacts = (
  <div>
    <h1 style={{"position": "absolute"}}>Click an animal for a fun fact</h1>
    {showBackground && background}
    <p id='fact'></p>
    <div className="animals">
      {images}
    </div>
  </div>
)
ReactDOM.render(animalFacts, document.getElementById("root"));

EOF