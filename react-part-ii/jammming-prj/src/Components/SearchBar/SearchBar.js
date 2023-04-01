import React from "react";
import ReactDOM from "react-dom";
import "./SearchBar.css";


class SearchBar extends React.Component{
  constructor(props) {
    super(props);
    this.state = {
      searchTerm: ''
    }

    this.search = this.search.bind(this);
    this.handleTermChange = this.handleTermChange.bind(this);
    this.handleKeyPress = this.handleKeyPress.bind(this);
  }

  handleTermChange(event) {
    this.setState({searchTerm: event.target.value});
    let SearchTerm = event.target.value;
    localStorage.setItem("SearchTerm", SearchTerm);
  }

    handleKeyPress(event){
      console.log(event);
     if(event.key === 'Enter') {
      this.props.onSearch(this.state.searchTerm);
   }
 }


  search() {
    this.props.onSearch(this.state.searchTerm);
  }

  render() {
    return (
      <div className="SearchBar">
      <input placeholder="Enter A Song, Album, or Artist" onChange={this.handleTermChange} onKeyPress={this.handleKeyPress} id="field" />
      <a id="btn" onClick={this.search}  >SEARCH</a>
      </div>
    )
  }
}

export default SearchBar;

