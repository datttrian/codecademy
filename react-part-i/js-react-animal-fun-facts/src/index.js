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

