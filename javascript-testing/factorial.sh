#!/bin/bash
project_name='factorial'
rm -rf $project_name 
mkdir $project_name  && cd $project_name
npm init -y
npm install mocha -D
cat << 'EOF' > package.json
{
  "name": "factorial",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "mocha test/**/*_test.js"
  },
  "author": "",
  "license": "ISC",
  "devDependencies": {
    "mocha": "^10.2.0"
  }
}
EOF
cat << 'EOF' > index.js
const Calculate = {
 factorial(inputNum) {

  // If inputNum = 0 OR inputNum = 1, the factorial will return 1
if (inputNum === 0){
    return 1;
}

 for (var i = inputNum - 1; i >= 1; i--) {
    // We store the value of inputNum at each iteration
    inputNum *= i; 
  }
  return inputNum; 
 
}
}

module.exports = Calculate;
EOF
mkdir test
cat << 'EOF' > test/index_test.js
var assert = require("assert");
var Calculate =  require('../index.js')

describe('Calculate', () => {  
describe('factorial', () => {
   it('returns 120 when given 5', () => { 

      const inputNumber = 5;
      const expectedOutput = 120;

      const actual = Calculate.factorial(inputNumber)

      assert.equal(expectedOutput, actual);

     });
  
   it('returns the factorial of an input number', () => { 

      const inputNumber = 4;
      const expectedOutput = 24;

      const actual = Calculate.factorial(inputNumber)

      assert.equal(expectedOutput, actual,);

     });

//       //  edge case

  it('returns the 1 when given 0', () => {
      const  inputNumber = 0
      const expectedOutput = 1 

      const actual = Calculate.factorial(inputNumber);

      assert.equal(expectedOutput, actual);

    });
});
});
EOF
npm test