# Challenge Project: Mysterious Organism

#### Overview

This project is slightly different than others you have encountered thus
far on Codecademy. Instead of a step-by-step tutorial, this project
contains a series of open-ended requirements which describe the project
you’ll be building. There are many possible ways to correctly fulfill
all of these requirements, and you should expect to use the internet,
Codecademy, and other resources when you encounter a problem that you
cannot easily solve.

#### Project Goals

Context: You’re part of a research team that has found a new mysterious
organism at the bottom of the ocean near hydrothermal vents. Your team
names the organism, *Pila aequor* (*P. aequor*), and finds that it is
only comprised of 15 DNA bases. The small DNA samples and frequency at
which it mutates due to the hydrothermal vents make *P. aequor* an
interesting specimen to study. However, *P. aequor* cannot survive above
sea level and locating *P. aequor* in the deep sea is difficult and
expensive. Your job is to create objects that simulate the DNA of *P.
aequor* for your research team to study.

As you progress through the steps, use the terminal and `console.log()`
statements to check the output of your loops and functions.

#### Setup Instructions

If you choose to do this project on your computer instead of Codecademy,
you can download what you’ll need by clicking the “Download” button
below. You’ll need to open and work in **main.js** in a text editor. To
edit **main.js**, use your text editor of choice. If you need a
recommendation or help to install an editor, we recommend looking into
our <a href="https://www.codecademy.com/articles/visual-studio-code"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">article about setting up a text editor for web
development</a> (Follow along until you get to the section: “Practice:
Let’s Make a Project”). To run **main.js** on your computer, you will
need to install Node.js. If you need help installing Node.js, read our
<a href="https://www.codecademy.com/articles/setting-up-node-locally"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">article on installing Node</a>.

Download

### Instructions

Mark the tasks as complete by checking them off

## Prerequisites

1\.

In order to complete this project, you should have completed the first
few sections of
<a href="https://www.codecademy.com/courses/introduction-to-javascript"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Introduction to JavaScript</a> (through Learn
JavaScript: Objects).

## Project Requirements

2\.

Look over the starter code. There are two helper functions:
`returnRandBase()` and `mockUpStrand()`.

DNA is comprised of four bases (**A**denine, **T**hymine, **C**ytosine,
and **G**uanine). When `returnRandBase()` is called, it will randomly
select a base and return the base (`'A'`,`'T'`,`'C'`, or `'G'`).

`mockUpStrand()` is used to generate an array containing 15 bases to
represent a single DNA strand with 15 bases.

You’ll use these helper functions later to create your objects that
represent *P. aequor*.

3\.

Since you need to create multiple objects, create a factory function
`pAequorFactory()` that has two parameters:

- The first parameter is a number (no two organisms should have the same
  number).
- The second parameter is an array of 15 DNA bases.

`pAequorFactory()` should return an object that contains the properties
`specimenNum` and `dna` that correspond to the parameters provided.

You’ll also add more methods to this returned object in the later steps.

4\.

Your team wants you to simulate *P. aequor*‘s high rate of mutation
(change in its DNA).

To simulate a mutation, in `pAequorFactory()`’s returned object, add the
method `.mutate()`.

`.mutate()` is responsible for randomly selecting a base in the object’s
`dna` property and changing the current base to a different base. Then
`.mutate()` will return the object’s `dna`.

For example, if the randomly selected base is the 1st base and it is
`'A'`, the base must be changed to `'T'`, `'C'`, or `'G'`. But it cannot
be `'A'` again.

5\.

Your research team wants to be able to compare the DNA sequences of
different *P. aequor*. You’ll have to add a new method (`.compareDNA()`)
to the returned object of the factory function.

`.compareDNA()` has one parameter, another `pAequor` object.

The behavior of `.compareDNA()` is to compare the current `pAequor`’s
`.dna` with the passed in `pAequor`’s `.dna` and compute how many bases
are identical and in the same locations. `.compareDNA()` does not return
anything, but prints a message that states the percentage of DNA the two
objects have in common — use the `.specimenNum` to identify which
`pAequor` objects are being compared.

For example:

``` js
ex1 = ['A', 'C', 'T', 'G']
ex2 = ['C', 'A', 'T', 'T']
```

`ex1` and `ex2` only have the 3rd element in common (`'T'`) and
therefore, have 25% (1/4) of their DNA in common. The resulting message
would read something along the lines of:
`specimen #1 and specimen #2 have 25% DNA in common`.

6\.

*P. aequor* have a likelier chance of survival if their DNA is made up
of at least 60% `'C'` or `'G'` bases.

In the returned object of `pAequorFactory()`, add another method
`.willLikelySurvive()`.

`.willLikelySurvive()` returns `true` if the object’s `.dna` array
contains at least 60% `'C'` or `'G'` bases. Otherwise,
`.willLikelySurvive()` returns false.

7\.

With the factory function set up, your team requests that you create 30
instances of `pAequor` that can survive in their natural environment.
Store these instances in an array for your team to study later.

