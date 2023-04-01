app_name='jammming-prj'
rm -rf $app_name
yarn create react-app $app_name
sed -i '' "s,import App from \'./App\'\;,import App from \'./Components/App/App\'\;,g" $app_name/src/index.js
mkdir $app_name/src/util
cat << 'EOF' > $app_name/src/util/Spotify.js
const clientID = '9a6c7b32f6f3410bb312f1245f31bb10';
const redirectURI = "https://valentinajammming.surge.sh";
let accessToken ;

let Spotify = {
  getAccessToken() {
    if(accessToken) {
      return accessToken;
    }

    const tokenMatch = window.location.href.match(/access_token=([^&]*)/);
    const expiresInMatch = window.location.href.match(/expires_in=([^&]*)/);

     if(tokenMatch && expiresInMatch) {
      accessToken = tokenMatch[1];
      let expireTime = Number(expiresInMatch[1]);
      window.setTimeout(() => accessToken = '', expireTime * 1000);
      window.history.pushState('Access Token', null, '/');
      return accessToken;
    } else {
      window.location = `https://accounts.spotify.com/authorize?client_id=${clientID}&response_type=token&scope=playlist-modify-public&redirect_uri=${redirectURI}`;
    }
  },

  search(searchTerm) {
  const accessToken = Spotify.getAccessToken();
  return fetch(`https://api.spotify.com/v1/search?type=track&q=${searchTerm}`, {
    headers: {
      Authorization: `Bearer ${accessToken}`
    }
  }).then(response => {
    return response.json();
  }).then(jsonResponse => {
    if (!jsonResponse.tracks) {
      return [];
    }
    console.log(jsonResponse.tracks);
    return jsonResponse.tracks.items.map(track => ({
      id: track.id,
      name: track.name,
      artist: track.artists[0].name,
      uri: track.uri
    }));
  });
},

    savePlaylist(name, trackURIs) {
      if (!name && !trackURIs.length) {
     return;
   }

    const accessToken = Spotify.getAccessToken();
 const headers = { Authorization: `Bearer ${accessToken}` };
 let userId;

 return fetch('https://api.spotify.com/v1/me', {headers: headers}
 ).then(response => response.json()
 ).then(jsonResponse => {
   userId = jsonResponse.id;

   return fetch(`https://api.spotify.com/v1/users/${userId}/playlists`, {
     headers: headers,
     method: 'POST',
     body: JSON.stringify({name: name})
   }).then(response => response.json()
   ).then(jsonResponse => {
   const playlistId = jsonResponse.id;

   return fetch(`https://api.spotify.com/v1/users/${userId}/playlists/${playlistId}/tracks`, {
     headers: headers,
     method: 'POST',
     body: JSON.stringify({uris: trackURIs})
         });
       });
     });
  },

}

export default Spotify;

EOF
mkdir $app_name/src/Components
cd $app_name/src/Components
mkdir SearchBar SearchResults Playlist TrackList Track App
cd ../../..
cat << 'EOF' > $app_name/src/Components/SearchBar/SearchBar.js
import React from 'react';
import './SearchBar.css';

class SearchBar extends React.Component {
    constructor(props) {
        super(props);
        this.state = { term: '' };
        this.search = this.search.bind(this);
        this.handleTermChange = this.handleTermChange.bind(this);
    }

    search() {
        this.props.onSearch(this.state.term);
    }

    handleTermChange(event) {
        this.setState({ term: event.target.value });
    }

    render() {
        return (
            <div className="SearchBar">
                <input
                    onChange={this.handleTermChange}
                    placeholder="Enter A Song, Album, or Artist"
                />
                <button className="SearchButton" onClick={this.search}>
                    SEARCH
                </button>
            </div>
        );
    }
}

export default SearchBar;

EOF
cat << 'EOF' > $app_name/src/Components/SearchBar/SearchBar.css
.SearchBar {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding-top: 6.94rem;
  margin-bottom: 6.33rem;
}

.SearchBar input {
  width: 287px;
  padding: .88rem 0;
  border: 1px solid #fff;
  border-radius: 3px;
  margin-bottom: 2.22rem;
  color: #010c3f;
  text-align: center;
  font-size: 1rem;
}

.SearchBar input:focus {
  outline: none;
}

.SearchButton {
  cursor: pointer;
  width: 8.11rem;
  padding: .77rem 0;
  border-radius: 54px;
  background-color: #010c3f;
  text-align: center;
  font-size: .833rem;
  transition: background-color .25s;
  border: 0px;
  color: #fff;
  font-weight: 500;
}

.SearchButton:hover {
  background-color: rgba(108, 65, 233, .7);
}

.SearchBar a {
  cursor: pointer;
  width: 8.11rem;
  padding: 0.77rem 0;
  border-radius: 54px;
  background-color: #010c3f;
  text-align: center;
  font-size: .833rem;
  transition: background-color .25s;
}

