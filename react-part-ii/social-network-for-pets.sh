app_name='social-network-for-pets'
rm -rf $app_name
yarn create react-app $app_name

cat << 'EOF' > $app_name/src/Userlist.js
import React from 'react';

export class Userlist extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(event) {
    this.props.onChoose(event.target.dataset.username);
  }

  render() {
    return (
      <ul>
        {this.props.usernames.map((username) => (
          <li key={username}>
            <button data-username={username} onClick={this.handleClick}>
              @{username}
            </button>
          </li>
        ))}
      </ul>
    );
  }
}

EOF

cat << 'EOF' > $app_name/src/Profile.js
import React from 'react';
import { fetchUserData, cancelFetch } from './dataFetcher';
import { Userlist } from './Userlist';

export class Profile extends React.Component {
  constructor(props){
    super(props);
    this.state = { userData: null }
  }

  loadUserData(){
    if(this.props.isLoading){
      this.setState({ userData: null })
    } else {
      this.fetchID = fetchUserData(this.props.username,(userData) => {
        this.setState({ userData })
      })
    }
  }

  render() {
    const isLoading = this.state.userData === null;
    let name;
    let bio;
    let friends;
    let className = 'Profile';
    if (isLoading) {
      className += ' loading';
      name = 'Loading...';
      bio = 'Loading...';
      friends = [];
    } else {
      name = this.state.userData.name;
      bio = this.state.userData.bio;
      friends = this.state.userData.friends;
    }

    return (
      <div className={className}>
        <div className="profile-picture">
          {isLoading || <img src={this.state.userData.profilePictureUrl} alt="" />}
        </div>
        <div className="profile-body">
          <h2>{name}</h2>
          <h3>@{this.props.username}</h3>
          <p>{bio}</p>
          <h3>My friends</h3>
          <Userlist usernames={friends} onChoose={this.props.onChoose} />
        </div>
      </div>
    );
  }

  componentDidMount(){
    this.loadUserData()
  }
  
  componentDidUpdate(prevProps){
    if(this.props.username !== prevProps.username){
      cancelFetch(this.fetchID);
      this.loadUserData();
    }
  }

  componentWillUnmount(){
    cancelFetch(this.fetchID)
  }
}

EOF

cat << 'EOF' > $app_name/src/Directory.js
import React from 'react';
import { Userlist } from './Userlist';

export function Directory(props) {
  return (
    <div className="Directory">
      <h2>User directory</h2>
      <Userlist
        usernames={['dog', 'cat', 'komodo']}
        onChoose={props.onChoose}
      />
    </div>
  );
}

EOF

cat << 'EOF' > $app_name/src/App.js
import React from 'react';
import { Profile } from './Profile';
import { Directory } from './Directory';
import './App.css'

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      currentUsername: null,
    };
    this.handleChoose = this.handleChoose.bind(this);
    this.handleReturnToDirectoryClick = this.handleReturnToDirectoryClick.bind(
      this
    );
  }

  handleChoose(newUsername) {
    this.setState({ currentUsername: newUsername });
  }

  handleReturnToDirectoryClick() {
    this.setState({ currentUsername: null });
  }

  render() {
    let body;
    if (this.state.currentUsername) {
      body = (
        <Profile
          username={this.state.currentUsername}
          onChoose={this.handleChoose}
        />
      );
    } else {
      body = <Directory onChoose={this.handleChoose} />;
    }

    return (
      <div className="App">
        <header>
          <h1>PetBook</h1>

          <nav>
            {this.state.currentUsername && (
              <button onClick={this.handleReturnToDirectoryClick}>
                Return to directory
              </button>
            )}
          </nav>
        </header>

        <main>{body}</main>
      </div>
    );
  }
}

export default App

EOF

cat << 'EOF' > $app_name/src/App.css
body {
  margin: 0;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen',
    'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
    sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

h2,
h3 {
  margin: 0;
}

button {
  color: #009;
  font: inherit;
  border: 0;
  background: transparent;
  cursor: pointer;
}

.App {
  width: 95%;
  max-width: 700px;
  margin: 0 auto;
}

.App header {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.App h1:after {
  content: '🐾';
  margin-left: 0.5em;
}

.App nav button:before {
  content: '⬅';
  margin-right: 0.5em;
}

.App main {
  display: flex;
}

.Profile {
  display: flex;
  flex-grow: 1;
  width: 66%;
}

.Profile .profile-picture {
  width: 100px;
  height: 100px;
  margin-right: 1rem;
  display: flex;
  background: #999;
}

.Profile .profile-picture img {
  width: inherit;
}

.Profile.loading {
  color: #999;
}

.Profile.loading p {
  background: #999;
}

.Directory {
  flex-grow: 1;
}

EOF

cat << 'EOF' > $app_name/src/dataFetcher.js
// This module exports fake data fetching functionality.
// In a real app, this would grab data from the internet, but
// this module just waits a little bit before responding.
//
// You don't need to look at this, but you can if you want!

const FAKE_USER_DATA = {
  cat: {
    name: 'Kitty Cat',
    bio: "I'm the coolest cat around. I'm the cat's meow!",
    profilePictureUrl:
      'https://content.codecademy.com/courses/React/react_lifecycle_cat_profile_picture.jpg',
    friends: ['komodo'],
  },
  dog: {
    name: 'Doggy Dog',
    bio: "I'm the doggity dog! Woof woof!",
    profilePictureUrl:
      'https://content.codecademy.com/courses/React/react_lifecycle_dog_profile_picture.jpg',
    friends: ['komodo'],
  },
  komodo: {
    name: 'Lizard Lady',
    bio: "I'm a Komodo dragon. You'll love me.",
    profilePictureUrl:
      'https://content.codecademy.com/courses/React/react_lifecycle_komodo_profile_picture.jpg',
    friends: ['cat', 'dog'],
  },
};

const timeoutByFetchId = new Map();

class Fetch {
  constructor() {
    Object.defineProperty(this, '_id', {
      value: Date.now() + Math.random().toString().substr(2),
    });
  }
}

export function fetchUserData(username, callback) {
  if (!FAKE_USER_DATA.hasOwnProperty(username)) {
    throw new Error(
      'Invalid username. Make sure it is "cat", "dog", or "komodo".'
    );
  }

  const fetch = new Fetch();

  const delay = Math.floor(Math.random() * 1000) + 500;
  const timeout = setTimeout(() => {
    timeoutByFetchId.delete(fetch._id);
    callback(FAKE_USER_DATA[username]);
  }, delay);

  timeoutByFetchId.set(fetch._id, timeout);

  return fetch;
}

export function cancelFetch(fetch) {
  if (!fetch || typeof fetch !== 'object') {
    return;
  }
  const timeout = timeoutByFetchId.get(fetch._id);
  clearTimeout(timeout);
  timeoutByFetchId.delete(fetch._id);
}

EOF