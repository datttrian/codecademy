const submitButton = document.getElementById('submit-quote');
const newQuoteContainer = document.getElementById('new-quote');

// Submit Button event listener.
submitButton.addEventListener('click', () => {
  // Retrieve the values from the input elements.
  const quote = document.getElementById('quote').value;
  const person = document.getElementById('person').value;

  // Send a POST request to the server, with the quote and person values inserted into the query string.
  fetch(`/api/quotes?quote=${quote}&person=${person}`, {
    method: 'POST',
  })
  // Convert the response object using the json() method.
  .then(response => response.json())
  // Display the quote that was created by the user.
  .then(({quote}) => {
    // Create a new div element.
    const newQuote = document.createElement('div');

    // Create HTML elements as a string to display the newly created quote, insert the values of 'quote' and 'person' and assign the string to the div's innerHTML property.
    newQuote.innerHTML = `<h3>Congrats, your quote was added!</h3>
    <div class="quote-text">${quote.quote}</div>
    <div class="attribution">- ${quote.person}</div>
    <p>Go to the <a href="index.html">home page</a> to request and view all quotes.</p>`;

    // Append the newQuote div element as a child of the newQuoteContainer element.
    newQuoteContainer.appendChild(newQuote);
  });
});
