import './App.css';
import React from "react";
import ArticlePreviews from "../features/articlePreviews/ArticlePreviews";
import CurrentArticle from "../features/currentArticle/CurrentArticle";
import Comments from "../features/comments/Comments";

function App() {
  return (
    <div className="App">
      <header className="App-header" />
      <main>
        <div className="current-article">
          <CurrentArticle />
          <Comments />
        </div>
        <ArticlePreviews />
      </main>
    </div>
  );
}

export default App;