## Project Extensions & Solution

8\.

Great work! Visit <a
href="https://discuss.codecademy.com/t/mysterious-organism-challenge-project-javascript/462376"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">our forums</a> to compare your project to
our sample solution code. You can also learn how to host your own
solution on GitHub so you can share it with other learners! Your
solution might look different from ours, and that’s okay! There are
multiple ways to solve these projects, and you’ll learn more by seeing
others’ code.

9\.

If you’d like to challenge yourself further, you could consider the
following:

- Create a `.complementStrand()` method to the factory function’s object
  that returns the <a
  href="http://discoveringthegenome.org/discovering-genome/dna-sequencing/dna-complementary-base-pairing"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">complementary DNA strand</a>. The rules
  are that `'A'`s match with `'T'`s and vice versa. Also, `'C'`s match
  with `'G'`s and vice versa. (Check the hint for more details)
- Use the `.compareDNA()` to find the two most related instances of
  `pAequor`.

### [Solution](mysterious-organism.js)

``` javascript
// Returns a random DNA base
const returnRandBase = () => {
    const dnaBases = ["A", "T", "C", "G"];
    return dnaBases[Math.floor(Math.random() * 4)];
  };
  
  // Returns a random single stand of DNA containing 15 bases
  const mockUpStrand = () => {
    const newStrand = [];
    for (let i = 0; i < 15; i++) {
      newStrand.push(returnRandBase());
    }
    return newStrand;
  };
  
  const pAequorFactory = (specimanNum, dna) => {
    return {
      specimanNum,
      dna,
      mutate() {
        const randIndex = Math.floor(Math.random() * this.dna.length);
        let newBase = returnRandBase();
        while (this.dna[randIndex] === newBase) {
          newBase = returnRandBase();
        }
        this.dna[randIndex] = newBase;
        return this.dna;
      },
      compareDNA(otherOrg) {
        const similarities = this.dna.reduce((acc, curr, idx, arr) => {
          if (arr[idx] === otherOrg.dna[idx]) {
            return acc + 1;
          } else {
            return acc;
          }
        }, 0);
        const percentOfDNAshared = (similarities / this.dna.length) * 100;
        const percentageTo2Deci = percentOfDNAshared.toFixed(2);
        console.log(
          `${this.specimanNum} and ${otherOrg.specimanNum} have ${percentageTo2Deci}% DNA in common.`
        );
      },
      willLikelySurvive() {
        const cOrG = this.dna.filter((el) => el === "C" || el === "G");
        return cOrG.length / this.dna.length >= 0.6;
      },
    };
  };
  
  const survivingSpecimen = [];
  let idCounter = 1;
  
  while (survivingSpecimen.length < 30) {
    let newOrg = pAequorFactory(idCounter, mockUpStrand());
    if (newOrg.willLikelySurvive()) {
      survivingSpecimen.push(newOrg);
    }
    idCounter++;
  }
  
  console.log(survivingSpecimen);
```

    ## [
    ##   {
    ##     specimanNum: 1,
    ##     dna: [
    ##       'A', 'C', 'G', 'C',
    ##       'G', 'G', 'C', 'C',
    ##       'G', 'C', 'A', 'A',
    ##       'C', 'A', 'A'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 2,
    ##     dna: [
    ##       'G', 'A', 'G', 'C',
    ##       'C', 'G', 'G', 'C',
    ##       'T', 'C', 'A', 'C',
    ##       'G', 'C', 'A'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 5,
    ##     dna: [
    ##       'G', 'C', 'C', 'C',
    ##       'C', 'G', 'A', 'A',
    ##       'G', 'G', 'A', 'G',
    ##       'C', 'A', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 10,
    ##     dna: [
    ##       'T', 'A', 'G', 'T',
    ##       'G', 'T', 'C', 'A',
    ##       'C', 'T', 'C', 'C',
    ##       'C', 'C', 'G'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 14,
    ##     dna: [
    ##       'A', 'G', 'C', 'T',
    ##       'C', 'C', 'A', 'G',
    ##       'C', 'A', 'G', 'C',
    ##       'G', 'C', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 15,
    ##     dna: [
    ##       'C', 'G', 'T', 'G',
    ##       'G', 'G', 'A', 'C',
    ##       'T', 'C', 'G', 'G',
    ##       'G', 'G', 'T'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 16,
    ##     dna: [
    ##       'G', 'G', 'C', 'A',
    ##       'C', 'T', 'C', 'A',
    ##       'T', 'C', 'G', 'A',
    ##       'G', 'T', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 20,
    ##     dna: [
    ##       'A', 'G', 'G', 'A',
    ##       'G', 'C', 'T', 'G',
    ##       'G', 'G', 'T', 'G',
    ##       'A', 'T', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 24,
    ##     dna: [
    ##       'G', 'A', 'C', 'T',
    ##       'A', 'G', 'G', 'C',
    ##       'G', 'G', 'C', 'T',
    ##       'C', 'G', 'T'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 25,
    ##     dna: [
    ##       'G', 'C', 'G', 'G',
    ##       'A', 'G', 'C', 'T',
    ##       'C', 'T', 'C', 'A',
    ##       'T', 'G', 'G'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 26,
    ##     dna: [
    ##       'G', 'G', 'T', 'C',
    ##       'T', 'G', 'G', 'A',
    ##       'T', 'A', 'G', 'C',
    ##       'C', 'C', 'G'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 27,
    ##     dna: [
    ##       'C', 'G', 'T', 'C',
    ##       'A', 'C', 'T', 'C',
    ##       'C', 'A', 'G', 'C',
    ##       'C', 'T', 'A'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 28,
    ##     dna: [
    ##       'G', 'G', 'C', 'A',
    ##       'C', 'A', 'G', 'A',
    ##       'G', 'T', 'C', 'T',
    ##       'C', 'C', 'T'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 30,
    ##     dna: [
    ##       'C', 'G', 'G', 'G',
    ##       'C', 'G', 'A', 'G',
    ##       'T', 'C', 'A', 'A',
    ##       'C', 'A', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 37,
    ##     dna: [
    ##       'C', 'A', 'C', 'G',
    ##       'A', 'C', 'G', 'C',
    ##       'A', 'C', 'T', 'A',
    ##       'G', 'G', 'A'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 40,
    ##     dna: [
    ##       'T', 'C', 'G', 'C',
    ##       'T', 'G', 'T', 'C',
    ##       'C', 'A', 'G', 'A',
    ##       'T', 'C', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 45,
    ##     dna: [
    ##       'T', 'C', 'A', 'C',
    ##       'G', 'A', 'G', 'T',
    ##       'G', 'G', 'C', 'G',
    ##       'C', 'G', 'T'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 49,
    ##     dna: [
    ##       'C', 'C', 'A', 'G',
    ##       'T', 'C', 'G', 'A',
    ##       'C', 'C', 'A', 'T',
    ##       'C', 'A', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 52,
    ##     dna: [
    ##       'C', 'A', 'G', 'G',
    ##       'C', 'T', 'C', 'G',
    ##       'A', 'C', 'A', 'G',
    ##       'C', 'C', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 55,
    ##     dna: [
    ##       'C', 'A', 'A', 'A',
    ##       'G', 'C', 'T', 'C',
    ##       'G', 'G', 'G', 'T',
    ##       'G', 'A', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 58,
    ##     dna: [
    ##       'A', 'C', 'C', 'G',
    ##       'G', 'G', 'C', 'G',
    ##       'C', 'C', 'C', 'A',
    ##       'C', 'G', 'A'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 59,
    ##     dna: [
    ##       'A', 'G', 'A', 'C',
    ##       'C', 'G', 'G', 'C',
    ##       'G', 'C', 'T', 'A',
    ##       'G', 'A', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 62,
    ##     dna: [
    ##       'T', 'T', 'A', 'A',
    ##       'G', 'G', 'C', 'G',
    ##       'C', 'G', 'G', 'G',
    ##       'G', 'T', 'G'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 64,
    ##     dna: [
    ##       'A', 'T', 'C', 'C',
    ##       'T', 'C', 'A', 'A',
    ##       'G', 'C', 'G', 'G',
    ##       'C', 'G', 'G'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 65,
    ##     dna: [
    ##       'C', 'A', 'A', 'T',
    ##       'G', 'A', 'T', 'C',
    ##       'G', 'C', 'C', 'T',
    ##       'G', 'C', 'G'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 66,
    ##     dna: [
    ##       'C', 'T', 'A', 'C',
    ##       'C', 'G', 'A', 'T',
    ##       'C', 'G', 'G', 'C',
    ##       'A', 'C', 'G'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 67,
    ##     dna: [
    ##       'G', 'G', 'G', 'C',
    ##       'A', 'A', 'C', 'G',
    ##       'A', 'C', 'C', 'G',
    ##       'G', 'G', 'A'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 86,
    ##     dna: [
    ##       'C', 'C', 'T', 'C',
    ##       'G', 'G', 'C', 'C',
    ##       'C', 'C', 'T', 'A',
    ##       'T', 'C', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 89,
    ##     dna: [
    ##       'A', 'C', 'G', 'C',
    ##       'C', 'T', 'G', 'C',
    ##       'C', 'T', 'G', 'A',
    ##       'A', 'C', 'T'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   },
    ##   {
    ##     specimanNum: 91,
    ##     dna: [
    ##       'A', 'G', 'G', 'C',
    ##       'G', 'G', 'T', 'G',
    ##       'G', 'A', 'T', 'G',
    ##       'G', 'G', 'C'
    ##     ],
    ##     mutate: [Function: mutate],
    ##     compareDNA: [Function: compareDNA],
    ##     willLikelySurvive: [Function: willLikelySurvive]
    ##   }
    ## ]