EOF
cat << 'EOF' > $app_name/src/Components/SearchResults/SearchResults.js
import React from 'react';
import TrackList from '../TrackList/TrackList';
import './SearchResults.css';

class SearchResults extends React.Component {
    render() {
        return (
            <div className="SearchResults">
                <h2>Results</h2>
                <TrackList
                    tracks={this.props.searchResults}
                    onAdd={this.props.onAdd}
                    isRemoval={false}
                />
            </div>
        );
    }
}

export default SearchResults;

EOF
cat << 'EOF' > $app_name/src/Components/SearchResults/SearchResults.css
.SearchResults {
  width: 50%;
  height: 950px;
  overflow-y: scroll;
  padding: .88rem;
  background-color: rgba(1, 12, 63, 0.7);
  box-shadow: 0 4px 2px 2px #000000;
}

::-webkit-scrollbar {
    width: 0px;
    background: transparent;
}

@media only screen and (max-width: 1020px) {
  .SearchResults {
    width: 90%;
    margin-bottom: 2rem;
  }
}

EOF
cat << 'EOF' > $app_name/src/Components/Playlist/Playlist.js
import React from 'react';
import TrackList from '../TrackList/TrackList';
import './Playlist.css';

class Playlist extends React.Component {
    constructor(props) {
        super(props);
        this.handleNameChange = this.handleNameChange.bind(this);
    }

    handleNameChange(event) {
        this.props.onNameChange(event.target.value);
    }

    render() {
        return (
            <div className="Playlist">
                <input
                    defaultValue={this.props.playlistName}
                    onChange={this.handleNameChange}
                />
                <TrackList
                    tracks={this.props.playlistTracks}
                    onRemove={this.props.onRemove}
                    isRemoval={true}
                />
                <button className="Playlist-save" onClick={this.props.onSave}>
                    SAVE TO SPOTIFY
                </button>
            </div>
        );
    }
}

export default Playlist;

EOF
cat << 'EOF' > $app_name/src/Components/Playlist/Playlist.css
.Playlist {
  display: flex;
  flex-direction: column;
  align-items: center;
  overflow-y: scroll;
  width: 37%;
  max-height: 950px;
  padding: 2.27rem 1.16rem;
  background-color: rgba(1, 12, 63, 0.7);
  box-shadow: 0 4px 2px 2px #000000;
}

.Playlist input {
  width: 100%;
  border: 0;
  outline: 0;
  background: transparent;
  border-bottom: 1px solid #6f6f6f;
  font-family: 'Poppins', sans-serif;
  font-size: 1.55rem;
  color: #fff;
}

.Playlist-save {
  cursor: pointer;
  width: 10rem;
  padding: .77rem 0;
  border-radius: 54px;
  border-width: 0px;
  margin-top: 1.27rem;
  background-color: #6c41ec;
  text-align: center;
  font-size: .83rem;
  transition: background-color .25s;
  color: #fff;
  font-weight: 500;
}

.Playlist-save:hover {
  background-color: rgba(108, 65, 233, .7);
}

::-webkit-scrollbar {
    width: 0px;
    background: transparent;
}

@media only screen and (max-width: 1020px) {
  .Playlist {
    width: 90%;
  }
}

EOF
cat << 'EOF' > $app_name/src/Components/TrackList/TrackList.js
import React from 'react';
import './TrackList.css';
import Track from '../Track/Track';

class TrackList extends React.Component {
    render() {
        let listOftracks = this.props.tracks.map((track) => {
            return (
                <Track
                    track={track}
                    key={track.id}
                    onAdd={this.props.onAdd}
                    onRemove={this.props.onRemove}
                    isRemoval={this.props.isRemoval}
                />
            );
        });
        return <div className="TrackList">{listOftracks}</div>;
    }
}

export default TrackList;

EOF
cat << 'EOF' > $app_name/src/Components/TrackList/TrackList.css
.TrackList {
  width: 100%;
}
EOF
cat << 'EOF' > $app_name/src/Components/Track/Track.js
import React from 'react';
import './Track.css';

class Track extends React.Component {
    constructor(props) {
        super(props);
        this.addTrack = this.addTrack.bind(this);
        this.removeTrack = this.removeTrack.bind(this);
    }

    renderAction() {
        if (this.props.isRemoval) {
            return (
                <button className="Track-action" onClick={this.removeTrack}>
                    -
                </button>
            );
        } else {
            return (
                <button className="Track-action" onClick={this.addTrack}>
                    +
                </button>
            );
        }
    }

    addTrack() {
        this.props.onAdd(this.props.track);
    }

    removeTrack() {
        this.props.onRemove(this.props.track);
    }

    render() {
        return (
            <div className="Track">
                <div className="Track-information">
                    <h3>{this.props.track.name}</h3>
                    <p>
                        {this.props.track.artist} | {this.props.track.album}
                    </p>
                </div>
                {this.renderAction()}
            </div>
        );
    }
}

