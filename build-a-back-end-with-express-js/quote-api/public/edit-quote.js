const quoteDropDownList = document.getElementById('quote-list');
const updateButton = document.getElementById('update-quote');
const updatedQuoteContainer = document.getElementById('updated-quote');
let quotesArray = [];

// Resets the quoteDropDownList element's contents by setting its innerHTML property to an empty string,
// and sets quotesArray to an empty array.
// Note: quoteDropDownList is a 'select' element (see edit-quote.html).
const resetQuoteList = () => {
  quoteDropDownList.innerHTML = '';
  quotesArray = [];
}

// Displays an error message if the server returned an error.
const renderError = response => {
  updatedQuoteContainer.innerHTML = `<p>Your request returned an error from the server: </p>
<p>Code: ${response.status}</p>
<p>${response.statusText}</p>`;
}

// Creates an 'option' element for each quote object in the array and appends each option element as a child of the 'select' element assigned to the quoteDropDownList variable.
// i.e. creates a drop-down list of quote IDs from which the user can select to edit a quote.
const createQuoteList = (quotes = []) => {
  // Reset the list of quotes.
  resetQuoteList();

  // If the quotes array passed in is not empty.
  if (quotes.length > 0) {
    // For each quote object in the array.
    quotes.forEach(quote => {
      // Create a new 'option' element.
      const newQuote = document.createElement('option');

      // Set the option element's value property to the ID of the current quote.
      newQuote.value = quote.id;

      // Set the option element's innerHTML property to the ID of the current quote.
      newQuote.innerHTML = quote.id;

      // Add an event listener to the option element that will fire when the option is selected from the drop-down list.
      newQuote.addEventListener('click', setSelectedOption);

      // Append the option element as a child of the select element.
      quoteDropDownList.appendChild(newQuote);
    });

    // Store the quotes array in a local variable so that a server request does not have to be made every time the user changes the selection in the drop-down list.
    quotesArray = quotes;

    // Retrieve the 'quote' and 'person' input elements.
    const quoteInput = document.getElementById('quote');
    const personInput = document.getElementById('person');

    // Set the 'value' properties of the 'quote' and 'person' input elements to the corresponding properties of the first quote object in the quotes array.
    quoteInput.value = quotes[0].quote;
    personInput.value = quotes[0].person;
  }
}

// Fired when the user selects a quote from the drop-down list.
// Updates the contents of the 'quote' and 'person' input elements so that they display the data corresponding to the chosen quote.
const setSelectedOption = e => {
  // Retrieve the quote ID of the selected quote. This is retrieved from the 'select' element.
  const quoteId = e.target.value;
  
  // If quoteId is not undefined.
  if (quoteId) {
    // Search quotesArray for the selected quote and store it in selectedQuote.
    const selectedQuote = quotesArray.find(quote => quote.id === Number(quoteId));
    
    // Retrieve the 'quote' and 'person' input elements.
    const quoteInput = document.getElementById('quote');
    const personInput = document.getElementById('person');

    // Set the 'value' properties of the 'quote' and 'person' input elements to the corresponding properties of the selected quote.
    quoteInput.value = selectedQuote.quote;
    personInput.value = selectedQuote.person;
  }
  // Else quoteId is undefined.
  else {
    // Display an error message.
    updatedQuoteContainer.innerHTML = 'Your selection returned an error';
  }
}

// Sends a GET request to the server to fetch all quotes and, if successful, calls createQuoteList() passing in the returned array of quotes.
const fetchAllQuotes = () => {
  // Send a GET request to the server.
  fetch('/api/quotes')
  .then(response => {
    // If response.ok is true.
    if (response.ok) {
      // Convert the response object using the json() method and return the object.
      return response.json();
    // Else display an error message.
    } else {
      renderError(response);
    }
  })
  // Call createQuoteList() passing in the quotes array so that the quotes can be displayed to the user.
  .then(response => {
    createQuoteList(response.quotes);
  });
}

// Sets the event handler for the click event of the Update button.
updateButton.addEventListener('click', () => {
  // Retrieve the ID of the selected quote from the 'select' element.
  const quoteId = Number(quoteDropDownList.selectedOptions[0].text);

  // Retrieve the text from the 'quote' and 'person' input elements.
  const quoteText = document.getElementById('quote').value;
  const personText = document.getElementById('person').value;

  // Send a PUT request to the server, with the quote ID inserted as a parameter, and the quote text and person text inserted as query values.
  fetch(`/api/quotes/${quoteId}?quote=${quoteText}&person=${personText}`, {method: 'PUT'})
  .then(response => {
    // If response.ok is true.
    if (response.ok) {
      // Convert the response object using the json() method and return the object.
      return response.json();
    // Else display an error message.
    } else {
      renderError(response);
    }
  })
  // Use object destructuring to extract the edited quote that was returned by the server.
  .then(({quote}) => {
    // Create a new div element.
    const updatedQuote = document.createElement('div');

    // Create HTML elements as a string to display the updated quote, insert the values of 'quote' and 'person' and assign the string to the div's innerHTML property.
    updatedQuote.innerHTML = `<h3>Congrats, your quote was updated!</h3>
    <div class="quote-text">${quote.quote}</div>
    <div class="attribution">- ${quote.person}</div>
    <p>Go to the <a href="index.html">home page</a> to request and view all quotes.</p>`;
    
    // Append the updatedQuote div element as a child of the updatedQuoteContainer element.
    updatedQuoteContainer.appendChild(updatedQuote);
  });

  // Call fetchAllQuotes() to update the data contained in the local quotesArray variable so that the updated quote is displayed correctly in the drop-down list.
  fetchAllQuotes();
});