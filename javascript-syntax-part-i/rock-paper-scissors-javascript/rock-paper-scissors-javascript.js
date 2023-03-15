console.log("hi");

const getUserChoice = (userInput) => {
  userInput = userInput.toLowerCase();
  if (
    userInput === "rock" ||
    userInput === "paper" ||
    userInput === "scissors" ||
    userInput === "bomb"
  ) {
    return userInput;
  } else {
    console.log("This is not a valid entry.");
  }
};

const getComputerChoice = () => {
  let randomNum = Math.floor(Math.random() * 3);
  //console.log(randomNum);
  if (randomNum === 0) {
    return "rock";
  } else if (randomNum === 1) {
    return "paper";
  } else {
    return "scissors";
  }
};

const determineWinner = (userChoice, computerChoice) => {
  if (userChoice === computerChoice) {
    return "It's a tie!";
  }

  if (userChoice === "rock") {
    if (computerChoice === "paper") {
      return "The computer wins!";
    } else {
      return "You win!";
    }
  }

  if (userChoice === "paper") {
    if (computerChoice === "scissors") {
      return "The computer wins!";
    } else {
      return "You win!";
    }
  }

  if (userChoice === "scissors") {
    if (computerChoice === "rock") {
      return "The computer wins!";
    } else {
      return "You win!";
    }
  }

  if (userChoice === "bomb") {
    return "You've won in an explosive decision!";
  }
};

function playGame() {
  let userChoice = getUserChoice("scissors");
  let computerChoice = getComputerChoice();
  console.log(userChoice);
  console.log(computerChoice);
  console.log(determineWinner(userChoice, computerChoice));
}

playGame();