export default Track;

EOF
cat << 'EOF' > $app_name/src/Components/Track/Track.css
.Track {
  display: flex;
  align-items: center;
  border-bottom: 1px solid rgba(256, 256, 256, 0.8);
}

.Track-action {
  cursor: pointer;
  padding: .5rem;
  font-size: 1.05rem;
  transition: color .25s;
  border: 0px;
  background-color: rgba(0, 0, 0, 0);
  color: #fff;
}

.Track-action:hover {
  color: rgba(265, 265, 265, .5);
}

.Track-information {
  flex-grow: 1;
  display: flex;
  flex-direction: column;
  justify-content: center;
  height: 72px;
}

.Track-information h3 {
  margin-bottom: .22rem;
}

.Track-information p {
  font-size: .83rem;
  font-weight: 300;
  color: rgba(256, 256, 256, 0.8);
}
EOF
curl -o "$app_name/public/images/ocean.jpg" "$IMAGE_URL"
IMAGE_URL="https://raw.githubusercontent.com/datttrian/codecademy/develop/react-part-ii/jammming-prj/src/Components/App/background_photo_desktop.jpg"
curl -o "$app_name/src/Components/App/background_photo_desktop.jpg" "$IMAGE_URL"
cat << 'EOF' > $app_name/src/Components/App/App.js
import React from 'react';
import './App.css';
import SearchBar from '../SearchBar/SearchBar';
import SearchResults from '../SearchResults/SearchResults';
import Playlist from '../Playlist/Playlist';
import Spotify from '../../util/Spotify';

class App extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            searchResults: [],
            playlistName: 'New Playlist',
            playlistTracks: [],
        };
        this.addTrack = this.addTrack.bind(this);
        this.removeTrack = this.removeTrack.bind(this);
        this.updatePlaylistName = this.updatePlaylistName.bind(this);
        this.savePlaylist = this.savePlaylist.bind(this);
        this.search = this.search.bind(this);
    }

    addTrack(track) {
        let tracks = this.state.playlistTracks;
        if (
            this.state.playlistTracks.find(
                (savedTrack) => savedTrack.id === track.id
            )
        ) {
            return;
        }
        tracks.push(track);
        this.setState({ playlistTracks: tracks });
    }

    removeTrack(track) {
        let tracks = this.state.playlistTracks;
        tracks = tracks.filter((savedTrack) => savedTrack.id !== track.id);
        this.setState({ playlistTracks: tracks });
    }

    updatePlaylistName(name) {
        this.setState({ playlistName: name });
    }

    savePlaylist() {
        const trackURIs = this.state.playlistTracks.map((track) => track.uri);
        // return trackURIs;
        Spotify.savePlaylist(this.state.playlistName, trackURIs).then(() => {
            this.setState({ playlistName: 'New Playlist', playlistTracks: [] });
        });
    }

    search(searchTerm) {
        Spotify.search(searchTerm).then((searchResults) => {
            this.setState({ searchResults: searchResults });
        });
    }

    render() {
        return (
            <div>
                <h1>
                    Ja<span className="highlight">mmm</span>ing
                </h1>
                <div className="App">
                    <SearchBar onSearch={this.search} />
                    <div className="App-playlist">
                        <SearchResults
                            searchResults={this.state.searchResults}
                            onAdd={this.addTrack}
                        />
                        <Playlist
                            playlistName={this.state.playlistName}
                            playlistTracks={this.state.playlistTracks}
                            onRemove={this.removeTrack}
                            onNameChange={this.updatePlaylistName}
                            onSave={this.savePlaylist}
                        />
                    </div>
                </div>
            </div>
        );
    }
}

export default App;

EOF
cat << 'EOF' > $app_name/src/Components/App/App.css
body,
html,
#root {
  height: 100%;
}

html {
  font-size: 18px;
}

h1 {
  padding: .77rem 0;
  background-color: #010c3f;
  text-align: center;
  font-family: 'Poppins', sans-serif;
  font-size: 1.88rem;
  color: #fff;
}

h1 .highlight {
  color: #6c41ec;
}

h2 {
  font-family: 'Poppins', sans-serif;
  font-size: 1.55rem;
}

.App {
  height: 100%;
  padding: 0 17% 10% 17%;
  background-image: url('./background_photo_desktop.jpg');
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  font-family: 'Work Sans', sans-serif;
  font-weight: 500;
  color: #fff;
}

.App-playlist {
  display: flex;
  justify-content: space-between;
  width: 100%;
}

@media only screen and (max-width: 1020px) {
  .App-playlist {
    align-items: center;
    flex-direction: column;
  }
}
EOF

rm -rf $app_name/src/App.css
rm -rf $app_name/src/App.js
rm -rf $app_name/src/App.test.js
rm -rf $app_name/src/logo.svg
