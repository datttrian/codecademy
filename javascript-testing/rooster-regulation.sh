#!/bin/bash
project_name='rooster-regulation'
rm -rf $project_name 
mkdir $project_name  && cd $project_name
npm init -y
npm install mocha -D
cat << 'EOF' > package.json
{
  "name": "rooster-regulation",
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
// Define a rooster
Rooster = {};

// Return a morning rooster call
Rooster.announceDawn = () => {
  return 'moo!';
}

// Return hour as string
// Throws Error if hour is not between 0 and 23 inclusive
Rooster.timeAtDawn = (hour) => {
  if (hour < 0 || hour > 23) {
    throw new RangeError;
  } else {
    return hour.toString();
  };
}

module.exports = Rooster;
EOF
mkdir test
cat << 'EOF' > test/index_test.js
const assert = require('assert');
const Rooster = require('../index');

describe('Rooster', () => {
    describe('.announceDawn', () => {
        it('returns a rooster call', () => {
            const expected = 'moo!';
            const result = Rooster.announceDawn();
            assert.equal(expected, result)
        })
    })
    describe('.timeAtDawn', () => {
        it('returns its argument as a string', () => {
            const expected = '8'
            const result = Rooster.timeAtDawn(8);

            assert.strictEqual(expected, result)
        })
        it('throws an error if passed a number less than 0', () => {
            assert.throws(
                () => {
                    Rooster.timeAtDawn(-1);
                },
                RangeError
            );

        })

        it('throws an error if passed a number greater than 23', () => {
            assert.throws(
                () => {
                    Rooster.timeAtDawn(25);
                },
                RangeError
            );
        });
    });
});
EOF
npm test