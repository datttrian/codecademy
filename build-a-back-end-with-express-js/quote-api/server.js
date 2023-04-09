const express = require('express');
//const morgan = require('morgan');
const app = express();

// const { quotes } = require('./data');
// const { getRandomElement } = require('./utils');

const PORT = process.env.PORT || 4001;
app.use(express.static('public'));

// Import and mount the quotesRouter.
const quotesRouter = require('./public/quotes-router.js');
app.use('/api/quotes', quotesRouter);

// Import and mount the spaceFactsRouter.
const spaceFactsRouter = require('./public/space-facts-router.js');
app.use('/api/spaceFacts', spaceFactsRouter);

// Start the server.
app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});

// app.get('/api/quotes/random', (req, res) => {
//   res.send({quote: getRandomElement(quotes)});
// });

// app.get('/api/quotes', (req, res) => {
//   if (req.query.person != undefined) {
//     const quotesByPerson = quotes.filter(quote => quote.person === req.query.person)
//     res.send({quotes: quotesByPerson});
//   }
//   else {
//     res.send({quotes: quotes});
//   }
// });

// app.get('/api/quotes/:id', (req, res) => {
//   if (req.params.id != undefined) {
//     const id = Number(req.params.id);
//     const quote = quotes.find(quote => quote.id === id);
    
//     if (quote) {
//       res.send({quote: quote});
//     }
//     else {
//       res.status(404).send();
//     }
//   }
//   else {
//     res.status(404).send();
//   }
// });

// app.post('/api/quotes', (req, res) => {
//   if (req.query.quote && req.query.person) {
//     let newQuote = {
//       id: nextId += 1,
//       quote: req.query.quote,
//       person: req.query.person
//     };
    
//     quotes.push(newQuote);
//     const index = quotes.indexOf(newQuote);
    
//     if (index) {
//       res.send({quote: quotes[index]});
//     }
//     else {
//       res.status(400).send();
//     }
//   } else {
//     res.status(400).send();
//   }
// });

// app.put('/api/quotes/:id', (req, res) => {
//   if (req.params.id && req.query.quote && req.query.person) {
//     let updatedQuote = {
//       id: Number(req.params.id),
//       quote: req.query.quote,
//       person: req.query.person
//     };
    
//     const index = quotes.findIndex(quote => quote.id === updatedQuote.id);
//     quotes.splice(index, 1, updatedQuote);
//     res.send({quote: quotes[index]});
//   } else {
//     res.status(400).send();
//   }
// });

// app.delete('/api/quotes/:id', (req, res) => {
//   if (req.params.id) {
//     const index = quotes.findIndex(quote => quote.id === Number(req.params.id));
//     // Deleted elements are returned in an array.
//     const deletedElement = quotes.splice(index, 1);
//     res.send({quote: deletedElement[0]});
//   }
//   else {
//     res.status(400).send();
//   }
// });