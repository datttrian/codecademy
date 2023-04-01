app_name='video-player'
rm -rf $app_name
yarn create react-app $app_name

cat << 'EOF' > $app_name/src/Menu.js
import React from 'react';

export class Menu extends React.Component {
  constructor(props){
    super(props);
    this.handleClick = this.handleClick.bind(this)
  }
  handleClick(e){
    const text = e.target.value
    this.props.chooseVideo(text)
  }
  render() {
    return (
      <form onClick={this.handleClick}>
        <input type="radio" name="src" value="fast" defaultChecked /> fast
        <input type="radio" name="src" value="slow" /> slow
        <input type="radio" name="src" value="cute" /> cute
        <input type="radio" name="src" value="eek" /> eek
      </form>
    );
  }
}

EOF

cat << 'EOF' > $app_name/src/Video.js
import React from 'react';

export class Video extends React.Component {
  render() {
    return (
      <div>
        <video src={this.props.src} controls autostart="true" autoPlay muted />
      </div>
    );
  }
}

EOF

cat << 'EOF' > $app_name/src/App.js
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

EOF
