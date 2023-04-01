import React from 'react';
import ReactDOM from 'react-dom';
import TrackList from '../TrackList/TrackList.js';
import './SearchResults.css';

class SearchResults extends React.Component {
  render() {
    return (
      <div className="SearchResults">
      <h2>Results</h2>
      <TrackList tracks={this.props.searchResults} onAdd={this.props.onAdd} />
      </div>
    )
  }
}

export default SearchResults;

