const fetchAllButton = document.getElementById('fetch-quotes');
const fetchRandomButton = document.getElementById('fetch-random');
const fetchByAuthorButton = document.getElementById('fetch-by-author');
const fetchRandomSpaceFactButton = document.getElementById('fetch-random-space-fact');
const fetchAllSpaceFactsButton = document.getElementById('fetch-space-facts');

const quoteContainer = document.getElementById('quote-container');
const quoteText = document.querySelector('.quote');
const attributionText = document.querySelector('.attribution');

// Sets the quoteContainer div element's innerHTML property to an empty string.
const resetQuotes = () => {
  quoteContainer.innerHTML = '';
}

// Displays an error message inside the quoteContainer div element.
const renderError = response => {
  quoteContainer.innerHTML = `<p>Your request returned an error from the server: </p>
<p>Code: ${response.status}</p>
<p>${response.statusText}</p>`;
}

// Displays all the quotes contained in the quotes array argument.
const renderQuotes = (quotes = []) => {
  // Remove all quotes that are currently being displayed.
  resetQuotes();

  // If the quotes array is not empty.
  if (quotes.length > 0) {
    // For each quote in the quotes array.
    quotes.forEach(quote => {
      // Create a new div element.
      const newQuote = document.createElement('div');

      // Set the class name of the the div element.
      newQuote.className = 'single-quote';

      // Create HTML elements as a string to display the quote, insert the values of 'id', 'quote' and 'person' and assign the string to the div's innerHTML property.
      newQuote.innerHTML = `<div class="quote-text">${quote.id}</div>
      <div class="quote-text">${quote.quote}</div>
      <div class="attribution">- ${quote.person}</div>`;

      // Create a button element.
      const deleteButton = document.createElement('button');

      // Set the id of the button element to the id of the current quote.
      deleteButton.id = quote.id;

      // Set the text to display on the button.
      deleteButton.innerHTML = 'Delete';

      // Add an event listener to listen for the 'click' event and pass in the deleteQuote() event handler.
      deleteButton.addEventListener('click', deleteQuote);

      // Append the newQuote div element and the deleteButton button element as children of the quoteContainer element.
      quoteContainer.appendChild(newQuote);
      quoteContainer.appendChild(deleteButton);
    });
  // Else the quotes array is empty, so display a message.
  } else {
    quoteContainer.innerHTML = '<p>Your request returned no quotes.</p>';
  }
}

// Displays all the space-facts contained in the spaceFacts array argument.
const renderSpaceFacts = (spaceFacts = []) => {
  // Remove all space facts that are currently being displayed.
  // Note: The space-facts array uses the same container as the quotes array so the same function is used for both arrays.
  resetQuotes();

  // If the spaceFacts array is not empty.
  if (spaceFacts.length > 0) {
    // For each fact in the spaceFacts array.
    spaceFacts.forEach(spaceFact => {
      // Create a new div element.
      const newSpaceFact = document.createElement('div');

      // Set the class name of the div element.
      // Note: The space-facts div uses the same class as the quotes div (inside the renderQuotes() method).
      newSpaceFact.className = 'single-quote';

      // Create a div element as a string to display the space fact, insert the value of the current spaceFact's fact property and assign the string to the div's innerHTML property.
      newSpaceFact.innerHTML = `<div class="quote-text">${spaceFact.fact}</div>`;

      // Append the newSpaceFact div element as a child of the quoteContainer element.
      quoteContainer.appendChild(newSpaceFact);
    });
  // Else the spaceFacts array is empty, so display a message.
  } else {
    quoteContainer.innerHTML = '<p>Your request returned no space facts.</p>';
  }
}

// Sets the event handler for the click event of the Fetch All Quotes button.
fetchAllButton.addEventListener('click', () => {
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
  // Call renderQuotes() passing in the quotes array so that the quotes can be displayed to the user.
  .then(response => {
    renderQuotes(response.quotes);
  });
});

// Sets the event handler for the click event of the Fetch A Random Quote button.
fetchRandomButton.addEventListener('click', () => {
  // Send a GET request to the server.
  fetch('/api/quotes/random')
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
  // Call renderQuotes() passing in an array containing the randomly selected quote object so that the quote can be displayed to the user.
  .then(response => {
    renderQuotes([response.quote]);
  });
});

// Sets the event handler for the click event of the Fetch by Author button.
fetchByAuthorButton.addEventListener('click', () => {
  // Retrieve the name of the author from the input element.
  const author = document.getElementById('author').value;

  // Send a GET request to the server.
  fetch(`/api/quotes?person=${author}`)
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
  // Call renderQuotes() passing in the quotes array so that the quotes can be displayed to the user.
  .then(response => {
    renderQuotes(response.quotes);
  });
});

// The event handler for the Delete button's click event.
// Note: Each quote object has its own Delete button. All delete buttons use the same click event handler.
const deleteQuote = e => {
  // Retrieve the quote ID from the button element's 'id' property.
  // Note: Each button element's 'id' property is set to the corresponding quote ID.
  const quoteId = e.target.id;
  
  // Send a DELETE request to the server.
  fetch(`/api/quotes/${quoteId}`, {method: 'DELETE'})
  .then(response => {
    // If response.ok is true.
    if (response.ok) {
      // Fire the Fetch All Quotes button's click event, which will cause all the quotes to be redisplayed.
      fetchAllButton.click();
    }
    // Else response.ok was false, so display an error message.
    else {
      renderError(response);
    }
  });
}

// The event handler for the Fetch a Random Space Fact button's click event.
fetchRandomSpaceFactButton.addEventListener('click', () => {
  // Send a GET request to the server.
  fetch('/api/spaceFacts/random')
  .then(response => {
    // If response.ok is true.
    if (response.ok) {
      // Convert the response object using the json() method and return the object.
      return response.json();
    // Else response.ok was false, so display an error message.
    } else {
      renderError(response);
    }
  })
  // Call renderSpaceFacts() passing in an array containing the randomly selected spaceFact object so that the fact can be displayed to the user.
  .then(response => {
    renderSpaceFacts([response.spaceFact]);
  });
});

// The event handler for the Fetch all Space Facts button's click event.
fetchAllSpaceFactsButton.addEventListener('click', () => {
  // Send a GET request to the server.
  fetch('/api/spaceFacts')
  .then(response => {
    // If response.ok is true.
    if (response.ok) {
      // Convert the response object using the json() method and return the object.
      return response.json();
    // Else response.ok was false, so display an error message.
    } else {
      renderError(response);
    }
  })
  // Call renderSpaceFacts() passing in the spaceFacts array so that the space facts can be displayed to the user.
  .then(response => {
    renderSpaceFacts(response.spaceFacts);
  });
});