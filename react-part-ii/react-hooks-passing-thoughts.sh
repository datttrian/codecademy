app_name='react-hooks-passing-thoughts'
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
    <title>Passing Thoughts</title>
  </head>
  <body>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>
  </body>
</html>
EOF

cat << 'EOF' >> $app_name/src/index.css

input,
button {
  font: inherit;
  box-sizing: border-box;
}

input[type='submit'],
button {
  cursor: pointer;
}

.App {
  margin: 0 auto;
  max-width: 600px;
  width: 95%;
}

.App h1:before {
  content: '💭';
  margin-right: 0.5em;
}

.AddThoughtForm {
  display: flex;
  flex-wrap: wrap;
}

.AddThoughtForm input {
  padding: 1.5rem;
  border: 1px solid #666;
  border-radius: 3px;
}

.AddThoughtForm input[type='text'] {
  flex-grow: 1;
  margin-right: 0.5rem;
}

.thoughts {
  list-style-type: none;
  padding: 0;
}

.Thought {
  padding: 1rem;
  margin-bottom: 1rem;
  border-radius: 3px;
  background-color: #eee;
}

.Thought .remove-button {
  font-size: 80%;
  float: right;
  border: 0;
  border-radius: 3px;
  background: transparent;
}

.Thought .remove-button:hover {
  color: #fff;
  background-color: #000;
}
EOF

cat << 'EOF' > $app_name/src/App.js
import React, { useState } from 'react';
import { AddThoughtForm } from './AddThoughtForm';
import { Thought } from './Thought';
import { generateId, getNewExpirationTime } from './utilities';

function App() {
  const [thoughts, setThoughts] = useState([
    {
      id: generateId(),
      text: 'This is a place for your passing thoughts.',
      expiresAt: getNewExpirationTime(),
    },
    {
      id: generateId(),
      text: "They'll be removed after 15 seconds.",
      expiresAt: getNewExpirationTime(),
    },
  ]);

  const addThought = (thought) => {
    setThoughts((prev) => [thought, ...prev]);
  }

  const removeThought = (thoughtIdToRemove) => {
    const newThoughts = thoughts.filter(item => item.id !== thoughtIdToRemove);
    setThoughts(newThoughts);
  }

  return (
    <div className="App">
      <header>
        <h1>Passing Thoughts</h1>
      </header>
      <main>
        <AddThoughtForm addThought={addThought}/>
        <ul className="thoughts">
          {thoughts.map((thought) => (
            <Thought key={thought.id} thought={thought} removeThought={removeThought}/>
          ))}
        </ul>
      </main>
    </div>
  );
}

export default App;

EOF

cat << 'EOF' > $app_name/src/utilities.js
export function getNewExpirationTime() {
    return Date.now() + 15 * 1000;
  }
  
  let nextId = 0;
  export function generateId() {
    const result = nextId;
    nextId += 1;
    return result;
  }

EOF

cat << 'EOF' > $app_name/src/AddThoughtForm.js
import React, { useState } from 'react';
import { generateId, getNewExpirationTime } from './utilities';

export function AddThoughtForm(props) {
  const [text, setText] = useState('');

  const handleTextChange = ({target}) => {
    setText(target.value);
  }

  const handleSubmit = (event) => {
    event.preventDefault();
    if (text) {
      const thought = {
        id: generateId(),
        text: text,
        expiresAt: getNewExpirationTime()
      }
      props.addThought(thought);
      setText(''); 
    }
  }
  
  return (
    <form 
      className="AddThoughtForm" 
      onSubmit={handleSubmit} 
    >
      <input
        type="text"
        aria-label="What's on your mind?"
        placeholder="What's on your mind?"
        value={text}
        onChange={handleTextChange}
      />
      <input 
        type="submit" 
        value="Add"
      />
    </form>
  );
}

EOF

cat << 'EOF' > $app_name/src/Thought.js
import React, { useEffect } from 'react';

export function Thought(props) {
  const { thought, removeThought } = props;

  const handleRemoveClick = () => {
    removeThought(thought.id);
  };

  useEffect(() => {
    const timeRemaining = thought.expiresAt - Date.now()
    const thoughtExpiry = setTimeout(() => {
        removeThought(thought.id);
    }, timeRemaining);
    return () => {
      clearInterval(thoughtExpiry);
    };
  }, [thought, removeThought]);

  return (
    <li className="Thought">
      <button
        aria-label="Remove thought"
        className="remove-button"
        onClick={handleRemoveClick}
      >
        &times;
      </button>
      <div className="text">{thought.text}</div>
    </li>
  );
}

EOF
