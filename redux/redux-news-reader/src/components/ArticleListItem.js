import React from "react";

export default function ArticleListItem({ article }) {
  return (
    <button key={article.id} className="article-container">
      <img src={article.image} alt="" className="article-image" />
      <div className="article-content-container">
        <h3 className="article-title">{article.title}</h3>
        <p className="article-preview">{article.preview}</p>
      </div>
    </button>
  );
}
