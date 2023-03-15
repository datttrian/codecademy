//Setting my age for the human age
const myAge = 20;

//Creating a variable for the early years
let earlyYears = 2;

earlyYears = earlyYears * 10.5;
console.log(`Dog years for the first 2 years: ${earlyYears}.`);

//Setting a number since we accounted for the early years
let laterYears = myAge - 2;

//Calculating the later years in dog years
laterYears *= 4;
console.log(`Dog years for the years after that: ${laterYears}.`);

//Creating a variable to hold my human years in dog years
let myAgeInDogYears = earlyYears + laterYears;

//Creating a variable for my name
const myName = "datttrian".toLowerCase();

//Creating the console result in a readable way
console.log(
  `My name is ${myName}. I am ${myAge} years old in human years which is ${myAgeInDogYears} years old in dog years.`
);
