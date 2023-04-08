import React from "react";
// Add import statement below
import { useSelector } from "react-redux";
import { selectMatchedIDs } from "../board/boardSlice.js";

export const Score = () => {
  // Add selected data variable below
  const cardsMatched = useSelector(selectMatchedIDs);

  return (
    // implement selected data inside <div>
    <div className="score-container">Matched: {cardsMatched.length}</div>
  );
};
