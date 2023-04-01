import React from 'react';
import ReactDOM from 'react-dom';
import Track from '../Track/Track.js';
import './TrackList.css';


class TrackList extends React.Component {
  render() {
    return (
      <div className="TrackList">
        {this.props.tracks.map(track => {return <Track track={track} key={track.id} onAdd={this.props.onAdd} onRemove={this.props.onRemove} isRemoval={this.props.isRemoval} />  })}
      </div>
    );
  }
}

export default TrackList;

