const prompt = require('prompt-sync')({sigint: true});

const hat = '^';
const hole = 'O';
const fieldCharacter = '░';
const pathCharacter = '*';

var diagonalJumps = 2;
var winY;
var winX;
var holeY;
var holeX;
var currentXHole;
var currentYHole;
var currentHoleLocation
var arrOfHolesCoordinates = [];
var gameOver = false;

class Field {
    constructor(arrOfField) {
    this.field = arrOfField;
    this.playerInitPos = arrOfField[0][0];
    this.x = 0;
    this.y = 0;
  }

  print() {
    for (let i = 0; i < (this.field).length; i++) {
        console.log((this.field[i]).join(''));
    };
  }

    testLocation() {
      if((this.x) < 0 || (this.y) < 0 || (this.x) > ((this.field).length - 1) || (this.y) > ((this.field[0]).length - 1)) {
        console.log('You left out of the map! O_O!');
        gameOver = true;
      }
      if ((this.field)[winY][winX] !== '^') {
        console.log('You found your hat! Congrats!');
        gameOver = true;
      };
      for (let count = 0; count < arrOfHolesCoordinates.length; count++) {
        currentHoleLocation = arrOfHolesCoordinates[count];
        currentYHole = currentHoleLocation[0];
        currentXHole = currentHoleLocation[1];
        if ((this.field[currentYHole][currentXHole] !== hole)) {
          console.log('Fire into the hole! You died!');
          gameOver = true;
        }
      }
  }

    whereIsEverything() {
      for (let i = 0; i < (this.field).length; i++) {
        for (let j = 0; j < (this.field)[i].length; j++) {
          if ((this.field)[i][j] === hat) {
            winY = i;
            winX = j;
          };
        };
      }
      for (let i = 0; i < (this.field).length; i++) {
        for (let j = 0; j < (this.field)[i].length; j++) {
          if ((this.field)[i][j] === hole) {
            holeY = i;
            holeX = j;
            arrOfHolesCoordinates.push([holeY, holeX]);
          }
        }
      }
  }

    promptAndPlay() {
        let newPlayerPos = prompt('Which way do we go?');
        if (newPlayerPos === 'r') {
            console.clear();
            (this.x)++;
            this.field[this.y][this.x] = pathCharacter;
        } else if (newPlayerPos === 'd') {
            console.clear();
            (this.y)++;
            if ((this.y) === ((this.field).length)) {
              console.log('You left out of the map! End of game!');
              gameOver = true;
              process.exit();
            }
            this.field[this.y][this.x] = pathCharacter;
        } else if (newPlayerPos === 'l') {
            console.clear();
            (this.x)--;
            this.field[this.y][this.x] = pathCharacter;
        } else if (newPlayerPos === 'u') {
            console.clear();
            (this.y)--;
            this.field[this.y][this.x] = pathCharacter;
        } else if (newPlayerPos === 'jdl') {
          if (diagonalJumps > 0) {
            console.clear();
            (this.y)++;
            (this.x)--;
            this.field[this.y][this.x] = pathCharacter;
            diagonalJumps--;
          } else {
            console.log('You already used all diagonal movements!');
          };
        } else if (newPlayerPos === 'jdr') {
            if (diagonalJumps > 0) {
              console.clear();
              (this.y)++;
              (this.x)++;
              this.field[this.y][this.x] = pathCharacter;
              diagonalJumps--;
            } else {
              console.log('You already used all diagonal movements!');
            };   
        } else if (newPlayerPos === 'jur') {
          if (diagonalJumps > 0) {
            console.clear();
            (this.y)--;
            (this.x)++;
            this.field[this.y][this.x] = pathCharacter;
            diagonalJumps--;
          } else {
            console.log('You already used all diagonal movements!');
          };
        } else if (newPlayerPos === 'jul') {
          if (diagonalJumps > 0) {
            console.clear();
            (this.y)--;
            (this.x)--;
            this.field[this.y][this.x] = pathCharacter;
            diagonalJumps--;
          } else {
            console.log('You already used all diagonal movements!');
          };
        };
      }
    

