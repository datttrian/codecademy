const team = {
    _players: [
      { firstName: "Lebron", lastName: "James", age: 36 },
      { firstName: "Kobe", lastName: "Bryant", age: 41 },
      { firstName: "Michael", lastName: "Jordan", age: 57 },
    ],
    _games: [
      { opponent: "Warriors", teamPoints: 120, opponentPoints: 115 },
      { opponent: "Celtics", teamPoints: 108, opponentPoints: 102 },
      { opponent: "Lakers", teamPoints: 114, opponentPoints: 111 },
    ],
    get players() {
      return this._players;
    },
    get games() {
      return this._games;
    },
    addPlayer(newFirstName, newLastName, newAge) {
      let newPlayer = {
        firstName: newFirstName,
        lastName: newLastName,
        age: newAge,
      };
      this._players.push(newPlayer);
    },
    addGame(newOpponent, newTeamPoints, newOpponentPoints) {
      let newGame = {
        opponent: newOpponent,
        teamPoints: newTeamPoints,
        opponentPoints: newOpponentPoints,
      };
      this._games.push(newGame);
    },
  };
  
  team.addPlayer("Bugs", "Bunny", 76);
  console.log(team.players);
  
  team.addGame("Titans", 100, 98);
  console.log(team.games);