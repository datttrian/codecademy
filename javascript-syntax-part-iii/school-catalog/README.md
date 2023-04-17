# School Catalogue

Let’s put your knowledge of classes to the test by creating a digital
school catalog for the New York City Department of Education. The
Department of Education wants the catalog to hold quick reference
material for each school in the city.

We need to create classes for primary and high schools. Because these
classes share properties and methods, each will inherit from a parent
`School` class. Our parent and three child classes have the following
properties, getters, setters, and methods:

#### School

- **Properties**: `name` (string), `level` (one of three strings:
  `'primary'`, `'middle'`, or `'high'`), and `numberOfStudents` (number)
- **Getters**: all properties have getters
- **Setters**: the `numberOfStudents` property has a setter
- **Methods**: `.quickFacts()` and `.pickSubstituteTeacher()` (this is a
  static method)

#### Primary

- Includes everything in the `School` class, plus one additional
  property
- **Properties**: `pickupPolicy` (string)

#### Middle

- Does not include any additional properties or methods

#### High

- Includes everything in the `School` class, plus one additional
  property
- **Properties**: `sportsTeams` (array of strings)

If you’re looking for a challenge, create the `constructor()` and
getters for the four classes above. Then, use the setter and methods
specifications in steps five, six, and seven to finish the project.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.



Mark the tasks as complete by checking them off

## Create ParentSchool Class

1\.

Let’s start by making a parent class for `Primary`, `Middle`, and `High`
classes. Create an empty class named `School`.

2\.

Inside the `School` class, create an empty `constructor()` that accepts
three parameters. The names of these parameters should match the
properties listed in the narrative above.

3\.

Inside the `constructor()`, set the `School` properties. Prepend all of
the properties with an underscore (`_`).

4\.

Create getters for the `name`, `level`, and `numberOfStudents`
properties. Each getter should return the value saved to the property.

5\.

Create a setter for `numberOfStudents`. The method should first check if
the input (`newNumberOfStudents`) is a number.

If it is a number, then set the `numberOfStudents` property. If not,
log, `'Invalid input: numberOfStudents must be set to a Number.'`

6\.

Under your getters, create a method named `quickFacts` that logs the
following string to the console:

``` js
SCHOOL NAME educates NUMBER OF STUDENTS students at the LEVEL school level.
```

In place of `SCHOOL NAME`, substitute an instance’s `name` value. In
place of `NUMBER OF STUDENTS`, substitute an instance’s
`numberOfStudents` value. In place of `LEVEL`, substitute an instance’s
`level` value.

7\.

Under `.quickFacts()`, create a static method named
`pickSubstituteTeacher`. This method will receive one parameter, named
`substituteTeachers`. The `substituteTeachers` parameter will take an
array of strings.

Inside the method, randomly generate a whole number between `0` and one
less than the length of the `substituteTeachers` array. Use this number
to access and return the substitute teacher at that randomly generated
index.

## Create PrimarySchool Class

8\.

Next, we’ll build a `PrimarySchool` class that extends `School`. If you
feel comfortable building the `PrimarySchool` class on your own, give it
a shot. If not, use the steps below to help you along the way.

Whether you want to follow the steps or not, it’s important to note, the
`PrimarySchool` class only has one additional property, `pickupPolicy`.

Create an empty `PrimarySchool` class that extends `School`.

9\.

Inside the `PrimarySchool` class, create a `constructor()` that accepts
three arguments.

10\.

Call `super` on the first line of the `PrimarySchool`’s `constructor()`.
Pass it any arguments that the parent `constructor()` uses.

Since this is the `PrimarySchool` class, pass `'primary'` as the
argument for the `level` parameter in the parent constructor.

11\.

Use the remaining argument to set the `pickupPolicy` property.

12\.

Since our `PrimarySchool` class inherits `Schools`’s properties and
getters, we only need to create one new getter in the `PrimarySchool`
class. Add this getter to the `PrimarySchool` class. Each getter should
return the value saved to that property.

## Create HighSchool Class

13\.

In this task, you will create a `HighSchool` class that extends the
`School` class. In addition to the properties, getters, and methods in
`School`, the `HighSchool` includes the following:

