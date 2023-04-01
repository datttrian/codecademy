import React from 'react';
import { Video } from './Video';
import { Menu } from './Menu';
import './App.css';

function App() {

  const VIDEOS = {
    fast: 'https://content.codecademy.com/courses/React/react_video-fast.mp4',
    slow: 'https://content.codecademy.com/courses/React/react_video-slow.mp4',
    cute: 'https://content.codecademy.com/courses/React/react_video-cute.mp4',
    eek: 'https://content.codecademy.com/courses/React/react_video-eek.mp4'
  };

  class VideoPlayer extends React.Component {
    constructor(props) {
      super(props);
      this.state = { src: VIDEOS.fast };
      this.chooseVideo = this.chooseVideo.bind(this)
    }
    
    chooseVideo(newVideo) {
      this.setState({ src: VIDEOS[newVideo] })
    }

    render() {
      return (
        <div>
          <h1>Video Player</h1>
          <Menu chooseVideo={this.chooseVideo}/>
          <Video src={this.state.src}/>
        </div>
      );
    }
  }

  return (
    <div className="App">
      <VideoPlayer />
    </div>
  );
}

export default App;

