import "./App.css";
import React from "react";
import { Score } from "./features/score/Score.js";
import { Board } from "./features/board/Board.js";
// Add import statements below
import { useDispatch } from "react-redux";
import { setBoard, resetCards } from "./features/board/boardSlice.js";

const App = () => {
  // Add dispatch variable below
  const dispatch = useDispatch();

  const startGameHandler = () => {
    // Add action dispatch below
    dispatch(setBoard());
  };

  const tryAgainHandler = () => {
    // Add action dispatch below
    dispatch(resetCards());
  };

  return (
    <div className="App">
      <Score />
      <Board />
      <footer className="footer">
        <button onClick={startGameHandler} className="start-button">
          Start Game
        </button>
        <button onClick={tryAgainHandler} className="try-new-pair-button">
          Try New Pair
        </button>
      </footer>
    </div>
  );
};

export default App;