- **Properties**: `sportsTeams` (array of strings)
- **Getters**: A getter for the `sportsTeams` array. The getter should
  log all of the sports to the console.

Take a look at the Hint for step-by-step instructions.

## Instances of PrimarySchool and HighSchool

14\.

Create a `PrimarySchool` instance with the following properties:

- Name: `'Lorraine Hansbury'`
- Number of Students: `514`
- Pickup Policy:
  `'Students must be picked up by a parent, guardian, or a family member over the age of 13.'`

Save the instance to a constant variable named `lorraineHansbury`.

15\.

Call `.quickFacts()` on the `lorraineHansbury` instance.

16\.

The principal of Lorraine Hansbury needs a substitute teacher for the
day.

Call `.pickSubstituteTeacher()` on `School`, and pass the following
array as an argument:

``` js
['Jamal Crawford', 'Lou Williams', 'J. R. Smith', 'James Harden', 'Jason Terry', 'Manu Ginobli'];
```

17\.

Create a `HighSchool` instance with the following properties:

- Name: `'Al E. Smith'`
- Number of Students: `415`
- Sports Teams:
  `['Baseball', 'Basketball', 'Volleyball', 'Track and Field']`

Save the instance to a constant variable named `alSmith`.

18\.

Get the value saved to the `sportsTeams` property in `alSmith`.

19\.

Nice work! If you’ve made it this far, you have a strong understanding
of class syntax and inheritance.

If you would like to continue working on this project, we have listed
some avenues to build on your progress.

- Create a middle school class
- Add more properties to each class (`averageTestScores`,
  `schoolOverview`, etc.)
- Create a class called `SchoolCatalog` that holds a collection of
  schools. Create an instance of `SchoolCatalog` for primary, middle,
  and high schools.

## [Solution](school-catalog.js)

``` javascript
class School {
  constructor(name, level, numberOfStudents) {
    this._name = name;
    this._level = level;
    this._numberOfStudents = numberOfStudents;
  }
  get name() {
    return this._name;
  }
  get level() {
    return this._level;
  }
  get numberOfStudents() {
    return this._numberOfStudents;
  }
  set numberOfStudents(val) {
    if (typeof val === 'nuber') {
      this._numberOfStudents = val;
    } else {
      console.log('Invalid input: numberOfStudents must be set to a Number.');
    }
  }
  quickFacts() {
    console.log(`${this._name} educates ${this._numberOfStudents} at the ${this._level} school level.`);
  }
  static pickSubstituteTeacher(substituteTeachers) {
    const random = Math.floor(Math.random() * (substituteTeachers.length));
    return substituteTeachers[random];
  }
};

class PrimarySchool extends School {
  constructor(name, numberOfStudents, pickupPolicy) {
    super(name, 'primary', numberOfStudents);
    this._pickupPolicy = pickupPolicy;
  }
  get pickupPolicy() {
    return this._pickupPolicy;
  }
};

class MiddleSchool extends School {
  constructor(name, numberOfStudents) {
    super(name, numberOfStudents);
  }
};

class HighSchool extends School {
  constructor(name, numberOfStudents, sportsTeams) {
    super(name, 'high', numberOfStudents);
    this._sportsTeams = sportsTeams;
  }
  get sportsTeams() {
    console.log(this._sportsTeams);
    return (this._sportsTeams);
  }
};

const lorraineHansbury = new PrimarySchool('Lorrain Hansbury', 514, 'Students myst be picked up by a parent, guardian, or a family member over the age of 13.');
lorraineHansbury.quickFacts();
School.pickSubstituteTeacher(['Jamal Crawford', 'Lou Williams', 'J. R. Smith', 'James Harden', 'Jason Terry', 'Manu Ginobli']);
const alSmith = new HighSchool('Al E. Smith', 415, ['Baseball', 'Basketball', 'Volleyball', 'Track and Field']);
alSmith.sportsTeams;
```

    ## Lorrain Hansbury educates 514 at the primary school level.
    ## [ 'Baseball', 'Basketball', 'Volleyball', 'Track and Field' ]

