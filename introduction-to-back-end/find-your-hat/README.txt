# FIND YOUR HAT - CHALLENGE PROJECT

## INSTRUCTIONS FOR THE PLAYER

- This game is played through the terminal. You gotta have NodeJs installed in your PC. 

- When you start the game, you are the '*' at the screen and, to move anywhere, you gotta type the direction you want to move.
So, if you want to go left, type 'l'. If you want to go down, type 'd'. If you wish to go right, type 'r', and, finally,
if you want to up, type 'u'.

--- 👇 ATTENTION 👇 ---
- New movements added: Now, the game is capable of generating random fields, but some fields will be impossible of achieving victory if you play it enough times. So, I added the possibility to the user to make diagonal movements ONLY TWO TIMES in order to make the game win possible. So, if you want to JUMP to your upper left, type 'jul'. If you want to JUMP to the upper right direction, type 'jur'. If you wish to JUMP down left, type 'jdl'. Finally, if you have to JUMP down right, type 'jdr'. That's pretty much it.

- It's a simple and easy, I've done it mainly because of the challenge. There's only one map though (I still have to creat the static method .generateRandomField()).

- That's pretty much it.

- Challenge below 👇

## PROJECT GOALS

* In this project, you’ll be building an interactive terminal game. 
The scenario is that the player has lost their hat in a field full of holes, 
and they must navigate back to it without falling down one of the holes or 
stepping outside of the field.

---

## Prerequisites

1. Because the goal involves user input, make sure you read our guide
**(https://www.codecademy.com/article/getting-user-input-in-node-js)** 
on working with user input in Node.js. 
If you complete this project on our platform, 
you can test and run your code with the command 
node main.js in our terminal.

---

Watch this video to get a sense of what you’ll be building:
(The video [GIF] is in the folder).

---

## Project Requirements

2. Your project is centered on a Field class. This and the following tasks 
will describe how the class should function at a high level, and it will 
be up to you to figure out the implementation in code. As you go, test 
your code by creating instances of the class and calling its methods.

The Field constructor should take a two-dimensional array 
representing the “field” itself. A field consists of a grid 
containing “holes” (O) and one “hat” (^). We use a neutral background 
character (░) to indicate the rest of the field itself. The player 
will begin in the upper-left of the field, and the player’s path 
is represented by *.

* Example: 

*░O
░O░
░^░

* Your class should take a single argument representing the field:

const myField = new Field([
  ['*', '░', 'O'],
  ['░', 'O', '░'],
  ['░', '^', '░'],
]);

---

3. Give your Field class a .print() method that prints 
the current state of the field. You can choose to format 
this however you want, but it will be much easier to play 
the game if you print out a string representation of the 
board instead of the raw array.

---

4. Your game should be playable by users. In order to facilitate this, 
build out the following behavior:

- When a user runs main.js, they should be prompted for input and be able to indicate which direction they’d like to “move”.
- After entering an instruction, the user should see a printed result of 
their current field map with the tiles they have visited marked with *. 
They should be prompted for their next move.

This should continue until the user either:

  1. Wins by finding their hat.
  2. Loses by landing on (and falling in) a hole.
  3. Attempts to move “outside” the field.

When any of the above occur, let the user know and end the game.

HINT: Think about breaking down the necessary functionality into helper methods. In our solution, we approached this problem by creating:
- Methods to test whether the current location results in win (user is on the hat) or a loss (user is on a hole or out-of-bounds).
- A method to handle asking and accepting user input, and updating the current location.
- A method to run the main game loop until the game is won or lost.

> To facilitate this, we also stored a horizontal and vertical player location on the class instance and initialize them in the constructor.

---

5. Add a .generateField() method to your Field class. 
This doesn’t need to be tied to a particular instance, 
so make it a static method of the class itself.

> This method should at least take arguments for height and width of the field, 
and it should return a randomized two-dimensional array representing the 
field with a hat and one or more holes. In our solution, we added a third 
percentage argument used to determine what percent of the field should be 
covered in holes.

HINT: As you build .generateField(), think about edge cases to avoid. 
What if the hat is placed at the same point as the player should start 
(field[0][0])?
---