    static generateField(l, h) {
      //First, we define a const which will be 2d Array
      var width = l;
      var height = h;

      const generateEmptyArr = (x, y) => {
        let TwoDimArr = new Array(y);
        for (let i = 0; i < TwoDimArr.length; i++) {
            TwoDimArr[i] = new Array(x);
        };
        return TwoDimArr;
      };

      const newArrOfUndefined = generateEmptyArr(width, height);

      //Now, to populate the entire 2d array with the field char '░'

      function populateArrWithFields(arr) {
        for (let i = 0; i < arr.length; i++) {
          for (let j = 0; j < arr[i].length; j++) {
            arr[i][j] = '░';
          };
        };
        return arr;
      };

      const newGeneratedField = populateArrWithFields(newArrOfUndefined);

      //console.log(newGeneratedField);

      //Now, to position the hat on a random spot which isn't the one where we start

      var thereIsAHat = false;
      var yPosHat;
      var xPosHat;

      function generateHatPosition(v1, v2) {
        while (!thereIsAHat) {
          yPosHat = Math.floor(Math.random() * v1);
          xPosHat = Math.floor(Math.random() * v2);
          if (yPosHat == 0 && xPosHat == 0) {
            thereIsAHat = false;
          } else {
            thereIsAHat = true;
            //console.log('Height position: ' + yPosHat);
            //console.log('Width position: ' + xPosHat);
          };
        };
        
        return [yPosHat, xPosHat];
      }

      //Here, the hatPosition variable is a array that represents the coordinates of the hat position. After the attribution to this var just down below, its coordinates are used to position the '^' char exactly where it's supposed to be at the 'newGeneratedField' 2d array:

      const hatPosition = generateHatPosition(height, width);

      newGeneratedField[hatPosition[0]][hatPosition[1]] = '^';

      //console.log(newGeneratedField);

      //Now, the '*', which represents where the user is at the current moment, must start always at the [0][0] position:
      newGeneratedField[0][0] = '*';

      //Now, to populate the field with holes...
      var mayThereBeHoles = false;

      //A function to generate holes randomly, but still, specially, not putting the player in position which he'd lose immediately

      function generateHoles(x, y, field) {
        let numberOfHoles = Math.floor(0.4 * (x * y));
        while (!mayThereBeHoles) {
          let xPosHole = Math.floor(Math.random() * x);
          let yPosHole = Math.floor(Math.random() * y);
          if (field[yPosHole][xPosHole] === '░') {
            field[yPosHole][xPosHole] = 'O';
            numberOfHoles--;
            if (numberOfHoles === 0) {
              if (field[0][1] == 'O' && field[1][0] == 'O') {
                mayThereBeHoles = false;
                numberOfHoles = Math.floor(0.3 * (x * y));
              } else if (field[0][2] == 'O' && field[1][0] == 'O'&& field[1][1] == 'O') {
                mayThereBeHoles = false;
                numberOfHoles = Math.floor(0.3 * (x * y));
              } else if (field[2][0] == 'O' && field[1][1] == 'O'&& field[0][1] == 'O') {
                mayThereBeHoles = false;
                numberOfHoles = Math.floor(0.3 * (x * y));
              } else if (field[2][0] == 'O' && field[2][1] == 'O'&& field[0][2] == 'O'&& field[1][2] == 'O') {
                mayThereBeHoles = false;
                numberOfHoles = Math.floor(0.3 * (x * y));
              } else {
                mayThereBeHoles = true;
                return field;
              };
            };
          } else {
            mayThereBeHoles = false;
          };
        };
      };

    var newCompleteField = generateHoles(width, height, newGeneratedField);

    return newCompleteField

  }
}

/*

const myField = new Field([
    ['*', '░', '░', '░', '░'],
    ['░', 'O', '░', 'O', '░'],
    ['░', '░', 'O', 'O', '░'],
    ['░', '░', '^', 'O', '░'],
    ['░', '░', '░', '░', '░'],
  ]);

*/

//Finally, the game is partially functioning...
var randomWidth = Math.max((Math.floor(Math.random() * 10)), 3);
var randomHeight = Math.max((Math.floor(Math.random() * 10)), 3);

const myOtherField = Field.generateField(randomWidth, randomHeight);

const newOfficialField = new Field(myOtherField);

function playGame() {
    newOfficialField.print();
    newOfficialField.whereIsEverything();
    setTimeout(() => {
      while(!gameOver) {
        newOfficialField.promptAndPlay();
        newOfficialField.testLocation();
        newOfficialField.print();
      };
    }, 1000);

};

playGame();
