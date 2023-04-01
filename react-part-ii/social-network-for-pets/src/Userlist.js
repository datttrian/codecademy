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

