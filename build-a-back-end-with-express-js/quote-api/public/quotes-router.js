const express = require('express');

// Import the quotes array and the getRandomElement() method.
const { quotes } = require('../data');
const { getRandomElement } = require('../utils');

// Create the quotesRouter router.
const quotesRouter = express.Router();

// Set the next ID which will be used when a new quote is created.
// (Note: This is not how it would be done in a real-world scenario).
let nextId = 13;

// Retrieves a random quote from the quotes array and returns the quote object.
quotesRouter.get('/random', (req, res) => {
  res.send({quote: getRandomElement(quotes)});
});

// Returns the quotes array, or an array containing the quotes associated with the req.query.person query value if applicable.
quotesRouter.get('/', (req, res) => {
  // If req.query.person is not undefined.
  if (req.query.person != undefined) {
    // Find all quotes that have a 'person' value equal to the value stored in req.query.person and store the result.
    // Note: The value returned by the filter() method is an array.
    const quotesByPerson = quotes.filter(quote => quote.person === req.query.person);

    // Return the array containing the quote(s).
    res.send({quotes: quotesByPerson});
  }
  // Else req.query.person is undefined, so return all quotes.
  else {
    res.send({quotes: quotes});
  }
});

// Adds a new quote to the quotes array.
quotesRouter.post('/', (req, res) => {
  // If quote text and person text are not undefined.
  if (req.query.quote && req.query.person) {
    // Create a new quote object using the corresponding values.
    let newQuote = {
      id: nextId += 1,
      quote: req.query.quote,
      person: req.query.person
    };
    
    // Add the new quote to the array.
    quotes.push(newQuote);

    // Find the index of the newly added quote.
    const index = quotes.indexOf(newQuote);
    
    // If index was found.
    if (index) {
      // Return the newly added quote.
      res.send({quote: quotes[index]});
    }
    // Else index was not found.
    else {
      res.status(400).send();
    }
  // Else quote text or person text is undefined, so return an error.
  } else {
    res.status(400).send();
  }
});

// Updates a quote with the data passed in the req.query object.
quotesRouter.put('/:id', (req, res) => {
  // If the quote ID, quote text and person text are not undefined.
  // Note: The quote ID (passed in the id parameter) cannot be edited by the user.
  //       However, it is still checked in case an invalid selection was made from the drop-down list.
  if (req.params.id && req.query.quote && req.query.person) {
    // Create a new quote object to store the updated data.
    let updatedQuote = {
      id: Number(req.params.id), // Use the existing ID.
      quote: req.query.quote,
      person: req.query.person
    };
    
    // Search the quotes array for the index of the quote that we need to update.
    const index = quotes.findIndex(quote => quote.id === updatedQuote.id);

    // If the index was found.
    if (index) {
      // Replace the quote with the updated quote.
      quotes.splice(index, 1, updatedQuote);

      // Return the updated quote.
      res.send({quote: quotes[index]});
    }
    // Else the index was not found, so return an error.
    else {
      res.status(400).send();
    }
  // Else quote ID, quote text or person text is undefined, so return an error.
  } else {
    res.status(400).send();
  }
});

// Deletes a quote from the quotes array.
quotesRouter.delete('/:id', (req, res) => {
  // If the quote ID is not undefined.
  if (req.params.id) {
    // Search the quotes array for the index of the quote that we need to delete.
    const index = quotes.findIndex(quote => quote.id === Number(req.params.id));

    // If the index was found.
    if (index) {
      // Delete the quote from the quotes array.
      // Note: The deleted element(s) are returned in an array.
      const deletedElement = quotes.splice(index, 1);

      // Return the deleted quote.
      res.send({quote: deletedElement[0]});
    }
    // Else the index was not found, so return an error.
    else {
      res.status(400).send();
    }
  }
  // Else the quote ID is undefined, so return an error.
  else {
    res.status(400).send();
  }
});

// Export the router.
module.exports = quotesRouter;