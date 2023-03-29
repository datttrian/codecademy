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
sed -i '' "s,\<link rel=\"manifest\" href=\"%PUBLIC_URL%/manifest.json\" /\>,\<link rel=\"manifest\" href=\"%PUBLIC_URL%/manifest.json\" /\>\n    \<link rel=\"stylesheet\" href=\"./styles.css\" /\>,g" $app_name/public/index.html
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
rm -rf $app_name/src/App.css
rm -rf $app_name/src/App.js
rm -rf $app_name/src/App.test.js
rm -rf $app_name/src/reportWebVitals.js
rm -rf $app_name/src/setupTests.js