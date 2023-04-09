const express = require('express');

// Import the spaceFacts array and the getRandomElement() method.
const { spaceFacts } = require('../space-data');
const { getRandomElement } = require('../utils');

// Create the spaceFactsRouter router.
const spaceFactsRouter = express.Router();

// Returns the spaceFacts array.
spaceFactsRouter.get('/', (req, res) => {
  res.send({spaceFacts: spaceFacts});
});

// Returns a randomly selected space fact from the spaceFacts array.
spaceFactsRouter.get('/random', (req, res) => {
  res.send({spaceFact: getRandomElement(spaceFacts)});
});

// Export the router.
module.exports = spaceFactsRouter;