# Introduction: JavaScript Syntax, Part III

In this unit, you will learn intermediate JavaScript concepts.

The goal of this unit is to understand intermediate JavaScript concepts,
such as classes and modules. Knowing these concepts will improve your
ability to write JavaScript programs and prepare you for creating web
applications.

After this unit, you will be able to:

- Create classes in JavaScript
- Implement JavaScript Modules
- Create JavaScripts errors and handle them

Learning is social. Whatever you’re working on, be sure to connect with
the Codecademy community in the
<a href="https://discuss.codecademy.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">forums</a>. Remember to check in with the
community regularly, including for things like asking for code reviews
on your project work and providing code reviews to others in the
<a href="https://discuss.codecademy.com/c/project/1833"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">projects category</a>, which can help to
reinforce what you’ve learned.

# Classes

## Introduction to Classes

JavaScript is an *object-oriented programming* (OOP) language we can use
to model real-world items. In this lesson, you will learn how to make
*classes*. Classes are a tool that developers use to quickly produce
similar objects.

Take, for example, an object representing a dog named `halley`. This
dog’s `name` (a key) is `"Halley"` (a value) and has a `behavior`
(another key) of `0` (another value). We create the `halley` object
below:

``` js
let halley = {
  _name: 'Halley',
  _behavior: 0,
 
  get name() {
    return this._name;
  },
 
  get behavior() {
    return this._behavior;
  },
 
  incrementBehavior() {
    this._behavior++;
  }
}
```

Now, imagine you own a dog daycare and want to create a catalog of all
the dogs who belong to the daycare. Instead of using the syntax above
for every dog that joins the daycare, we can create a `Dog` class that
serves as a template for creating new `Dog` objects. For each new dog,
you can provide a value for their name.

As you can see, classes are a great way to reduce duplicate code and
debugging time.

After we lay the foundation for classes in the first few exercises, we
will introduce inheritance and static methods — two features that will
make your code more efficient and meaningful.



**1.**

In the next exercise, you will learn about classes in greater detail.
Before you do, take a moment to study the class in **main.js**.

Spend some time identifying the similarities and differences between the
`Dog` class in **main.js** and the code we used to create our `halley`
object in the instructions above.

**2.**

Copy the class instantiation, method call, and `console.log()`
statements below into **main.js**.

``` js
const halley = new Dog('Halley');
console.log(halley.name); // Print name value to console
console.log(halley.behavior); // Print behavior value to console
halley.incrementBehavior(); // Add one to behavior
console.log(halley.name); // Print name value to console
console.log(halley.behavior); // Print behavior value to console
```

What do you expect to see when you run this code?



``` javascript
class Dog {
  constructor(name) {
    this._name = name;
    this._behavior = 0;
  }

  get name() {
    return this._name;
  }
  get behavior() {
    return this._behavior;
  }   

  incrementBehavior() {
    this._behavior ++;
  }
}

const halley = new Dog('Halley');
console.log(halley.name); // Print name value to console
console.log(halley.behavior); // Print behavior value to console
halley.incrementBehavior(); // Add one to behavior
console.log(halley.name); // Print name value to console
console.log(halley.behavior); // Print behavior value to console
```

    ## Halley
    ## 0
    ## Halley
    ## 1

## Constructor

In the last exercise, you created a class called `Dog`, and used it to
produce a `Dog` object.

Although you may see similarities between class and object syntax, there
is one important method that sets them apart. It’s called the
*constructor* method. JavaScript calls the `constructor()` method every
time it creates a new *instance* of a class.

``` js
class Dog {
  constructor(name) {
    this.name = name;
    this.behavior = 0;
  }
}
```

- `Dog` is the name of our class. By convention, we capitalize and
  CamelCase class names.
- JavaScript will invoke the `constructor()` method every time we create
  a new instance of our `Dog` class.
- This `constructor()` method accepts one argument, `name`.
- Inside of the `constructor()` method, we use the `this` keyword. In
  the context of a class, `this` refers to an instance of that class. In
  the `Dog` class, we use `this` to set the value of the Dog instance’s
  `name` property to the `name` argument.
- Under `this.name`, we create a property called `behavior`, which will
  keep track of the number of times a dog misbehaves. The `behavior`
  property is always initialized to zero.

In the next exercise, you will learn how to create `Dog` instances.



**1.**

Create an empty class named `Surgeon`.

**2.**

Inside the `Surgeon` class, create a `constructor()` method that accepts
two parameters: `name` and `department`.

**3.**

Inside the `Surgeon` `constructor()`, create `name` and `department`
properties and set them equal to your input parameters.



``` javascript
class Surgeon {
  constructor(name, department) {
    this.name = name;
    this.department = department;
  }
}
```

## Instance

Now, we’re ready to create class instances. An *instance* is an object
that contains the property names and methods of a class, but with unique
property values. Let’s look at our `Dog` class example.

``` js
class Dog {
  constructor(name) {
    this.name = name;
    this.behavior = 0;
  } 
}
 
const halley = new Dog('Halley'); // Create new Dog instance
console.log(halley.name); // Log the name value saved to halley
// Output: 'Halley'
```

Below our `Dog` class, we use the `new` keyword to create an instance of
our `Dog` class. Let’s consider the line of code step-by-step.

- We create a new variable named `halley` that will store an instance of
  our `Dog` class.
- We use the `new` keyword to generate a new instance of the `Dog`
  class. The `new` keyword calls the `constructor()`, runs the code
  inside of it, and then returns the new instance.
- We pass the `'Halley'` string to the `Dog` constructor, which sets the
  `name` property to `'Halley'`.
- Finally, we log the value saved to the `name` key in our `halley`
  object, which logs `'Halley'` to the console.

Now you know how to create instances. In the next exercise, you will
learn how to add getters, setters, and methods.



**1.**

Create an instance of the `Surgeon` class — set the `name` to
`'Francisco Romero'` and `department` to `'Cardiovascular'`.

Save the instance to a constant variable called `surgeonRomero`.

**2.**

Create an instance of the `Surgeon` class — set the `name` to
`'Ruth Jackson'` and `department` to `'Orthopedics'`.

Save the instance to a constant variable called `surgeonJackson`.



``` javascript
class Surgeon {
  constructor(name, department) {
    this.name = name;
    this.department = department;
  }
}

const surgeonRomero = new Surgeon('Francisco Romero', 'Cardiovascular');
const surgeonJackson = new Surgeon('Ruth Jackson', 'Orthopedics');
```

## Methods

At this point, we have a `Dog` class that spins up objects with `name`
and `behavior` properties. Below, we will add getters and a method to
bring our class to life.

Class method and getter syntax is the same as it is for objects **except
you can not include commas between methods**.

``` js
class Dog {
  constructor(name) {
    this._name = name;
    this._behavior = 0;
  }
 
  get name() {
    return this._name;
  }
 
  get behavior() {
    return this._behavior;
  }
 
  incrementBehavior() {
    this._behavior++;
  }
}
```

In the example above, we add getter methods for `name` and `behavior`.
Notice, we also prepended our property names with underscores (`_name`
and `_behavior`), which indicate these properties should not be accessed
directly. Under the getters, we add a method named
`.incrementBehavior()`. When you call `.incrementBehavior()` on a Dog
instance, it adds `1` to the `_behavior` property. Between each of our
methods, we did *not* include commas.



**1.**

In the `Surgeon` constructor, prepend the `name` and `department`
properties with an underscore (`_`).

**2.**

Inside of the `constructor()`, add a property named
`_remainingVacationDays` and set it equal to `20`.

**3.**

Under the `constructor()`, create a getter called `name` that returns
the value saved to `_name`.

**4.**

Under the `name` getter, create a getter called `department` that
returns the value saved to `_department`.

**5.**

Under the `department` getter, create a getter called
`remainingVacationDays` that returns the value saved to
`_remainingVacationDays`.

**6.**

Under the `remainingVacationDays` getter, create a method called
`takeVacationDays` that accepts one argument named `daysOff`.

Inside of the method, subtract `daysOff` from the number saved to
`_remainingVacationDays`. Set `_remainingVacationDays` to the result.



``` javascript
class Surgeon {
  constructor(name, department) {
    this._name = name;
    this._department = department;
    this._remainingVacationDays = 20;
  }
  
  get name() {
    return this._name;
  }
  
  get department() {
    return this._department;
  }
  
  get remainingVacationDays() {
    return this._remainingVacationDays;
  }
  
  takeVacationDays(daysOff) {
    this._remainingVacationDays -= daysOff;
  }
}

const surgeonRomero = new Surgeon('Francisco Romero', 'Cardiovascular');
const surgeonJackson = new Surgeon('Ruth Jackson', 'Orthopedics');
```

## Method Calls

Finally, let’s use our new methods to access and manipulate data from
`Dog` instances.

``` js
class Dog {
  constructor(name) {
    this._name = name;
    this._behavior = 0;
  }
 
  get name() {
    return this._name;
  }
 
  get behavior() {
    return this._behavior;
  }   
 
  incrementBehavior() {
    this._behavior++;
  }
}
 
const halley = new Dog('Halley');
```

In the example above, we create the `Dog` class, then create an
instance, and save it to a variable named `halley`.

The syntax for calling methods and getters on an instance is the same as
calling them on an object — append the instance with a period, then the
property or method name. For methods, you must also include opening and
closing parentheses.

Let’s take a moment to create two `Dog` instances and call our
`.incrementBehavior()` method on one of them.

``` js
let nikko = new Dog('Nikko'); // Create dog named Nikko
nikko.incrementBehavior(); // Add 1 to nikko instance's behavior
let bradford = new Dog('Bradford'); // Create dog name Bradford
console.log(nikko.behavior); // Logs 1 to the console
console.log(bradford.behavior); // Logs 0 to the console
```

In the example above, we create two new `Dog` instances, `nikko` and
`bradford`. Because we increment the behavior of our `nikko` instance,
but not `bradford`, accessing `nikko.behavior` returns `1` and accessing
`bradford.behavior` returns `0`.



**1.**

At the bottom of **main.js**, use `console.log()` to print the value
saved to the`name` property of the `surgeonRomero` object.

**2.**

Call `.takeVacationDays()` on `surgeonRomero`, with an input of `3`.

**3.**

After the call to `.takeVacationDays()`, use `console.log()` to print
the value saved to the `remainingVacationDays` property of the
`surgeonRomero` instance.



``` javascript
class Surgeon {
  constructor(name, department) {
    this._name = name;
    this._department = department;
    this._remainingVacationDays = 20;
  }
  
  get name() {
    return this._name;
  }
  
  get department() {
    return this._department;
  }
  
  get remainingVacationDays() {
    return this._remainingVacationDays;
  }
  
  takeVacationDays(daysOff) {
    this._remainingVacationDays -= daysOff;
  }
}

const surgeonRomero = new Surgeon('Francisco Romero', 'Cardiovascular');
const surgeonJackson = new Surgeon('Ruth Jackson', 'Orthopedics');

console.log(surgeonRomero.name);
surgeonRomero.takeVacationDays(3);
console.log(surgeonRomero.remainingVacationDays);
```

    ## Francisco Romero
    ## 17

## Inheritance I

Imagine our doggy daycare is so successful that we decide to expand the
business and open a kitty daycare. Before the daycare opens, we need to
create a `Cat` class so we can quickly generate `Cat` instances. We know
that the properties in our `Cat` class (`name`, `behavior`) are similar
to the properties in our `Dog` class, though, there will be some
differences, because of course, cats are not dogs.

Let’s say that our `Cat` class looks like this:

``` js
class Cat {
  constructor(name, usesLitter) {
    this._name = name;
    this._usesLitter = usesLitter;
    this._behavior = 0;
  }
 
  get name() {
    return this._name;
  }
 
  get usesLitter() {
    return this._usesLitter;
  }
 
  get behavior() {
    return this._behavior;
  }  
 
  incrementBehavior() {
    this._behavior++;
  }
}
```

In the example above, we create a `Cat` class. It shares a couple of
properties (`_name` and `_behavior`) and a method
(`.incrementBehavior()`) with the `Dog` class from earlier exercises.
The `Cat` class also contains one additional property (`_usesLitter`),
that holds a boolean value to indicate whether a cat can use their
litter box.

When multiple classes share properties or methods, they become
candidates for *inheritance* — a tool developers use to decrease the
amount of code they need to write.

With inheritance, you can create a *parent* class (also known as a
superclass) with properties and methods that multiple *child* classes
(also known as subclasses) share. The child classes inherit the
properties and methods from their parent class.

Let’s abstract the shared properties and methods from our `Cat` and
`Dog` classes into a parent class called `Animal`.

``` js
class Animal {
  constructor(name) {
    this._name = name;
    this._behavior = 0;
  }
 
  get name() {
    return this._name;
  }
 
  get behavior() {
    return this._behavior;
  }   
 
  incrementBehavior() {
    this._behavior++;
  }
} 
```

In the example above, the `Animal` class contains the properties and
methods that the `Cat` and `Dog` classes share (`name`, `behavior`,
`.incrementBehavior()`).

The diagram to the right shows the relationships we want to create
between the Animal, Cat, and Dog classes.



<img src="https://content.codecademy.com/courses/learn-javascript-classes/diagrams/inheritance_diagram.svg" alt="diagram: child classes Dog and Cat inherit from parent class Animal" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Inheritance II

In the last exercise, we created a parent class named `Animal` for two
child classes named `Cat` and `Dog`.

The `Animal` class below contains the shared properties and methods of
`Cat` and `Dog`.

``` js
class Animal {
  constructor(name) {
    this._name = name;
    this._behavior = 0;
  }
 
  get name() {
    return this._name;
  }
 
  get behavior() {
    return this._behavior;
  }   
 
  incrementBehavior() {
    this._behavior++;
  }
} 
```

The code below shows the `Cat` class that will inherit information from
the `Animal` class.

``` js
class Cat {
  constructor(name, usesLitter) {
    this._name = name;
    this._usesLitter = usesLitter;
    this._behavior = 0;
  }
 
  get name() {
    return this._name;
  }
 
  get behavior() {
    return this._behavior;
  }
 
  get usesLitter() {
    return this._usesLitter;
  }
 
  incrementBehavior() {
    this._behavior++;
  }
}
```

To the right, in **main.js**, you will put what you learned to practice
by creating a parent class named `HospitalEmployee`.



**1.**

In the next few exercises, you will create two subclasses (`Doctor` and
`Nurse`) from a parent class named `HospitalEmployee`. Below, we have
listed the properties and methods you will find in the `Doctor` and
`Nurse` classes.

#### Doctor

- Properties: `_name`, `_remainingVacationDays` (set to `20` inside the
  `constructor()`), `_insurance`
- Methods: `.takeVacationDays()`

#### Nurse

- Properties: `_name`, `_remainingVacationDays` (set to `20` inside
  `constructor()`), `_certifications`
- Methods: `.takeVacationDays()`, `.addCertification()`

In **main.js**, create a parent class named `HospitalEmployee`. Add a
constructor with `name` as an argument.

**2.**

Inside of the `constructor()`, set the instance’s `_name` to `name` and
`_remainingVacationDays` to `20`.

**3.**

Under the constructor, create getters for your `_name` and
`_remainingVacationDays` properties.

Inside the getter, return the property’s value.

**4.**

Under the getters, add a method called `takeVacationDays`.

This method should accept one argument, called `daysOff`.

Inside the method, subtract `daysOff` from `_remainingVacationDays`.
Save the result to `_remainingVacationDays`.



``` javascript
class HospitalEmployee {
  constructor(name) {
    this._name = name;
    this._remainingVacationDays = 20;
  }
  
  get name() {
    return this._name;
  }

  get remainingVacationDays() {
    return this._remainingVacationDays;
  }
  
  takeVacationDays(daysOff) {
    this._remainingVacationDays -= daysOff;
  }
}
```

## Inheritance III

We’ve abstracted the shared properties and methods of our `Cat` and
`Dog` classes into a parent class called `Animal` (See below).

``` js
class Animal {
  constructor(name) {
    this._name = name;
    this._behavior = 0;
  }
 
  get name() {
    return this._name;
  }
 
  get behavior() {
    return this._behavior;
  }
 
  incrementBehavior() {
    this._behavior++;
  }
} 
```

Now that we have these shared properties and methods in the parent
`Animal` class, we can extend them to the subclass, `Cat`.

``` js
class Cat extends Animal {
  constructor(name, usesLitter) {
    super(name);
    this._usesLitter = usesLitter;
  }
}
```

In the example above, we create a new class named `Cat` that extends the
`Animal` class. Let’s pay special attention to our new keywords:
`extends` and `super`.

- The `extends` keyword makes the methods of the animal class available
  inside the cat class.
- The constructor, called when you create a new `Cat` object, accepts
  two arguments, `name` and `usesLitter`.
- The `super` keyword calls the constructor of the parent class. In this
  case, `super(name)` passes the name argument of the `Cat` class to the
  constructor of the `Animal` class. When the `Animal` constructor runs,
  it sets `this._name = name;` for new `Cat` instances.
- `_usesLitter` is a new property that is unique to the `Cat` class, so
  we set it in the `Cat` constructor.

Notice, we call `super` on the first line of our `constructor()`, then
set the `usesLitter` property on the second line. In a `constructor()`,
you must always call the `super` method before you can use the `this`
keyword — if you do not, JavaScript will throw a reference error. To
avoid reference errors, it is best practice to call `super` on the first
line of subclass constructors.

Below, we create a new `Cat` instance and call its name with the same
syntax as we did with the `Dog` class:

``` js
const bryceCat = new Cat('Bryce', false); 
console.log(bryceCat._name); // output: Bryce
```

In the example above, we create a new instance the `Cat` class, named
`bryceCat`. We pass it `'Bryce'` and `false` for our `name` and
`usesLitter` arguments. When we call `console.log(bryceCat._name)` our
program prints, `Bryce`.

In the example above, we abandoned best practices by calling our `_name`
property directly. In the next exercise, we’ll address this by calling
an inherited getter method for our `name` property.



**1.**

In this exercise, you will begin to create the `Nurse` class as a child
of the `HospitalEmployee` class. Remember the `Nurse` class has the
following properties and methods:

#### Nurse

- Properties: `_name`, `_remainingVacationDays` (set to `20` inside
  `constructor()`), `_certifications`
- Methods: `.takeVacationDays()`, `.addCertification()`

Under `HospitalEmployee`, create an empty class named `Nurse` that
extends `HospitalEmployee`.

**2.**

Inside the `Nurse` class, create a `constructor()` that accepts two
arguments. Use the list of properties above to name these arguments.

Check the Hint if you need help.

**3.**

In the `Nurse` constructor, call the parent’s constructor method and
pass the appropriate value(s).

**4.**

Inside of the `Nurse` constructor, and under `super`, set
`_certifications`.

**5.**

Under the `Nurse` class, create a new instance of `Nurse` and save it to
a constant variable named `nurseOlynyk`. Pass in the following values
for each property:

- `name`: `'Olynyk'`
- `certifications`: `['Trauma', 'Pediatrics']`



``` javascript
class HospitalEmployee {
  constructor(name) {
    this._name = name;
    this._remainingVacationDays = 20;
  }
  
  get name() {
    return this._name;
  }
  
  get remainingVacationDays() {
    return this._remainingVacationDays;
  }
  
  takeVacationDays(daysOff) {
    this._remainingVacationDays -= daysOff;
  }
}

class Nurse extends HospitalEmployee {
  constructor(name, certifications) {
    super(name);
    this._certifications = certifications;
  }
}

const nurseOlynyk = new Nurse('Olynyk', ['Trauma', 'Pediatrics']);
```

## Inheritance IV

Now that we know how to create an object that inherits properties from a
parent class let’s turn our attention to methods.

When we call `extends` in a class declaration, all of the parent methods
are available to the child class.

Below, we extend our `Animal` class to a `Cat` subclass.

``` js
class Animal {
  constructor(name) {
    this._name = name;
    this._behavior = 0;
  }
 
  get name() {
    return this._name;
  }
 
  get behavior() {
    return this._behavior;
  }
 
  incrementBehavior() {
    this._behavior++;
  }
} 
 
 
class Cat extends Animal {
  constructor(name, usesLitter) {
    super(name);
    this._usesLitter = usesLitter;
  }
}
 
const bryceCat = new Cat('Bryce', false);
```

In the example above, our `Cat` class extends `Animal`. As a result, the
`Cat` class has access to the `Animal` getters and the
`.incrementBehavior()` method.

Also in the code above, we create a `Cat` instance named `bryceCat`.
Because `bryceCat` has access to the `name` getter, the code below logs
`'Bryce'` to the console.

``` js
console.log(bryceCat.name);
```

Since the `extends` keyword brings all of the parent’s getters and
methods into the child class, `bryceCat.name` accesses the `name` getter
and returns the value saved to the `name` property.

Now consider a more involved example and try to answer the following
question: What will the code below log to the console?

``` js
bryceCat.incrementBehavior(); // Call .incrementBehavior() on Cat instance 
console.log(bryceCat.behavior); // Log value saved to behavior
```

The correct answer is `1`. But why?

- The `Cat` class inherits the `_behavior` property, `behavior` getter,
  and the `.incrementBehavior()` method from the `Animal` class.
- When we created the `bryceCat` instance, the `Animal` constructor set
  the `_behavior` property to zero.
- The first line of code calls the inherited `.incrementBehavior()`
  method, which increases the `bryceCat` `_behavior` value from zero to
  one.
- The second line of code calls the `behavior` getter and logs the value
  saved to `_behavior` (`1`).



**1.**

Call `.takeVacationDays()` with an input of `5` on your `nurseOlynyk`
instance.

**2.**

Under the method call, log the value saved to the
`remainingVacationDays` property in `nurseOlynyk`.



``` javascript
class HospitalEmployee {
  constructor(name) {
    this._name = name;
    this._remainingVacationDays = 20;
  }
  
  get name() {
    return this._name;
  }
  
  get remainingVacationDays() {
    return this._remainingVacationDays;
  }
  
  takeVacationDays(daysOff) {
    this._remainingVacationDays -= daysOff;
  }
}

class Nurse extends HospitalEmployee {
 constructor(name, certifications) {
   super(name);
   this._certifications = certifications;
 } 
}

const nurseOlynyk = new Nurse('Olynyk', ['Trauma','Pediatrics']);

nurseOlynyk.takeVacationDays(5);
console.log(nurseOlynyk.remainingVacationDays);
```

    ## 15

## Inheritance V

In addition to the inherited features, child classes can contain their
own properties, getters, setters, and methods.

Below, we will add a `usesLitter` getter. The syntax for creating
getters, setters, and methods is the same as it is in any other class.

``` js
class Cat extends Animal {
  constructor(name, usesLitter) {
    super(name);
    this._usesLitter = usesLitter;
  }
 
  get usesLitter() {
    return this._usesLitter;
  }
}
```

In the example above, we create a `usesLitter` getter in the `Cat` class
that returns the value saved to `_usesLitter`.

Compare the `Cat` class above to the one we created without inheritance:

``` js
class Cat {
  constructor(name, usesLitter) {
    this._name = name;
    this._usesLitter = usesLitter;
    this._behavior = 0;
  }
 
  get name() {
    return this._name;
  }
 
  get usesLitter() {
    return this._usesLitter;
  }
 
  get behavior() {
    return this._behavior;
  }   
 
  incrementBehavior() {
    this._behavior++;
  }
}
```

We decreased the number of lines required to create the `Cat` class by
about half. Yes, it did require an extra class (`Animal`), making the
reduction in the size of our `Cat` class seem moot. However, the
benefits (time saved, readability, efficiency) of inheritance grow as
the number and size of your subclasses increase.

One benefit is that when you need to change a method or property that
multiple classes share, you can change the parent class, instead of each
subclass.

Before we move past inheritance, take a moment to see how we would
create an additional subclass, called `Dog`.

``` js
class Dog extends Animal {
  constructor(name) {
    super(name);
  }
}
```

This `Dog` class has access to the same properties, getters, setters,
and methods as the `Dog` class we made without inheritance, and is a
quarter the size.

Now that we’ve abstracted animal daycare features, it’s easy to see how
you can extend `Animal` to support other classes, like `Rabbit`, `Bird`
or even `Snake`.



**1.**

Use the properties and methods below to help you complete the tasks that
follow.

#### Nurse

- Properties: `_name`, `_remainingVacationDays` (set to `20` inside the
  `constructor()`), `_certifications`
- Methods: `.takeVacationDays()`, `.addCertification()`

Under the Nurse `constructor()`, add a getter that returns the value
saved to the Nurse instance’s `_certifications`.

**2.**

Add a method called `addCertification` under the `certifications`
getter.

The method should accept one input (`newCertification`). Inside the
method, use the <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/push?v=example"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">push</a> method to add the
`newCertification` value to the nurse’s `certifications` array.

**3.**

At the bottom of **main.js** call the `.addCertification()` method on
`nurseOlynyk` with a parameter of `'Genetics'`.

**4.**

Log the value saved to the `certifications` property of `nurseOlynyk`.



``` javascript
class HospitalEmployee {
  constructor(name) {
    this._name = name;
    this._remainingVacationDays = 20;
  }
  
  get name() {
    return this._name;
  }
  
  get remainingVacationDays() {
    return this._remainingVacationDays;
  }
  
  takeVacationDays(daysOff) {
    this._remainingVacationDays -= daysOff;
  }
}

class Nurse extends HospitalEmployee {
  constructor(name, certifications) {
    super(name);
    this._certifications = certifications;
  } 
  
  get certifications() {
    return this._certifications;
  }
  
  addCertification(newCertification) {
    this._certifications.push(newCertification);
  }
}

const nurseOlynyk = new Nurse('Olynyk', ['Trauma','Pediatrics']);
nurseOlynyk.takeVacationDays(5);
console.log(nurseOlynyk.remainingVacationDays);
nurseOlynyk.addCertification('Genetics');
console.log(nurseOlynyk.certifications);
```

    ## 15
    ## [ 'Trauma', 'Pediatrics', 'Genetics' ]

## Static Methods

Sometimes you will want a class to have methods that aren’t available in
individual instances, but that you can call directly from the class.

Take the `Date` class, for example — you can both create `Date`
instances to represent whatever date you want, and call *static*
methods, like `Date.now()` which returns the current date, directly from
the class. The `.now()` method is static, so you can call it directly
from the class, but not from an instance of the class.

Let’s see how to use the `static` keyword to create a static method
called `generateName` method in our `Animal` class:

``` js
class Animal {
  constructor(name) {
    this._name = name;
    this._behavior = 0;
  }
 
  static generateName() {
    const names = ['Angel', 'Spike', 'Buffy', 'Willow', 'Tara'];
    const randomNumber = Math.floor(Math.random()*5);
    return names[randomNumber];
  }
} 
```

In the example above, we create a `static` method called
`.generateName()` that returns a random name when it’s called. Because
of the `static` keyword, we can only access `.generateName()` by
appending it to the `Animal` class.

We call the `.generateName()` method with the following syntax:

``` js
console.log(Animal.generateName()); // returns a name
```

You cannot access the `.generateName()` method from instances of the
`Animal` class or instances of its subclasses (See below).

``` js
const tyson = new Animal('Tyson'); 
tyson.generateName(); // TypeError
```

The example above will result in an error, because you cannot call
static methods (`.generateName()`) on an instance (`tyson`).



**1.**

Inside of your `HospitalEmployee` class, create a static method called
`generatePassword`. When it’s called, this method should return a random
integer between zero and 10,000.



``` javascript
class HospitalEmployee {
  constructor(name) {
    this._name = name;
    this._remainingVacationDays = 20;
  }
  
  get name() {
    return this._name;
  }
  
  get remainingVacationDays() {
    return this._remainingVacationDays;
  }
  
  takeVacationDays(daysOff) {
    this._remainingVacationDays -= daysOff;
  }
  
  static generatePassword() {
    return Math.floor(Math.random() * 10000);
  }
}

class Nurse extends HospitalEmployee {
  constructor(name, certifications) {
    super(name);
    this._certifications = certifications;
  } 
  
  get certifications() {
    return this._certifications;
  }
  
  addCertification(newCertification) {
    this.certifications.push(newCertification);
  }
}

const nurseOlynyk = new Nurse('Olynyk', ['Trauma','Pediatrics']);
nurseOlynyk.takeVacationDays(5);
console.log(nurseOlynyk.remainingVacationDays);
nurseOlynyk.addCertification('Genetics');
console.log(nurseOlynyk.certifications);
```

    ## 15
    ## [ 'Trauma', 'Pediatrics', 'Genetics' ]

## Review: Classes

Way to go! Let’s review what you learned.

- *Classes* are templates for objects.
- Javascript calls a *constructor* method when we create a new instance
  of a class.
- *Inheritance* is when we create a parent class with properties and
  methods that we can extend to child classes.
- We use the `extends` keyword to create a subclass.
- The `super` keyword calls the `constructor()` of a parent class.
- Static methods are called on the class, but not on instances of the
  class.

In completing this lesson, you’ve taken one step closer to writing
efficient, production-level JavaScript. Good luck as you continue to
develop your skills and move into intermediate-level concepts.



If you want extra practice with inheritance, take some time to create a
`Doctor` class that inherits from `HospitalEmployee`. The properties and
methods for the `Doctor` class are listed below:

#### Doctor

- properties: `_name`, `_remainingVacationDays` (set to `20` inside
  `constructor()`), `_insurance`
- methods: `.takeVacationDays()`

# Build a Library

Congratulations, you’ve become head librarian at your local
Books-’N-Stuff, which is in dire need of your help. They’re still using
index cards to organize their content! Yikes.

But no matter, you know some JavaScript, so let’s get to work
modernizing your new digs.

Books-’N-Stuff carries three different types of media: books, CDs, and
movies. In this project you will create a parent class named `Media`
with three subclasses: `Book`, `Movie`, and `CD`. These three subclasses
have the following properties and methods:

#### Book

- **Properties**: `author` (string), `title` (string), `pages` (number),
  `isCheckedOut` (boolean, initially `false`), and `ratings` (array,
  initially empty).
- **Getters**: all properties have a getter
- **Methods**: `.getAverageRating()`, `.toggleCheckOutStatus()`, and
  `.addRating()`

#### Movie

- **Properties**: `director` (string), `title` (string), `runTime`
  (number), `isCheckedOut` (boolean, initially `false`), and `ratings`
  (array, initially empty)
- **Getters**: all properties have a getter
- **Methods**: `.getAverageRating()`, `.toggleCheckOutStatus()`, and
  `.addRating()`

#### CD

- **Properties**: `artist` (string), `title` (string), `isCheckedOut`
  (boolean, initially `false`), and `ratings` (array, initially empty),
  `songs` (array of strings)
- **Getters**: all properties have a getter
- **Methods**: `.getAverageRating()`, `.toggleCheckOutStatus()`, and
  `.addRating()`

If you’re looking for a challenge, try to create the four classes
without using the steps below.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.



Mark the tasks as complete by checking them off

## Library Classes

1\.

Let’s start by making a parent class for our `Book`, `CD`, and `Movie`
classes.

Create an empty class called `Media`.

2\.

Inside the `Media` class, create an empty `constructor()` method that
takes one parameter.

This argument will set the one property that is in all three subclasses
of `Media`, and does not have a default value.

3\.

Inside the constructor, set the values for `Media` properties that
`Book`, `CD`, and `Movie` share. Prepend all of the property names with
an underscore (`_`).

4\.

Create getters for the `title`, `isCheckedOut`, and `ratings`
properties. Each getter should return the value saved to the matching
property.

5\.

Create a setter for the `isCheckedOut` property.

6\.

Under your getters, create a method named `toggleCheckOutStatus` that
changes the value saved to the `_isCheckedOut` property.

If the value is `true`, then change it to `false`. If the value is
`false`, then change it to true.

7\.

Under `.toggleCheckOutStatus()`, create a method named
`getAverageRating`. Return the average value of the `ratings` array.

Use the <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/Reduce?v=example"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">reduce</a> method to find the sum of the
`ratings` array. Divide this sum by the length of the `ratings` array,
and return the result.

Take a look at the hint if you need help with the syntax for finding the
sum of the `ratings` array.

8\.

Let’s add a method named `addRating` that accepts one argument and uses
`.push()` to add it to the end of the `ratings` array.

9\.

Next, we’ll build a `Book` class that extends `Media`. If you feel
comfortable building the `Book` class on your own, give it a shot. If
not, use the steps below to help you along the way.

Whether you want to follow the steps or not, use the list of properties,
getters, and methods as a reference.

#### Book

- **Properties**: `author` (string), `title` (string), `pages` (number),
  `isCheckedOut` (boolean, initially false), and `ratings` (array,
  initially empty).
- **Getters**: all properties have a getter
- **Methods**: `.getAverageRating()`, `.toggleCheckOutStatus()`, and
  `.addRating()`

Create an empty `Book` class that extends `Media`.

10\.

Inside the `Book` class, create a constructor that accepts three
arguments. These arguments are used to set properties that do not have
default values.

11\.

Call `super` on the first line of the `Books`’s constructor method. Pass
it any arguments that the parent constructor uses.

12\.

Use the remaining arguments to set the `author` and `pages` properties
in `Book`.

13\.

Since our `Book` class inherits `Media`’s properties and getters, we
only need to create two new getters in the `Book` class.

Add two new getters to the `Book` class. Each getter should return the
value saved to its matching property.

14\.

Let’s see if you can create an entire `Movie` class using only the
property, getter, and method specifications below:

#### Movie

- **properties**: `director` (string), `title` (string), `runTime`
  (number), `isCheckedOut` (boolean, initially `false`), and `ratings`
  (array, initially empty)
- **getters**: all properties have a getter
- **methods**: `.getAverageRating()`, `.toggleCheckOutStatus()`, and
  `.addRating()`

Take a look at the Hint to see step-by-step instructions.

15\.

Create a `Book` instance with the following properties:

- Author: `'Bill Bryson'`
- Title: `'A Short History of Nearly Everything'`
- pages: `544`

Save the instance to a constant variable named `historyOfEverything`.

16\.

Call `.toggleCheckOutStatus()` on the `historyOfEverything` instance.

17\.

Log the value saved to the `isCheckedOut` property in the
`historyOfEverything` instance.

18\.

Call `.addRating()` three times on `historyOfEverything` with inputs of
`4`, `5`, and `5`.

19\.

Call `.getAverageRating()` on `historyOfEverything`. Log the result to
the console.

20\.

Create a `Movie` instance with the following properties:

- Director: `'Jan de Bont'`
- Title: `'Speed'`
- Runtime: `116`

Save the instance to a constant variable named `speed`.

21\.

Call `.toggleCheckOutStatus()` on the `speed` instance.

22\.

Log the value saved to the `isCheckedOut` property in the `speed`
instance.

23\.

Call `.addRating()` three times on `speed` with inputs of `1`, `1`, and
`5`.

24\.

Call `.getAverageRating()` on `speed`. Log the result to the console.

25\.

Nice work! If you’ve made it this far, you clearly have a strong
understanding of class syntax and inheritance.

If you would like to continue working on this project, we have listed
some avenues to build on your existing progress.

- Add more properties to each class (`movieCast`, `songTitles`, etc.)
- Create a `CD` class that extends `Media`.
- In `.addRating()`, make sure input is between `1` and `5`.
- Create a method called `shuffle` for the `CD` class. The method
  returns a randomly sorted array of all the songs in the `songs`
  property.
- Create class called `Catalog` that holds all of the `Media` items in
  our library.

## [Solution](build-a-library)

``` javascript
class Media {
    constructor(title) {
        this._title =  title;
        this._ratings = [];
        this._isCheckedOut = false;
       
    }
    // getters for title, isCheckedOut and ratings
    get title() {
        return this._title;
    }
    get isCheckedOut() {
        return this._isCheckedOut;
    }
    get ratings() {
        return this._ratings;
    }
    toggleCheckOutStatus() {
       this._isCheckedOut = !this._isCheckedOut;
    }
    addRating(inputValue) {
        if(inputValue <= 5) {
            this._ratings.push(inputValue);
        } else {
            console.log('Rating have to be under 5');
        }
        
    }
    // sum all rating numbers in array and divide it with the length of array
    getAverageRating() {
        let sum = this._ratings.reduce((accumulator, rating) => accumulator + rating, 0);  
        return  Math.floor(sum / this._ratings.length);
    }
    set isCheckedOut(checkIn) {
        this._isCheckedOut = checkIn;
    }
     
}
// book class
class Book extends Media {
    constructor(author, title, pages, genre ) {
        super(title);
        this._author = author;
        this._pages = pages;
        this._genre = genre;
    }
    get author() {
        return this._author;
    }
    get pages() {
        return this._pages;
    }
}
// movie class
class Movie extends Media {
    constructor(director, title, runTime, movieCast) {
        super(title);
        this._director = director;
        this._runTime = runTime;
        this._movieCast = movieCast;
    }
    get director() {
        return this._director;
    }
    get runTime() {
        return this._director;
    }
    get movieCast() {
        return this._movieCast;
    }
}
// cd class
class CD extends Media {
    constructor(artist, title, songs) {
        super(title);
        this._artist = artist;
        this._songs = songs;  
    }
    get artist() {
        return this._artist;
    }
    get songs() {
        return this._songs;
    }
    // get the randomly sorted array of all the songs in the songs property
    shuffle() {
       return this._songs.sort(() => Math.random() - 0.5);
    }
}
// ---------------------------------------------------start Book ----------------------------------
// instance Book
const historyOfEverything = new Book('Bill Bryson', 'A Short History of Nearly Everything', 544);
historyOfEverything.toggleCheckOutStatus();

console.log(historyOfEverything.isCheckedOut);
// add ratings 
historyOfEverything.addRating(4);
historyOfEverything.addRating(5);
historyOfEverything.addRating(5);

console.log(historyOfEverything.getAverageRating());
// ---------------------------------------------- Start Movie ---------------------------------------------
const speed = new Movie('Jan de Bont', 'Speed', 116, 'Chandler Bing');

speed.toggleCheckOutStatus();
console.log(speed.isCheckedOut);

speed.addRating(1);
speed.addRating(1);
speed.addRating(5);

console.log(speed.getAverageRating());
//------------------------------------------------Start Cd ----------------------------------------------------
const stateOfTrance = new CD('Armin Van buuren', 'State of Trance', ['first song', 'second song', 'theerd song', 'Another song', 'Last song']);

stateOfTrance.toggleCheckOutStatus();
console.log(stateOfTrance.isCheckedOut);

stateOfTrance.addRating(4);
stateOfTrance.addRating(5);
stateOfTrance.addRating(5);
// return shuffled songs
console.log(stateOfTrance.shuffle());
```

    ## true
    ## 4
    ## true
    ## 2
    ## true
    ## [
    ##   'Last song',
    ##   'Another song',
    ##   'first song',
    ##   'second song',
    ##   'theerd song'
    ## ]

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

## [Solution](school-catalog)

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

# Documentation: JavaScript Classes

## [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes)

In this resource, you will find the documentation for JavaScript
classes. This is helpful if you’d like a deeper and more comprehensive
understanding of the JavaScript class and subclass syntax and their
relationship with regard to methods, mix-ins, and instances.

Instead of trying to remember it all, use this documentation as a
readily available resource for syntax or implementation help!

# Implementing Modules using ES6 Syntax

Article on implementing modules in a browser’s runtime environment using
ES6 modules syntax.

## What are Modules?

*Modules* are reusable pieces of code in a file that can be exported and
then imported for use in another file. A *modular* program is one whose
components can be separated, used individually, and recombined to create
a complex system.

Consider the diagram below of an imaginary program written in a file
**my_app.js**:

<img
src="https://static-assets.codecademy.com/Courses/Learn-JavaScript/Modules/modular-program-diagram.svg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="diagram of a modular program. separate modules are combined to create a complex program" />

> *Note: The words “module” and “file” are often used interchangably*

Instead of having the entire program written within **my_app.js**, its
components are broken up into separate modules that each handle a
particular task. For example, the **database_logic.js** module may
contain code for storing and retrieving data from a database. Meanwhile,
the **date_formatting.js** module may contain functions designed to
easily convert date values from one format to another (a common headache
among programmers!).

This modular strategy is sometimes called *separation of concerns* and
is useful for a number of reasons. What do you think those reasons might
be?

Write down a few of your ideas before revealing the reasons below:

By isolating code into separate files, called modules, you can:

- find, fix, and debug code more easily.
- reuse and recycle defined logic in different parts of your
  application.
- keep information private and protected from other modules.
- prevent pollution of the global namespace and potential naming
  collisions, by cautiously selecting variables and behavior we load
  into a program.

Implementing modules in your program requires a small bit of management.
In the remainder of this article, we will be covering:

- How to use the ES6 `export` statement to *export* code from a file -
  meaning its functions and/or data can be used by other files/modules.
- How to use the ES6 `import` statement to *import* functions and/or
  data from another module.

## Implementations of Modules in JavaScript: Node.js vs ES6

Before we dive in, it should be noted that there are multiple ways of
implementing modules depending on the *runtime environment* in which
your code is executed. In JavaScript, there are two runtime environments
and each has a preferred module implementation:

1.  The <a href="https://nodejs.org/en/about/"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">Node</a> runtime environment and the
    `module.exports` and `require()` syntax.
2.  The browser’s runtime environment and the <a
    href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener">ES6</a> `import`/`export` syntax.

This article will focus on using the ES6 `import`/`export` syntax in a
browser’s runtime environment. For more information, you can read the
articles linked below.

- <a
  href="https://www.codecademy.com/courses/learn-intermediate-javascript/articles/implementing-modules-in-node"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">Implementing Modules In Node</a>
- <a
  href="https://www.codecademy.com/articles/introduction-to-javascript-runtime-environments"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">Introduction to Runtime Environments</a>

## A Brief History of JavaScript Modules in the Browser

In the early days of web development, JavaScript usage was fairly
minimal. A script here to add some interactivity to a page and a script
there to automate away some simple task. Nowadays, however, JavaScript
dominates the web and scripts have ballooned into large and cumbersome
behemoths. According to some studies, the average size of a website, in
terms of kilobytes of JavaScript data transferred, <a
href="https://httparchive.org/reports/state-of-javascript?start=earliest&amp;end=latest&amp;view=list"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">has grown over 5 times from 2010 to
2020</a>!

These stats aren’t meant to paint a dreary future of web development.
Web applications drive much of modern society and are far more capable
than could have been imagined when the World Wide Web was created in
1989. Instead, it is to make clear the need for modularity as the
capabilities, and size, of these scripts grow.

Though libraries for implementing modules have existed for some time,
syntax for natively implementing modules was only introduced in 2015
with the release of <a href="http://es6-features.org/#ValueExportImport"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">ECMAScript 6 (ES6)</a>. Since then, it
has been adopted by most modern browsers and is the de facto approach
for implementing modular applications in the browser.

## Implementing Modules in the Browser

Let’s take a look at implementing modules in the browser through an
example. Suppose you wanted to build a simple web application with some
hidden text that is revealed when a button is pressed.

<img
src="https://static-assets.codecademy.com/Courses/Learn-JavaScript/Modules/ESModules-Secret-Messages.gif"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="A demo of a simple website. There is a button that says &quot;Press me... if you dare&quot;. Clicking on the button reveals a hidden message that says &quot;Modules are fancy!&quot;" />

To create this website, you could create two files,
**secret-messages.html** and **secret-messages.js**, and store them
together in a folder called **secret-messages**:

``` js
secret-messages/
|-- secret-messages.html
|-- secret-messages.js
```

Let’s take a look at the HTML file first:

``` js
<!-- secret-messages.html --> 
<html>
  <head>
    <title>Secret Messages</title>
  </head>
  <body>
    <button id="secret-button"> Press me... if you dare </button>
    <p id="secret-p" style="display: none"> Modules are fancy! </p>
    <script src="./secret-messages.js"> </script>
  </body>
</html>
```

- The **secret-messages.html** page renders a button element and a
  hidden paragraph element.
- It then loads the script **secret-messages.js** using the
  <a href="https://www.geeksforgeeks.org/html-file-paths/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">file path</a> `"./secret-messages.js"`.
  The `./` before the file name is how you indicate that the file being
  referenced (**secret-messages.js**) is in the same folder as the file
  referencing it (**secret-messages.html**).

Speaking of which, let’s take a look at the JavaScript file:

``` js
/* secret-messages.js */
const buttonElement = document.getElementById('secret-button');
const pElement = document.getElementById('secret-p');
 
const toggleHiddenElement = (domElement) => {
    if (domElement.style.display === 'none') {
      domElement.style.display = 'block';
    } else {
      domElement.style.display = 'none';
    }
}
 
buttonElement.addEventListener('click', () => {
  toggleHiddenElement(pElement);
});
```

- In **secret-messages.js**, DOM objects are created to reference the
  button element and paragraph element using the <a
  href="https://developer.mozilla.org/en-US/docs/Web/API/Document/getElementById"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">DOM API</a>. These objects are stored
  in `buttonElement` and `pElement`, respectively.
- The function `toggleHiddenElement()` is declared. It can accept either
  of these elements as an input called `domElement` and will either show
  or hide that element depending on its current `style.display` value.
- An event listener is added to `buttonElement` to listen for `'click'`
  events and respond by calling `toggleHiddenElement()` with `pElement`
  as the argument.

Now, suppose you wanted to create a second webpage with similar
features. There is still a button, but this time clicking it reveals an
image. Using similar logic as the program above, this can be achieved
with the following file structure:

``` js
secret-image/
|-- secret-image.html
|-- secret-image.js
```

The HTML might look like this:

``` js
<!-- secret-image.html --> 
<html>
  <head>
    <title>Secret Image</title>
  </head>
  <body>
    <button id="secret-button"> Want to see something cool? </button>
    <img id="secret-img" src="imageURL.jpg" style="display: none">
    <script src="./secret-image.js"> </script>
  </body>
</html>
```

… and the JavaScript might look like this:

``` js
/* secret-image.js */
const buttonElement = document.getElementById('secret-button');
const imgElement = document.getElementById('secret-img');
 
const toggleHiddenElement = (domElement) => {
    if (domElement.style.display === 'none') {
      domElement.style.display = 'block';
    } else {
      domElement.style.display = 'none';
    }
}
 
buttonElement.addEventListener('click', () => {
  toggleHiddenElement(imgElement);
});
```

Given that much of the code in these two programs is similar, creating
this second website was fairly straightforward. In particular, notice
that the `toggleHiddenElement()` function is copied line for line from
**secret-messages.js**.

Having two identical, but separate, copies of a function can lead to
maintenance issues in the future. For example, any bugs that may exist
within the function would need to be fixed in two places rather than
one.

Instead, creating a single copy of `toggleHiddenElement()` within a
module that *exports* it would allow these two websites to *import* and
use the exact same function. With this approach, updates to the function
only need to occur within the module that defines them, and all programs
that import this function will receive the same update. Furthermore,
additional functions could be exported by the module and used by both
programs, further reducing repetition.

## ES6 Named Export Syntax

A module must be entirely contained within a file. So, let’s first
consider where a new module may be placed within the file system. Since
it needs to be used by both of these projects, you may want to put it in
a mutually accessible location. The entire file structure containing
both projects and this new module, let’s call it **dom-functions.js**,
could look like this:

``` js
secret-image/
|-- secret-image.html
|-- secret-image.js
secret-messages/
|-- secret-messages.html
|-- secret-messages.js
modules/
|-- dom-functions.js    <-- new module file
```

Inside **dom-functions.js**, the functions you wish to reuse can be
exported using the *named export* syntax below:

``` js
export { resourceToExportA, resourceToExportB, ...}
```

Using this syntax, the name of each exported resource is listed between
curly braces and separated by commas. Below, you can see how this is
implemented in the new module file **dom-functions.js**:

``` js
/* dom-functions.js */
const toggleHiddenElement = (domElement) => {
    if (domElement.style.display === 'none') {
      domElement.style.display = 'block';
    } else {
      domElement.style.display = 'none';
    }
}
 
const changeToFunkyColor = (domElement) => {
  const r = Math.random() * 255;
  const g = Math.random() * 255;
  const b = Math.random() * 255;
 
  domElement.style.background = `rgb(${r}, ${g}, ${b})`;
}
 
export { toggleHiddenElement, changeToFunkyColor };
```

Let’s briefly break down how this module works:

- The function `toggleHiddenElement()` is declared. It accepts a
  `domElement` as an input and either shows or hides that element
  depending on its current display style value.
- A new function `changeToFunkyColor()` is declared. It accepts a
  `domElement` as an input and then sets its background color to a
  random <a href="https://www.w3schools.com/colors/colors_rgb.asp"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">rgb()</code> color value</a>.
- The two functions are exported using the ES6 `export` statement.

These exported functions are now available to be imported and used by
other files!

> If you want to try this out on your own computer, you will need to
> spin up a local server or else you will run into
> <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">CORS</a> issues.
> <a href="https://www.codecademy.com/articles/spinning-up-a-local-server"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank">Check out this article</a> on creating a local server
> with VSCode and the Live Server extension.

In addition to the syntax above, in which all named exports are listed
together, individual values may be exported as named exports by simply
placing the `export` keyword in front of the variable’s declaration.
Here is the same example using this syntax:

``` js
/* dom-functions.js */
export const toggleHiddenElement = (domElement) => {
  // logic omitted...
}
 
export const changeToFunkyColor = (domElement) => {
  // logic omitted...
}
```

## ES6 Import Syntax

The ES6 syntax for importing named resources from modules is similar to
the `export` syntax:

``` js
import { exportedResourceA, exportedResourceB } from '/path/to/module.js';
```

Let’s update the **secret-messages** program such that it now imports
functionality from **dom-functions.js**. Doing so requires two important
steps. First, update **secret-messages.js**:

``` js
/* secret-messages.js */
import { toggleHiddenElement, changeToFunkyColor } from '../modules/dom-functions.js';
 
const buttonElement = document.getElementById('secret-button');
const pElement = document.getElementById('secret-p');
 
buttonElement.addEventListener('click', () => {
  toggleHiddenElement(pElement);
  changeToFunkyColor(buttonElement);
});
```

Let’s break down these changes:

- In **secret-messages.js**, the functions `toggleHiddenElement()` and
  `changeToFunkyColor()` are imported from the module
  **../modules/dom-functions.js**. The `../` indicates that the
  **modules/** folder is in the same folder as the parent folder,
  **secret-messages/**.
- When the button is clicked, the now imported `toggleHiddenElement()`
  function is called with `pElement` as an argument.
- In addition, `changeToFunkyColor()` is called with `buttonElement` as
  an argument, changing its background color to a random one!

Now, you must also update **secret-messages.html**:

``` js
<!-- secret-messages.html --> 
<html>
  <head>
    <title>Secret Messages</title>
  </head>
  <body>
    <button id="secret-button"> Press me... if you dare </button>
    <p id="secret-p" style="display: none"> Modules are fancy! </p>
    <script type="module" src="./secret-messages.js"> </script>
  </body>
</html>
```

The change here is subtle, can you spot it? In **secret-messages.html**,
the only thing that changes is the addition of the attribute
`type='module'` to the `<script>` element. Failure to do so can cause
some browsers to throw an error. For example, in Chrome you might see
this error:

<img
src="https://static-assets.codecademy.com/Courses/Learn-JavaScript/Modules/es6-modules-chrome-error.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Uncaught SyntaxError: Cannot use import statement outside a module" />

And those are the basics of exporting and importing using the ES6
`export` and `import` syntax! If you have been following along with
these code examples, see if you can update the **secret-image** project
to use the exported functions from the module **dom-functions.js**
before continuing on to the challenges below.

### ES6 Modules Challenge \#1

![](data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMTAwMCAxMDAwIiBoZWlnaHQ9IjI0IiB3aWR0aD0iMjQiIGFyaWEtbGFiZWw9IkxvYWRpbmcgYXNzZXNzbWVudCI+PHRpdGxlPlNwaW5uZXI8L3RpdGxlPjxjaXJjbGUgZmlsbD0iY3VycmVudENvbG9yIiBjeD0iOTM3LjUiIGN5PSI1MDAiIHI9IjYyLjUiPjwvY2lyY2xlPjxwYXRoIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTEwMDAgNTAwSDg3NWMwLTIyLjItMS45LTQ0LTUuNi02NS4xbDEyMy4xLTIxLjdoLjFjNC44IDI4LjIgNy40IDU3LjIgNy40IDg2Ljh6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjk2IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik05OTIuNSA0MTMuMmwtMTIzLjEgMjEuN2MtMy44LTIxLjgtOS41LTQyLjktMTYuOS02My4yTDk2OS45IDMyOWwuMS0uMWM5LjggMjcuMSAxNy40IDU1LjIgMjIuNSA4NC4zeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii45MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTY5LjkgMzI4LjlsLS4xLjEtMTE3LjMgNDIuN2MtNy41LTIwLjYtMTYuOC00MC40LTI3LjctNTkuMkw5MzMgMjQ5LjlsLjEtLjFhNTAzLjMgNTAzLjMgMCAwIDEgMzYuOCA3OS4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii44OCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTMzLjEgMjQ5LjlsLTEwOC4yIDYyLjZjLTEwLjktMTguOS0yMy42LTM2LjktMzcuNi01My41bDk1LjctODAuNGMxOC43IDIyLjIgMzUuNCA0Ni4xIDUwLjEgNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuODQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTg4MyAxNzguNkw3ODcuMyAyNTljLTE0LjEtMTYuNy0yOS41LTMyLjItNDYuMi00Ni4ybDgwLjMtOTUuOGMyMi4zIDE4LjcgNDIuOSAzOS4zIDYxLjYgNjEuNnoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNODIxLjQgMTE2LjlMNzQxIDIxMi43Yy0xNi43LTE0LTM0LjYtMjYuNi01My41LTM3LjZsNjIuNC0xMDguMi4xLS4xYzI1LjMgMTQuOCA0OS4yIDMxLjUgNzEuNCA1MC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43NiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNzUwLjEgNjYuOWwtNjIuNSAxMDguMmMtMTguOC0xMC45LTM4LjYtMjAuMS01OS4yLTI3LjdMNjcxIDMwLjFsLjEtLjFjMjcuNSAxMC4xIDUzLjkgMjIuNCA3OSAzNi45eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNjcxLjEgMzBsLS4xLjEtNDIuNyAxMTcuNGMtMjAuMy03LjQtNDEuNC0xMy4xLTYzLjItMTYuOWwyMS43LTEyM3YtLjFjMjkuMSA1LjEgNTcuMiAxMi43IDg0LjMgMjIuNXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNjgiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTU4Ni44IDcuNWwtMjEuNyAxMjMuMWMtMjEuMS0zLjctNDIuOS01LjYtNjUuMS01LjZWMGMyOS42IDAgNTguNiAyLjYgODYuOCA3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjY0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik01MDAgMHYxMjVjLTIyLjIgMC00NCAxLjktNjUuMSA1LjZsLTIxLjctMTIzdi0uMUM0NDEuNCAyLjYgNDcwLjQgMCA1MDAgMHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNDEzLjIgNy42bDIxLjcgMTIzLjFjLTIxLjggMy44LTQyLjkgOS41LTYzLjIgMTYuOUwzMjkgMzAuMWwtLjEtLjFjMjcuMS05LjkgNTUuMi0xNy40IDg0LjMtMjIuNHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMyOSAzMC4xbDQyLjcgMTE3LjRjLTIwLjYgNy41LTQwLjQgMTYuOC01OS4yIDI3LjdMMjUwIDY3bC0uMS0uMUMyNzUgNTIuNCAzMDEuNCA0MC4xIDMyOSAzMC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4wNCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMzcxLjcgODUyLjVMMzI5IDk2OS45bC0uMS4xYy0yNy42LTEwLTUzLjktMjIuNC03OS0zNi45bC4xLS4xIDYyLjUtMTA4LjJjMTguNyAxMC45IDM4LjYgMjAuMSA1OS4yIDI3Ljd6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjUyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTAgNjdsNjIuNSAxMDguMmMtMTguOSAxMS0zNi45IDIzLjYtNTMuNSAzNy42TDE3OC42IDExN2MyMi4yLTE4LjcgNDYuMS0zNS40IDcxLjQtNTB6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjA4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0zMTIuNSA4MjQuOEwyNTAgOTMzbC0uMS4xYy0yNS4yLTE0LjYtNDkuMS0zMS40LTcxLjQtNTAuMWw4MC40LTk1LjdjMTYuNyAxMy45IDM0LjYgMjYuNiA1My42IDM3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xNzguNiAxMTdsODAuNCA5NS44Yy0xNi43IDE0LjEtMzIuMiAyOS41LTQ2LjIgNDYuMkwxMTcgMTc4LjZjMTguNy0yMi4zIDM5LjMtNDIuOSA2MS42LTYxLjZ6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjEyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTguOSA3ODcuMkwxNzguNiA4ODNjLTIyLjMtMTguNy00Mi45LTM5LjMtNjEuNi02MS42bDk1LjgtODAuM2MxNCAxNi43IDI5LjQgMzIuMSA0Ni4xIDQ2LjF6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xMTcgMTc4LjZsOTUuOCA4MC40Yy0xNCAxNi42LTI2LjYgMzQuNS0zNy42IDUzLjVMNjcgMjUwbC0uMS0uMWMxNC43LTI1LjIgMzEuNC00OS4xIDUwLjEtNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTIxMi44IDc0MS4xTDExNyA4MjEuNGMtMTguNy0yMi4yLTM1LjQtNDYuMS01MC4xLTcxLjRsLjEtLjEgMTA4LjItNjIuNGMxMSAxOSAyMy42IDM2LjkgMzcuNiA1My42eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii40IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik02NyAyNTBsMTA4LjIgNjIuNWMtMTAuOSAxOC44LTIwLjEgMzguNi0yNy43IDU5LjJMMzAuMSAzMjlsLS4xLS4xYzEwLTI3LjYgMjIuNC01My45IDM2LjktNzlsLjEuMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTc1LjIgNjg3LjZMNjcgNzUwbC0uMS4xQzUyLjQgNzI1IDQwIDY5OC43IDMwIDY3MS4xbC4xLS4xIDExNy40LTQyLjdjNy42IDIwLjYgMTYuOCA0MC41IDI3LjcgNTkuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMzYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMwLjEgMzI5bDExNy40IDQyLjdjLTcuNCAyMC4zLTEzLjEgNDEuNC0xNi45IDYzLjJsLTEyMy0yMS43aC0uMWM1LjEtMjkgMTIuNi01Ny4yIDIyLjUtODQuMmguMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTE0Ny41IDYyOC4zTDMwLjEgNjcxbC0uMS4xYy05LjktMjcuMS0xNy40LTU1LjItMjIuNS04NC4yaC4xbDEyMy4xLTIxLjdjMy43IDIxLjcgOS40IDQyLjggMTYuOCA2My4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4zMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNy42IDQxMy4ybDEyMy4xIDIxLjdjLTMuNyAyMS4xLTUuNiA0Mi45LTUuNiA2NS4xSDBjMC0yOS42IDIuNi01OC42IDcuNi04Ni44eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4yOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTMwLjYgNTY1LjFsLTEyMyAyMS43aC0uMUE1MDYuNyA1MDYuNyAwIDAgMSAwIDUwMGgxMjVjMCAyMi4yIDEuOSA0NCA1LjYgNjUuMXoiPjwvcGF0aD48YW5pbWF0ZXRyYW5zZm9ybSBhdHRyaWJ1dGVuYW1lPSJ0cmFuc2Zvcm0iIHR5cGU9InJvdGF0ZSIgZnJvbT0iMCIgdG89IjM2MCIgZHVyPSIxcyIgYmVnaW49IjAiIHJlcGVhdGNvdW50PSJpbmRlZmluaXRlIj48L2FuaW1hdGV0cmFuc2Zvcm0+PC9zdmc+)

### ES6 Modules Challenge \#2

![](data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMTAwMCAxMDAwIiBoZWlnaHQ9IjI0IiB3aWR0aD0iMjQiIGFyaWEtbGFiZWw9IkxvYWRpbmcgYXNzZXNzbWVudCI+PHRpdGxlPlNwaW5uZXI8L3RpdGxlPjxjaXJjbGUgZmlsbD0iY3VycmVudENvbG9yIiBjeD0iOTM3LjUiIGN5PSI1MDAiIHI9IjYyLjUiPjwvY2lyY2xlPjxwYXRoIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTEwMDAgNTAwSDg3NWMwLTIyLjItMS45LTQ0LTUuNi02NS4xbDEyMy4xLTIxLjdoLjFjNC44IDI4LjIgNy40IDU3LjIgNy40IDg2Ljh6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjk2IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik05OTIuNSA0MTMuMmwtMTIzLjEgMjEuN2MtMy44LTIxLjgtOS41LTQyLjktMTYuOS02My4yTDk2OS45IDMyOWwuMS0uMWM5LjggMjcuMSAxNy40IDU1LjIgMjIuNSA4NC4zeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii45MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTY5LjkgMzI4LjlsLS4xLjEtMTE3LjMgNDIuN2MtNy41LTIwLjYtMTYuOC00MC40LTI3LjctNTkuMkw5MzMgMjQ5LjlsLjEtLjFhNTAzLjMgNTAzLjMgMCAwIDEgMzYuOCA3OS4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii44OCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTMzLjEgMjQ5LjlsLTEwOC4yIDYyLjZjLTEwLjktMTguOS0yMy42LTM2LjktMzcuNi01My41bDk1LjctODAuNGMxOC43IDIyLjIgMzUuNCA0Ni4xIDUwLjEgNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuODQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTg4MyAxNzguNkw3ODcuMyAyNTljLTE0LjEtMTYuNy0yOS41LTMyLjItNDYuMi00Ni4ybDgwLjMtOTUuOGMyMi4zIDE4LjcgNDIuOSAzOS4zIDYxLjYgNjEuNnoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNODIxLjQgMTE2LjlMNzQxIDIxMi43Yy0xNi43LTE0LTM0LjYtMjYuNi01My41LTM3LjZsNjIuNC0xMDguMi4xLS4xYzI1LjMgMTQuOCA0OS4yIDMxLjUgNzEuNCA1MC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43NiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNzUwLjEgNjYuOWwtNjIuNSAxMDguMmMtMTguOC0xMC45LTM4LjYtMjAuMS01OS4yLTI3LjdMNjcxIDMwLjFsLjEtLjFjMjcuNSAxMC4xIDUzLjkgMjIuNCA3OSAzNi45eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNjcxLjEgMzBsLS4xLjEtNDIuNyAxMTcuNGMtMjAuMy03LjQtNDEuNC0xMy4xLTYzLjItMTYuOWwyMS43LTEyM3YtLjFjMjkuMSA1LjEgNTcuMiAxMi43IDg0LjMgMjIuNXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNjgiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTU4Ni44IDcuNWwtMjEuNyAxMjMuMWMtMjEuMS0zLjctNDIuOS01LjYtNjUuMS01LjZWMGMyOS42IDAgNTguNiAyLjYgODYuOCA3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjY0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik01MDAgMHYxMjVjLTIyLjIgMC00NCAxLjktNjUuMSA1LjZsLTIxLjctMTIzdi0uMUM0NDEuNCAyLjYgNDcwLjQgMCA1MDAgMHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNDEzLjIgNy42bDIxLjcgMTIzLjFjLTIxLjggMy44LTQyLjkgOS41LTYzLjIgMTYuOUwzMjkgMzAuMWwtLjEtLjFjMjcuMS05LjkgNTUuMi0xNy40IDg0LjMtMjIuNHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMyOSAzMC4xbDQyLjcgMTE3LjRjLTIwLjYgNy41LTQwLjQgMTYuOC01OS4yIDI3LjdMMjUwIDY3bC0uMS0uMUMyNzUgNTIuNCAzMDEuNCA0MC4xIDMyOSAzMC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4wNCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMzcxLjcgODUyLjVMMzI5IDk2OS45bC0uMS4xYy0yNy42LTEwLTUzLjktMjIuNC03OS0zNi45bC4xLS4xIDYyLjUtMTA4LjJjMTguNyAxMC45IDM4LjYgMjAuMSA1OS4yIDI3Ljd6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjUyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTAgNjdsNjIuNSAxMDguMmMtMTguOSAxMS0zNi45IDIzLjYtNTMuNSAzNy42TDE3OC42IDExN2MyMi4yLTE4LjcgNDYuMS0zNS40IDcxLjQtNTB6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjA4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0zMTIuNSA4MjQuOEwyNTAgOTMzbC0uMS4xYy0yNS4yLTE0LjYtNDkuMS0zMS40LTcxLjQtNTAuMWw4MC40LTk1LjdjMTYuNyAxMy45IDM0LjYgMjYuNiA1My42IDM3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xNzguNiAxMTdsODAuNCA5NS44Yy0xNi43IDE0LjEtMzIuMiAyOS41LTQ2LjIgNDYuMkwxMTcgMTc4LjZjMTguNy0yMi4zIDM5LjMtNDIuOSA2MS42LTYxLjZ6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjEyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTguOSA3ODcuMkwxNzguNiA4ODNjLTIyLjMtMTguNy00Mi45LTM5LjMtNjEuNi02MS42bDk1LjgtODAuM2MxNCAxNi43IDI5LjQgMzIuMSA0Ni4xIDQ2LjF6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xMTcgMTc4LjZsOTUuOCA4MC40Yy0xNCAxNi42LTI2LjYgMzQuNS0zNy42IDUzLjVMNjcgMjUwbC0uMS0uMWMxNC43LTI1LjIgMzEuNC00OS4xIDUwLjEtNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTIxMi44IDc0MS4xTDExNyA4MjEuNGMtMTguNy0yMi4yLTM1LjQtNDYuMS01MC4xLTcxLjRsLjEtLjEgMTA4LjItNjIuNGMxMSAxOSAyMy42IDM2LjkgMzcuNiA1My42eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii40IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik02NyAyNTBsMTA4LjIgNjIuNWMtMTAuOSAxOC44LTIwLjEgMzguNi0yNy43IDU5LjJMMzAuMSAzMjlsLS4xLS4xYzEwLTI3LjYgMjIuNC01My45IDM2LjktNzlsLjEuMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTc1LjIgNjg3LjZMNjcgNzUwbC0uMS4xQzUyLjQgNzI1IDQwIDY5OC43IDMwIDY3MS4xbC4xLS4xIDExNy40LTQyLjdjNy42IDIwLjYgMTYuOCA0MC41IDI3LjcgNTkuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMzYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMwLjEgMzI5bDExNy40IDQyLjdjLTcuNCAyMC4zLTEzLjEgNDEuNC0xNi45IDYzLjJsLTEyMy0yMS43aC0uMWM1LjEtMjkgMTIuNi01Ny4yIDIyLjUtODQuMmguMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTE0Ny41IDYyOC4zTDMwLjEgNjcxbC0uMS4xYy05LjktMjcuMS0xNy40LTU1LjItMjIuNS04NC4yaC4xbDEyMy4xLTIxLjdjMy43IDIxLjcgOS40IDQyLjggMTYuOCA2My4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4zMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNy42IDQxMy4ybDEyMy4xIDIxLjdjLTMuNyAyMS4xLTUuNiA0Mi45LTUuNiA2NS4xSDBjMC0yOS42IDIuNi01OC42IDcuNi04Ni44eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4yOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTMwLjYgNTY1LjFsLTEyMyAyMS43aC0uMUE1MDYuNyA1MDYuNyAwIDAgMSAwIDUwMGgxMjVjMCAyMi4yIDEuOSA0NCA1LjYgNjUuMXoiPjwvcGF0aD48YW5pbWF0ZXRyYW5zZm9ybSBhdHRyaWJ1dGVuYW1lPSJ0cmFuc2Zvcm0iIHR5cGU9InJvdGF0ZSIgZnJvbT0iMCIgdG89IjM2MCIgZHVyPSIxcyIgYmVnaW49IjAiIHJlcGVhdGNvdW50PSJpbmRlZmluaXRlIj48L2FuaW1hdGV0cmFuc2Zvcm0+PC9zdmc+)

### ES6 Modules Challenge \#3

![](data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMTAwMCAxMDAwIiBoZWlnaHQ9IjI0IiB3aWR0aD0iMjQiIGFyaWEtbGFiZWw9IkxvYWRpbmcgYXNzZXNzbWVudCI+PHRpdGxlPlNwaW5uZXI8L3RpdGxlPjxjaXJjbGUgZmlsbD0iY3VycmVudENvbG9yIiBjeD0iOTM3LjUiIGN5PSI1MDAiIHI9IjYyLjUiPjwvY2lyY2xlPjxwYXRoIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTEwMDAgNTAwSDg3NWMwLTIyLjItMS45LTQ0LTUuNi02NS4xbDEyMy4xLTIxLjdoLjFjNC44IDI4LjIgNy40IDU3LjIgNy40IDg2Ljh6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjk2IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik05OTIuNSA0MTMuMmwtMTIzLjEgMjEuN2MtMy44LTIxLjgtOS41LTQyLjktMTYuOS02My4yTDk2OS45IDMyOWwuMS0uMWM5LjggMjcuMSAxNy40IDU1LjIgMjIuNSA4NC4zeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii45MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTY5LjkgMzI4LjlsLS4xLjEtMTE3LjMgNDIuN2MtNy41LTIwLjYtMTYuOC00MC40LTI3LjctNTkuMkw5MzMgMjQ5LjlsLjEtLjFhNTAzLjMgNTAzLjMgMCAwIDEgMzYuOCA3OS4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii44OCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTMzLjEgMjQ5LjlsLTEwOC4yIDYyLjZjLTEwLjktMTguOS0yMy42LTM2LjktMzcuNi01My41bDk1LjctODAuNGMxOC43IDIyLjIgMzUuNCA0Ni4xIDUwLjEgNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuODQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTg4MyAxNzguNkw3ODcuMyAyNTljLTE0LjEtMTYuNy0yOS41LTMyLjItNDYuMi00Ni4ybDgwLjMtOTUuOGMyMi4zIDE4LjcgNDIuOSAzOS4zIDYxLjYgNjEuNnoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNODIxLjQgMTE2LjlMNzQxIDIxMi43Yy0xNi43LTE0LTM0LjYtMjYuNi01My41LTM3LjZsNjIuNC0xMDguMi4xLS4xYzI1LjMgMTQuOCA0OS4yIDMxLjUgNzEuNCA1MC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43NiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNzUwLjEgNjYuOWwtNjIuNSAxMDguMmMtMTguOC0xMC45LTM4LjYtMjAuMS01OS4yLTI3LjdMNjcxIDMwLjFsLjEtLjFjMjcuNSAxMC4xIDUzLjkgMjIuNCA3OSAzNi45eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNjcxLjEgMzBsLS4xLjEtNDIuNyAxMTcuNGMtMjAuMy03LjQtNDEuNC0xMy4xLTYzLjItMTYuOWwyMS43LTEyM3YtLjFjMjkuMSA1LjEgNTcuMiAxMi43IDg0LjMgMjIuNXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNjgiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTU4Ni44IDcuNWwtMjEuNyAxMjMuMWMtMjEuMS0zLjctNDIuOS01LjYtNjUuMS01LjZWMGMyOS42IDAgNTguNiAyLjYgODYuOCA3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjY0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik01MDAgMHYxMjVjLTIyLjIgMC00NCAxLjktNjUuMSA1LjZsLTIxLjctMTIzdi0uMUM0NDEuNCAyLjYgNDcwLjQgMCA1MDAgMHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNDEzLjIgNy42bDIxLjcgMTIzLjFjLTIxLjggMy44LTQyLjkgOS41LTYzLjIgMTYuOUwzMjkgMzAuMWwtLjEtLjFjMjcuMS05LjkgNTUuMi0xNy40IDg0LjMtMjIuNHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMyOSAzMC4xbDQyLjcgMTE3LjRjLTIwLjYgNy41LTQwLjQgMTYuOC01OS4yIDI3LjdMMjUwIDY3bC0uMS0uMUMyNzUgNTIuNCAzMDEuNCA0MC4xIDMyOSAzMC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4wNCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMzcxLjcgODUyLjVMMzI5IDk2OS45bC0uMS4xYy0yNy42LTEwLTUzLjktMjIuNC03OS0zNi45bC4xLS4xIDYyLjUtMTA4LjJjMTguNyAxMC45IDM4LjYgMjAuMSA1OS4yIDI3Ljd6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjUyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTAgNjdsNjIuNSAxMDguMmMtMTguOSAxMS0zNi45IDIzLjYtNTMuNSAzNy42TDE3OC42IDExN2MyMi4yLTE4LjcgNDYuMS0zNS40IDcxLjQtNTB6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjA4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0zMTIuNSA4MjQuOEwyNTAgOTMzbC0uMS4xYy0yNS4yLTE0LjYtNDkuMS0zMS40LTcxLjQtNTAuMWw4MC40LTk1LjdjMTYuNyAxMy45IDM0LjYgMjYuNiA1My42IDM3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xNzguNiAxMTdsODAuNCA5NS44Yy0xNi43IDE0LjEtMzIuMiAyOS41LTQ2LjIgNDYuMkwxMTcgMTc4LjZjMTguNy0yMi4zIDM5LjMtNDIuOSA2MS42LTYxLjZ6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjEyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTguOSA3ODcuMkwxNzguNiA4ODNjLTIyLjMtMTguNy00Mi45LTM5LjMtNjEuNi02MS42bDk1LjgtODAuM2MxNCAxNi43IDI5LjQgMzIuMSA0Ni4xIDQ2LjF6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xMTcgMTc4LjZsOTUuOCA4MC40Yy0xNCAxNi42LTI2LjYgMzQuNS0zNy42IDUzLjVMNjcgMjUwbC0uMS0uMWMxNC43LTI1LjIgMzEuNC00OS4xIDUwLjEtNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTIxMi44IDc0MS4xTDExNyA4MjEuNGMtMTguNy0yMi4yLTM1LjQtNDYuMS01MC4xLTcxLjRsLjEtLjEgMTA4LjItNjIuNGMxMSAxOSAyMy42IDM2LjkgMzcuNiA1My42eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii40IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik02NyAyNTBsMTA4LjIgNjIuNWMtMTAuOSAxOC44LTIwLjEgMzguNi0yNy43IDU5LjJMMzAuMSAzMjlsLS4xLS4xYzEwLTI3LjYgMjIuNC01My45IDM2LjktNzlsLjEuMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTc1LjIgNjg3LjZMNjcgNzUwbC0uMS4xQzUyLjQgNzI1IDQwIDY5OC43IDMwIDY3MS4xbC4xLS4xIDExNy40LTQyLjdjNy42IDIwLjYgMTYuOCA0MC41IDI3LjcgNTkuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMzYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMwLjEgMzI5bDExNy40IDQyLjdjLTcuNCAyMC4zLTEzLjEgNDEuNC0xNi45IDYzLjJsLTEyMy0yMS43aC0uMWM1LjEtMjkgMTIuNi01Ny4yIDIyLjUtODQuMmguMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTE0Ny41IDYyOC4zTDMwLjEgNjcxbC0uMS4xYy05LjktMjcuMS0xNy40LTU1LjItMjIuNS04NC4yaC4xbDEyMy4xLTIxLjdjMy43IDIxLjcgOS40IDQyLjggMTYuOCA2My4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4zMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNy42IDQxMy4ybDEyMy4xIDIxLjdjLTMuNyAyMS4xLTUuNiA0Mi45LTUuNiA2NS4xSDBjMC0yOS42IDIuNi01OC42IDcuNi04Ni44eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4yOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTMwLjYgNTY1LjFsLTEyMyAyMS43aC0uMUE1MDYuNyA1MDYuNyAwIDAgMSAwIDUwMGgxMjVjMCAyMi4yIDEuOSA0NCA1LjYgNjUuMXoiPjwvcGF0aD48YW5pbWF0ZXRyYW5zZm9ybSBhdHRyaWJ1dGVuYW1lPSJ0cmFuc2Zvcm0iIHR5cGU9InJvdGF0ZSIgZnJvbT0iMCIgdG89IjM2MCIgZHVyPSIxcyIgYmVnaW49IjAiIHJlcGVhdGNvdW50PSJpbmRlZmluaXRlIj48L2FuaW1hdGV0cmFuc2Zvcm0+PC9zdmc+)

## Renaming Imports to Avoid Naming Collisions

Inevitably, you will run into a situation where the resources you wish
to import share a name with some other value that already exists in your
program (or from another imported module).

For example, suppose you had access to two modules,
**greeterEspanol.js** and **greeterFrancais.js**. Each exports a
function called `greet()`:

``` js
/* inside greeterEspanol.js */
const greet = () => {
  console.log('hola');
}
export { greet };
 
/* inside greeterFrancais.js */
const greet = () => {
  console.log('bonjour');
}
export { greet };
```

Now, let’s say you wanted to use each of these functions in a program,
called **main.js**, that simulates a conversation between a
spanish-speaker and a french-speaker.

``` js
import { greet } from 'greeterEspanol.js';
import { greet } from 'greeterFrancais.js';
```

The code above will throw an error on line 2 due to the fact that the
identifier `greet` has already been defined on line 1. Thankfully, ES6
includes syntax for renaming imported resources by adding in the keyword
`as`. It looks like this:

``` js
import { exportedResource as newlyNamedResource } from '/path/to/module'
```

Let’s see how this could work within **main.js**

``` js
/* main.js */
import { greet as greetEspanol } from 'greeterEspanol.js';
import { greet as greetFrancais } from 'greeterFrancais.js';
 
greetEspanol(); // Prints: hola
greetFrancais(); // Prints: bonjour
```

Now, both of the imported functions can be called within **main.js**
using their new identifiers, `greetEspanol()` and `greetFrancais()`.

### ES6 Modules Challenge \#4

![](data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMTAwMCAxMDAwIiBoZWlnaHQ9IjI0IiB3aWR0aD0iMjQiIGFyaWEtbGFiZWw9IkxvYWRpbmcgYXNzZXNzbWVudCI+PHRpdGxlPlNwaW5uZXI8L3RpdGxlPjxjaXJjbGUgZmlsbD0iY3VycmVudENvbG9yIiBjeD0iOTM3LjUiIGN5PSI1MDAiIHI9IjYyLjUiPjwvY2lyY2xlPjxwYXRoIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTEwMDAgNTAwSDg3NWMwLTIyLjItMS45LTQ0LTUuNi02NS4xbDEyMy4xLTIxLjdoLjFjNC44IDI4LjIgNy40IDU3LjIgNy40IDg2Ljh6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjk2IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik05OTIuNSA0MTMuMmwtMTIzLjEgMjEuN2MtMy44LTIxLjgtOS41LTQyLjktMTYuOS02My4yTDk2OS45IDMyOWwuMS0uMWM5LjggMjcuMSAxNy40IDU1LjIgMjIuNSA4NC4zeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii45MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTY5LjkgMzI4LjlsLS4xLjEtMTE3LjMgNDIuN2MtNy41LTIwLjYtMTYuOC00MC40LTI3LjctNTkuMkw5MzMgMjQ5LjlsLjEtLjFhNTAzLjMgNTAzLjMgMCAwIDEgMzYuOCA3OS4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii44OCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTMzLjEgMjQ5LjlsLTEwOC4yIDYyLjZjLTEwLjktMTguOS0yMy42LTM2LjktMzcuNi01My41bDk1LjctODAuNGMxOC43IDIyLjIgMzUuNCA0Ni4xIDUwLjEgNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuODQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTg4MyAxNzguNkw3ODcuMyAyNTljLTE0LjEtMTYuNy0yOS41LTMyLjItNDYuMi00Ni4ybDgwLjMtOTUuOGMyMi4zIDE4LjcgNDIuOSAzOS4zIDYxLjYgNjEuNnoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNODIxLjQgMTE2LjlMNzQxIDIxMi43Yy0xNi43LTE0LTM0LjYtMjYuNi01My41LTM3LjZsNjIuNC0xMDguMi4xLS4xYzI1LjMgMTQuOCA0OS4yIDMxLjUgNzEuNCA1MC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43NiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNzUwLjEgNjYuOWwtNjIuNSAxMDguMmMtMTguOC0xMC45LTM4LjYtMjAuMS01OS4yLTI3LjdMNjcxIDMwLjFsLjEtLjFjMjcuNSAxMC4xIDUzLjkgMjIuNCA3OSAzNi45eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNjcxLjEgMzBsLS4xLjEtNDIuNyAxMTcuNGMtMjAuMy03LjQtNDEuNC0xMy4xLTYzLjItMTYuOWwyMS43LTEyM3YtLjFjMjkuMSA1LjEgNTcuMiAxMi43IDg0LjMgMjIuNXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNjgiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTU4Ni44IDcuNWwtMjEuNyAxMjMuMWMtMjEuMS0zLjctNDIuOS01LjYtNjUuMS01LjZWMGMyOS42IDAgNTguNiAyLjYgODYuOCA3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjY0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik01MDAgMHYxMjVjLTIyLjIgMC00NCAxLjktNjUuMSA1LjZsLTIxLjctMTIzdi0uMUM0NDEuNCAyLjYgNDcwLjQgMCA1MDAgMHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNDEzLjIgNy42bDIxLjcgMTIzLjFjLTIxLjggMy44LTQyLjkgOS41LTYzLjIgMTYuOUwzMjkgMzAuMWwtLjEtLjFjMjcuMS05LjkgNTUuMi0xNy40IDg0LjMtMjIuNHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMyOSAzMC4xbDQyLjcgMTE3LjRjLTIwLjYgNy41LTQwLjQgMTYuOC01OS4yIDI3LjdMMjUwIDY3bC0uMS0uMUMyNzUgNTIuNCAzMDEuNCA0MC4xIDMyOSAzMC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4wNCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMzcxLjcgODUyLjVMMzI5IDk2OS45bC0uMS4xYy0yNy42LTEwLTUzLjktMjIuNC03OS0zNi45bC4xLS4xIDYyLjUtMTA4LjJjMTguNyAxMC45IDM4LjYgMjAuMSA1OS4yIDI3Ljd6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjUyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTAgNjdsNjIuNSAxMDguMmMtMTguOSAxMS0zNi45IDIzLjYtNTMuNSAzNy42TDE3OC42IDExN2MyMi4yLTE4LjcgNDYuMS0zNS40IDcxLjQtNTB6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjA4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0zMTIuNSA4MjQuOEwyNTAgOTMzbC0uMS4xYy0yNS4yLTE0LjYtNDkuMS0zMS40LTcxLjQtNTAuMWw4MC40LTk1LjdjMTYuNyAxMy45IDM0LjYgMjYuNiA1My42IDM3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xNzguNiAxMTdsODAuNCA5NS44Yy0xNi43IDE0LjEtMzIuMiAyOS41LTQ2LjIgNDYuMkwxMTcgMTc4LjZjMTguNy0yMi4zIDM5LjMtNDIuOSA2MS42LTYxLjZ6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjEyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTguOSA3ODcuMkwxNzguNiA4ODNjLTIyLjMtMTguNy00Mi45LTM5LjMtNjEuNi02MS42bDk1LjgtODAuM2MxNCAxNi43IDI5LjQgMzIuMSA0Ni4xIDQ2LjF6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xMTcgMTc4LjZsOTUuOCA4MC40Yy0xNCAxNi42LTI2LjYgMzQuNS0zNy42IDUzLjVMNjcgMjUwbC0uMS0uMWMxNC43LTI1LjIgMzEuNC00OS4xIDUwLjEtNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTIxMi44IDc0MS4xTDExNyA4MjEuNGMtMTguNy0yMi4yLTM1LjQtNDYuMS01MC4xLTcxLjRsLjEtLjEgMTA4LjItNjIuNGMxMSAxOSAyMy42IDM2LjkgMzcuNiA1My42eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii40IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik02NyAyNTBsMTA4LjIgNjIuNWMtMTAuOSAxOC44LTIwLjEgMzguNi0yNy43IDU5LjJMMzAuMSAzMjlsLS4xLS4xYzEwLTI3LjYgMjIuNC01My45IDM2LjktNzlsLjEuMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTc1LjIgNjg3LjZMNjcgNzUwbC0uMS4xQzUyLjQgNzI1IDQwIDY5OC43IDMwIDY3MS4xbC4xLS4xIDExNy40LTQyLjdjNy42IDIwLjYgMTYuOCA0MC41IDI3LjcgNTkuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMzYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMwLjEgMzI5bDExNy40IDQyLjdjLTcuNCAyMC4zLTEzLjEgNDEuNC0xNi45IDYzLjJsLTEyMy0yMS43aC0uMWM1LjEtMjkgMTIuNi01Ny4yIDIyLjUtODQuMmguMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTE0Ny41IDYyOC4zTDMwLjEgNjcxbC0uMS4xYy05LjktMjcuMS0xNy40LTU1LjItMjIuNS04NC4yaC4xbDEyMy4xLTIxLjdjMy43IDIxLjcgOS40IDQyLjggMTYuOCA2My4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4zMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNy42IDQxMy4ybDEyMy4xIDIxLjdjLTMuNyAyMS4xLTUuNiA0Mi45LTUuNiA2NS4xSDBjMC0yOS42IDIuNi01OC42IDcuNi04Ni44eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4yOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTMwLjYgNTY1LjFsLTEyMyAyMS43aC0uMUE1MDYuNyA1MDYuNyAwIDAgMSAwIDUwMGgxMjVjMCAyMi4yIDEuOSA0NCA1LjYgNjUuMXoiPjwvcGF0aD48YW5pbWF0ZXRyYW5zZm9ybSBhdHRyaWJ1dGVuYW1lPSJ0cmFuc2Zvcm0iIHR5cGU9InJvdGF0ZSIgZnJvbT0iMCIgdG89IjM2MCIgZHVyPSIxcyIgYmVnaW49IjAiIHJlcGVhdGNvdW50PSJpbmRlZmluaXRlIj48L2FuaW1hdGV0cmFuc2Zvcm0+PC9zdmc+)

## Default Exports and Imports

So far, the examples shown have used the named export syntax, in which a
module’s resources are exported individually by name. Every module also
has the option to export a single value to represent the entire module
called the *default export*. Often, though not always, the default
export value is an object containing the entire set of functions and/or
data values of a module.

The syntax for exporting a default object looks like this:

``` js
const resources = { 
  valueA, 
  valueB 
}
export { resources as default };
```

With this syntax, the object containing the module’s resources is first
declared and then is exported on the next line. At first glance, it
looks like the `resources` object is being exported as a named export.
However, the clause `as default` renames the exported object to
`default`, a reserved identifier that can only be given to a single
exported value.

You may also see this shorthand syntax where the value follows
`export default` is the default value to be exported:

``` js
const resources = {
  valueA,
  valueB
}
export default resources;
```

### Importing default values.

The syntax for importing default exports looks like this:

``` js
import importedResources from 'module.js';
```

Notice that the curly braces are gone from the import statement. This
syntax is actually shorthand for
`import { default as importedResources } from 'module.js` and the
imported `default` value may be given any name the programmer chooses.

It should be noted that if the `default` export is an object, the values
inside cannot be extracted until after the object is imported, like so:

``` js
// This will work...
import resources from 'module.js'
const { valueA, valueB } = resources;
 
// This will not work...
import { valueA, valueB } from 'module.js'
```

Let’s return to the prior example. The **dom-functions.js** module from
above could be rewritten to use default exports like so:

``` js
/* dom-functions.js */
const toggleHiddenElement = (domElement) => {
    if (domElement.style.display === 'none') {
      domElement.style.display = 'block';
    } else {
      domElement.style.display = 'none';
    }
}
 
const changeToFunkyColor = (domElement) => {
  const r = Math.random() * 255;
  const g = Math.random() * 255;
  const b = Math.random() * 255;
 
  domElement.style.background = `rgb(${r}, ${g}, ${b})`;
}
 
const resources = { 
  toggleHiddenElement, 
  changeToFunkyColor
}
export default resources;
```

This default exports object can now be used within
**secret-messages.js** like so:

``` js
import domFunctions from '../modules/dom-functions.js';
 
const { toggleHiddenElement, changeToFunkyColor } = domFunctions;
 
const buttonElement = document.getElementById('secret-button');
const pElement = document.getElementById('secret-p');
 
buttonElement.addEventListener('click', () => {
  toggleHiddenElement(pElement);
  changeToFunkyColor(buttonElement);
});
```

Notice how `toggleHiddenElement()` and `changeToFunkyColor()` are now
methods of the imported object called `domFunctions` and are extracted
using <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">ES6 destructuring syntax</a>! It should
be noted that the identifier `domFunctions` can be chosen as the
programmer sees fit. If you recall, the syntax used in the snippet above
is shorthand for:

``` js
import { default as domFunctions } from '../modules/dom-functions.js';
```

Continue on to the challenges below before the final review at the end
of the article.

### ES6 Modules Challenge \#5

![](data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMTAwMCAxMDAwIiBoZWlnaHQ9IjI0IiB3aWR0aD0iMjQiIGFyaWEtbGFiZWw9IkxvYWRpbmcgYXNzZXNzbWVudCI+PHRpdGxlPlNwaW5uZXI8L3RpdGxlPjxjaXJjbGUgZmlsbD0iY3VycmVudENvbG9yIiBjeD0iOTM3LjUiIGN5PSI1MDAiIHI9IjYyLjUiPjwvY2lyY2xlPjxwYXRoIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTEwMDAgNTAwSDg3NWMwLTIyLjItMS45LTQ0LTUuNi02NS4xbDEyMy4xLTIxLjdoLjFjNC44IDI4LjIgNy40IDU3LjIgNy40IDg2Ljh6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjk2IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik05OTIuNSA0MTMuMmwtMTIzLjEgMjEuN2MtMy44LTIxLjgtOS41LTQyLjktMTYuOS02My4yTDk2OS45IDMyOWwuMS0uMWM5LjggMjcuMSAxNy40IDU1LjIgMjIuNSA4NC4zeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii45MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTY5LjkgMzI4LjlsLS4xLjEtMTE3LjMgNDIuN2MtNy41LTIwLjYtMTYuOC00MC40LTI3LjctNTkuMkw5MzMgMjQ5LjlsLjEtLjFhNTAzLjMgNTAzLjMgMCAwIDEgMzYuOCA3OS4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii44OCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTMzLjEgMjQ5LjlsLTEwOC4yIDYyLjZjLTEwLjktMTguOS0yMy42LTM2LjktMzcuNi01My41bDk1LjctODAuNGMxOC43IDIyLjIgMzUuNCA0Ni4xIDUwLjEgNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuODQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTg4MyAxNzguNkw3ODcuMyAyNTljLTE0LjEtMTYuNy0yOS41LTMyLjItNDYuMi00Ni4ybDgwLjMtOTUuOGMyMi4zIDE4LjcgNDIuOSAzOS4zIDYxLjYgNjEuNnoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNODIxLjQgMTE2LjlMNzQxIDIxMi43Yy0xNi43LTE0LTM0LjYtMjYuNi01My41LTM3LjZsNjIuNC0xMDguMi4xLS4xYzI1LjMgMTQuOCA0OS4yIDMxLjUgNzEuNCA1MC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43NiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNzUwLjEgNjYuOWwtNjIuNSAxMDguMmMtMTguOC0xMC45LTM4LjYtMjAuMS01OS4yLTI3LjdMNjcxIDMwLjFsLjEtLjFjMjcuNSAxMC4xIDUzLjkgMjIuNCA3OSAzNi45eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNjcxLjEgMzBsLS4xLjEtNDIuNyAxMTcuNGMtMjAuMy03LjQtNDEuNC0xMy4xLTYzLjItMTYuOWwyMS43LTEyM3YtLjFjMjkuMSA1LjEgNTcuMiAxMi43IDg0LjMgMjIuNXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNjgiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTU4Ni44IDcuNWwtMjEuNyAxMjMuMWMtMjEuMS0zLjctNDIuOS01LjYtNjUuMS01LjZWMGMyOS42IDAgNTguNiAyLjYgODYuOCA3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjY0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik01MDAgMHYxMjVjLTIyLjIgMC00NCAxLjktNjUuMSA1LjZsLTIxLjctMTIzdi0uMUM0NDEuNCAyLjYgNDcwLjQgMCA1MDAgMHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNDEzLjIgNy42bDIxLjcgMTIzLjFjLTIxLjggMy44LTQyLjkgOS41LTYzLjIgMTYuOUwzMjkgMzAuMWwtLjEtLjFjMjcuMS05LjkgNTUuMi0xNy40IDg0LjMtMjIuNHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMyOSAzMC4xbDQyLjcgMTE3LjRjLTIwLjYgNy41LTQwLjQgMTYuOC01OS4yIDI3LjdMMjUwIDY3bC0uMS0uMUMyNzUgNTIuNCAzMDEuNCA0MC4xIDMyOSAzMC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4wNCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMzcxLjcgODUyLjVMMzI5IDk2OS45bC0uMS4xYy0yNy42LTEwLTUzLjktMjIuNC03OS0zNi45bC4xLS4xIDYyLjUtMTA4LjJjMTguNyAxMC45IDM4LjYgMjAuMSA1OS4yIDI3Ljd6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjUyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTAgNjdsNjIuNSAxMDguMmMtMTguOSAxMS0zNi45IDIzLjYtNTMuNSAzNy42TDE3OC42IDExN2MyMi4yLTE4LjcgNDYuMS0zNS40IDcxLjQtNTB6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjA4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0zMTIuNSA4MjQuOEwyNTAgOTMzbC0uMS4xYy0yNS4yLTE0LjYtNDkuMS0zMS40LTcxLjQtNTAuMWw4MC40LTk1LjdjMTYuNyAxMy45IDM0LjYgMjYuNiA1My42IDM3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xNzguNiAxMTdsODAuNCA5NS44Yy0xNi43IDE0LjEtMzIuMiAyOS41LTQ2LjIgNDYuMkwxMTcgMTc4LjZjMTguNy0yMi4zIDM5LjMtNDIuOSA2MS42LTYxLjZ6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjEyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTguOSA3ODcuMkwxNzguNiA4ODNjLTIyLjMtMTguNy00Mi45LTM5LjMtNjEuNi02MS42bDk1LjgtODAuM2MxNCAxNi43IDI5LjQgMzIuMSA0Ni4xIDQ2LjF6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xMTcgMTc4LjZsOTUuOCA4MC40Yy0xNCAxNi42LTI2LjYgMzQuNS0zNy42IDUzLjVMNjcgMjUwbC0uMS0uMWMxNC43LTI1LjIgMzEuNC00OS4xIDUwLjEtNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTIxMi44IDc0MS4xTDExNyA4MjEuNGMtMTguNy0yMi4yLTM1LjQtNDYuMS01MC4xLTcxLjRsLjEtLjEgMTA4LjItNjIuNGMxMSAxOSAyMy42IDM2LjkgMzcuNiA1My42eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii40IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik02NyAyNTBsMTA4LjIgNjIuNWMtMTAuOSAxOC44LTIwLjEgMzguNi0yNy43IDU5LjJMMzAuMSAzMjlsLS4xLS4xYzEwLTI3LjYgMjIuNC01My45IDM2LjktNzlsLjEuMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTc1LjIgNjg3LjZMNjcgNzUwbC0uMS4xQzUyLjQgNzI1IDQwIDY5OC43IDMwIDY3MS4xbC4xLS4xIDExNy40LTQyLjdjNy42IDIwLjYgMTYuOCA0MC41IDI3LjcgNTkuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMzYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMwLjEgMzI5bDExNy40IDQyLjdjLTcuNCAyMC4zLTEzLjEgNDEuNC0xNi45IDYzLjJsLTEyMy0yMS43aC0uMWM1LjEtMjkgMTIuNi01Ny4yIDIyLjUtODQuMmguMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTE0Ny41IDYyOC4zTDMwLjEgNjcxbC0uMS4xYy05LjktMjcuMS0xNy40LTU1LjItMjIuNS04NC4yaC4xbDEyMy4xLTIxLjdjMy43IDIxLjcgOS40IDQyLjggMTYuOCA2My4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4zMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNy42IDQxMy4ybDEyMy4xIDIxLjdjLTMuNyAyMS4xLTUuNiA0Mi45LTUuNiA2NS4xSDBjMC0yOS42IDIuNi01OC42IDcuNi04Ni44eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4yOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTMwLjYgNTY1LjFsLTEyMyAyMS43aC0uMUE1MDYuNyA1MDYuNyAwIDAgMSAwIDUwMGgxMjVjMCAyMi4yIDEuOSA0NCA1LjYgNjUuMXoiPjwvcGF0aD48YW5pbWF0ZXRyYW5zZm9ybSBhdHRyaWJ1dGVuYW1lPSJ0cmFuc2Zvcm0iIHR5cGU9InJvdGF0ZSIgZnJvbT0iMCIgdG89IjM2MCIgZHVyPSIxcyIgYmVnaW49IjAiIHJlcGVhdGNvdW50PSJpbmRlZmluaXRlIj48L2FuaW1hdGV0cmFuc2Zvcm0+PC9zdmc+)

### ES6 Modules Challenge \#6

![](data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMTAwMCAxMDAwIiBoZWlnaHQ9IjI0IiB3aWR0aD0iMjQiIGFyaWEtbGFiZWw9IkxvYWRpbmcgYXNzZXNzbWVudCI+PHRpdGxlPlNwaW5uZXI8L3RpdGxlPjxjaXJjbGUgZmlsbD0iY3VycmVudENvbG9yIiBjeD0iOTM3LjUiIGN5PSI1MDAiIHI9IjYyLjUiPjwvY2lyY2xlPjxwYXRoIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTEwMDAgNTAwSDg3NWMwLTIyLjItMS45LTQ0LTUuNi02NS4xbDEyMy4xLTIxLjdoLjFjNC44IDI4LjIgNy40IDU3LjIgNy40IDg2Ljh6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjk2IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik05OTIuNSA0MTMuMmwtMTIzLjEgMjEuN2MtMy44LTIxLjgtOS41LTQyLjktMTYuOS02My4yTDk2OS45IDMyOWwuMS0uMWM5LjggMjcuMSAxNy40IDU1LjIgMjIuNSA4NC4zeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii45MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTY5LjkgMzI4LjlsLS4xLjEtMTE3LjMgNDIuN2MtNy41LTIwLjYtMTYuOC00MC40LTI3LjctNTkuMkw5MzMgMjQ5LjlsLjEtLjFhNTAzLjMgNTAzLjMgMCAwIDEgMzYuOCA3OS4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii44OCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNOTMzLjEgMjQ5LjlsLTEwOC4yIDYyLjZjLTEwLjktMTguOS0yMy42LTM2LjktMzcuNi01My41bDk1LjctODAuNGMxOC43IDIyLjIgMzUuNCA0Ni4xIDUwLjEgNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuODQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTg4MyAxNzguNkw3ODcuMyAyNTljLTE0LjEtMTYuNy0yOS41LTMyLjItNDYuMi00Ni4ybDgwLjMtOTUuOGMyMi4zIDE4LjcgNDIuOSAzOS4zIDYxLjYgNjEuNnoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNODIxLjQgMTE2LjlMNzQxIDIxMi43Yy0xNi43LTE0LTM0LjYtMjYuNi01My41LTM3LjZsNjIuNC0xMDguMi4xLS4xYzI1LjMgMTQuOCA0OS4yIDMxLjUgNzEuNCA1MC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43NiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNzUwLjEgNjYuOWwtNjIuNSAxMDguMmMtMTguOC0xMC45LTM4LjYtMjAuMS01OS4yLTI3LjdMNjcxIDMwLjFsLjEtLjFjMjcuNSAxMC4xIDUzLjkgMjIuNCA3OSAzNi45eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii43MiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNjcxLjEgMzBsLS4xLjEtNDIuNyAxMTcuNGMtMjAuMy03LjQtNDEuNC0xMy4xLTYzLjItMTYuOWwyMS43LTEyM3YtLjFjMjkuMSA1LjEgNTcuMiAxMi43IDg0LjMgMjIuNXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNjgiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTU4Ni44IDcuNWwtMjEuNyAxMjMuMWMtMjEuMS0zLjctNDIuOS01LjYtNjUuMS01LjZWMGMyOS42IDAgNTguNiAyLjYgODYuOCA3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjY0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik01MDAgMHYxMjVjLTIyLjIgMC00NCAxLjktNjUuMSA1LjZsLTIxLjctMTIzdi0uMUM0NDEuNCAyLjYgNDcwLjQgMCA1MDAgMHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNDEzLjIgNy42bDIxLjcgMTIzLjFjLTIxLjggMy44LTQyLjkgOS41LTYzLjIgMTYuOUwzMjkgMzAuMWwtLjEtLjFjMjcuMS05LjkgNTUuMi0xNy40IDg0LjMtMjIuNHoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuNTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMyOSAzMC4xbDQyLjcgMTE3LjRjLTIwLjYgNy41LTQwLjQgMTYuOC01OS4yIDI3LjdMMjUwIDY3bC0uMS0uMUMyNzUgNTIuNCAzMDEuNCA0MC4xIDMyOSAzMC4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4wNCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMzcxLjcgODUyLjVMMzI5IDk2OS45bC0uMS4xYy0yNy42LTEwLTUzLjktMjIuNC03OS0zNi45bC4xLS4xIDYyLjUtMTA4LjJjMTguNyAxMC45IDM4LjYgMjAuMSA1OS4yIDI3Ljd6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjUyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTAgNjdsNjIuNSAxMDguMmMtMTguOSAxMS0zNi45IDIzLjYtNTMuNSAzNy42TDE3OC42IDExN2MyMi4yLTE4LjcgNDYuMS0zNS40IDcxLjQtNTB6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjA4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0zMTIuNSA4MjQuOEwyNTAgOTMzbC0uMS4xYy0yNS4yLTE0LjYtNDkuMS0zMS40LTcxLjQtNTAuMWw4MC40LTk1LjdjMTYuNyAxMy45IDM0LjYgMjYuNiA1My42IDM3LjV6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ4IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xNzguNiAxMTdsODAuNCA5NS44Yy0xNi43IDE0LjEtMzIuMiAyOS41LTQ2LjIgNDYuMkwxMTcgMTc4LjZjMTguNy0yMi4zIDM5LjMtNDIuOSA2MS42LTYxLjZ6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjEyIiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0yNTguOSA3ODcuMkwxNzguNiA4ODNjLTIyLjMtMTguNy00Mi45LTM5LjMtNjEuNi02MS42bDk1LjgtODAuM2MxNCAxNi43IDI5LjQgMzIuMSA0Ni4xIDQ2LjF6Ij48L3BhdGg+PHBhdGggb3BhY2l0eT0iLjQ0IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik0xMTcgMTc4LjZsOTUuOCA4MC40Yy0xNCAxNi42LTI2LjYgMzQuNS0zNy42IDUzLjVMNjcgMjUwbC0uMS0uMWMxNC43LTI1LjIgMzEuNC00OS4xIDUwLjEtNzEuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMTYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTIxMi44IDc0MS4xTDExNyA4MjEuNGMtMTguNy0yMi4yLTM1LjQtNDYuMS01MC4xLTcxLjRsLjEtLjEgMTA4LjItNjIuNGMxMSAxOSAyMy42IDM2LjkgMzcuNiA1My42eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii40IiBmaWxsPSJjdXJyZW50Q29sb3IiIGQ9Ik02NyAyNTBsMTA4LjIgNjIuNWMtMTAuOSAxOC44LTIwLjEgMzguNi0yNy43IDU5LjJMMzAuMSAzMjlsLS4xLS4xYzEwLTI3LjYgMjIuNC01My45IDM2LjktNzlsLjEuMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTc1LjIgNjg3LjZMNjcgNzUwbC0uMS4xQzUyLjQgNzI1IDQwIDY5OC43IDMwIDY3MS4xbC4xLS4xIDExNy40LTQyLjdjNy42IDIwLjYgMTYuOCA0MC41IDI3LjcgNTkuM3oiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMzYiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTMwLjEgMzI5bDExNy40IDQyLjdjLTcuNCAyMC4zLTEzLjEgNDEuNC0xNi45IDYzLjJsLTEyMy0yMS43aC0uMWM1LjEtMjkgMTIuNi01Ny4yIDIyLjUtODQuMmguMXoiPjwvcGF0aD48cGF0aCBvcGFjaXR5PSIuMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgZD0iTTE0Ny41IDYyOC4zTDMwLjEgNjcxbC0uMS4xYy05LjktMjcuMS0xNy40LTU1LjItMjIuNS04NC4yaC4xbDEyMy4xLTIxLjdjMy43IDIxLjcgOS40IDQyLjggMTYuOCA2My4xeiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4zMiIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNNy42IDQxMy4ybDEyMy4xIDIxLjdjLTMuNyAyMS4xLTUuNiA0Mi45LTUuNiA2NS4xSDBjMC0yOS42IDIuNi01OC42IDcuNi04Ni44eiI+PC9wYXRoPjxwYXRoIG9wYWNpdHk9Ii4yOCIgZmlsbD0iY3VycmVudENvbG9yIiBkPSJNMTMwLjYgNTY1LjFsLTEyMyAyMS43aC0uMUE1MDYuNyA1MDYuNyAwIDAgMSAwIDUwMGgxMjVjMCAyMi4yIDEuOSA0NCA1LjYgNjUuMXoiPjwvcGF0aD48YW5pbWF0ZXRyYW5zZm9ybSBhdHRyaWJ1dGVuYW1lPSJ0cmFuc2Zvcm0iIHR5cGU9InJvdGF0ZSIgZnJvbT0iMCIgdG89IjM2MCIgZHVyPSIxcyIgYmVnaW49IjAiIHJlcGVhdGNvdW50PSJpbmRlZmluaXRlIj48L2FuaW1hdGV0cmFuc2Zvcm0+PC9zdmc+)

## Review

In this article, you have learned the following:

- The benefits of implementing modular programs.
- How to use the ES6 `export` statement to *export* code from a file -
  meaning its functions and/or data can be used by other files/modules.
- How to use the ES6 `import` statement to *import* functions and/or
  data from another module.
- How to rename imported resources using the `as` keyword.
- How to export and import a default value.

Though this article covers the basics of using ES6 syntax to import and
export modules, <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">MDN has an excellent article</a> that
provides an in-depth look at some additional features that ES6 has to
offer.

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtMWV5NTU3eS1TdmcgZW9sMnp2bTAiPjx0aXRsZT5GaWxlIFNlYXJjaCBJY29uPC90aXRsZT48cGF0aCBmaWxsPSJub25lIiBzdHJva2U9ImN1cnJlbnRDb2xvciIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIiBzdHJva2Utd2lkdGg9IjEuNSIgZD0iTTMuNzUgNi43NWgxMC41bS0xMC41IDQuNUg3LjVtLTMuNzUgNC41SDcuNW0wIDQuNUgyLjI1YTEuNSAxLjUgMCAwMS0xLjUtMS41VjIuMjVhMS41IDEuNSAwIDAxMS41LTEuNWgxMC42MjlhMS41IDEuNSAwIDAxMS4wNi40MzlsMi44NzIgMi44NzJhMS41IDEuNSAwIDAxLjQzOSAxLjA2VjcuNSI+PC9wYXRoPjxjaXJjbGUgY3g9IjE1Ljc2NCIgY3k9IjE1Ljc1IiByPSI1LjI1IiBmaWxsPSJub25lIiBzdHJva2U9ImN1cnJlbnRDb2xvciIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIiBzdHJva2Utd2lkdGg9IjEuNSI+PC9jaXJjbGU+PHBhdGggZmlsbD0ibm9uZSIgc3Ryb2tlPSJjdXJyZW50Q29sb3IiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik0yMy4yNSAyMy4yNWwtMy43NzMtMy43ODgiPjwvcGF0aD48L3N2Zz4="
class="gamut-1ey557y-Svg eol2zvm0" />**documentation**

# Documentation: JavaScript Modules

## [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules)

The provided link goes directly to the MDN’s documentation for
JavaScript modules. Instead of trying to remember it all, use this
resource for reference when you need syntax or implementation help!

# WorkAround Explorer

WorkAround is a research organization that provides data on salary
trends in the tech industry. Open up **salaryData.js** to see the data
they have collected. You’ll notice that they have also created a few
functions for filtering that data to get subsets of data by role and by
company.

WorkAround now wants to release a new web application called WorkAround
Explorer to make their data more easily viewable. This web app should
allow users to choose specific roles and companies in the tech industry
to see the following information:

- The salary for the chosen role at the chosen company.
- The industry average for the chosen role.
- The average salary at the chosen company across all roles.
- The industry average salary across all roles and all companies.

<img
src="https://static-assets.codecademy.com/Courses/Learn-JavaScript/Modules/WorkAround%20Explorer%20Demo.gif"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="After the user selects a role from the first column and a company from the second, the relevant data is shown in the third column" />

Much of the user interface has already been designed by front-end
developers, however, the core data and functionality are either missing
or need to be connected together using modules. Your task is to help
your team members out by using your `import` and `export` expertise!



Mark the tasks as complete by checking them off

## Render the radio buttons using the salaryData module

1\.

These first four tasks will focus on rendering the `<input>` elements
using the names of the companies and the different roles available in
the collected salary data.

Open **salaryData.js** where you will find the collected data in the
variable `salaryData`. Below are four functions for filtering down this
data.

You need to:

- Export the four functions from **salaryData.js** using ES6 named
  `export` syntax.
- Export the `salaryData` array as the `default` export.

> Note: In most web browsers, you can
> <a href="https://www.codecademy.com/articles/use-devtools"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank">access the developer console</a> to get some helpful
> errors by right-clicking anywhere on the page and selecting “Inspect.”

2\.

Open up **main.js** and take a look at the function
`renderInputButtons()`. This function accepts an array of labels that
are used to create individual <a
href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/radio"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">radio-style <code
class="code__2rdF32qjRVp7mMVBHuPwDS">\<input\></code> elements</a>. The
function also accepts a string that is used as the name for that input
group.

Currently, this function is being called twice with the variables
`companies` and `roles` as the first arguments. However, each of these
variables are assigned empty arrays.

Instead, you will use the `getRoles()` and `getCompanies()` functions
from **salaryData.js** to initialize these variables.

First, at the top of **main.js**, use ES6 named `import` syntax to
import `getRoles` and `getCompanies` from **salaryData.js**. Check the
file system to determine the relative path from **main.js**.

**NOTE**: After completing this task, some of the columns in the mini
browser may stop rendering. Don’t worry though, we’ll fix this in a
later step!

3\.

Now, replace the empty arrays assigned to `companies` and `roles` with
function calls to `getCompanies()` and `getRoles()`, respectively.

4\.

As mentioned before, even if you correctly completed the previous two
tasks, the radio-style `<input>` elements still will not render and some
of the columns have disappeared. This is because we are now required to
specify that **main.js** is using modules.

In **index.html**, add a `type` attribute to `<script src='main.js'>`
with the correct value to indicate that the **main.js** script is using
modules.

After completing this task, all three columns should render again and
you should see the radio-style `<input>` elements rendered in your
application!

## Create the workAroundModule

5\.

Great job! You now have radio-style `<input>` elements for the different
companies and roles represented in the salary dataset. Try selecting a
combination of company and role and you’ll see that the data isn’t being
calculated. Instead, all four values are showing up as \$0.

Open up **workAroundModule.js** where you will find four functions that
each calculate a different data value that we want to display. They are
currently incomplete.

To complete these four functions, you will need some data from
**salaryData.js**.

- Import the functions `getDataByRole()` and `getDataByCompany()` from
  **salaryData.js** using named `import` syntax.
- Import `salaryData` from **salaryData.js** using the default `import`
  syntax.

> Note: The reason these functions are in a separate module from
> **salaryData.js** is to achieve separation of concerns.
> **salaryData.js** is concerned only with providing access to raw data
> while **workAroundModule.js** is concerned with digging into the data
> to find precise values.

6\.

Each of the incomplete functions in **workAroundModule.js** contains an
empty array (`[]`) that needs to be replaced. You will need to use the
appropriate imported data/functions from the **salaryData.js** module to
replace these arrays.

7\.

As a final step, to make these functions available to **main.js**,
export the four functions using named `export` syntax.

## Calculate and render the data when the user input changes

8\.

We are all set up now to use the functions defined in
**workAroundModule.js** to calculate and render the data based on the
user’s input selections.

In **main.js**, import the four functions from **workAroundModule.js**.

9\.

And finally, take a look at `updateResults()`. This function is called
any time the user selects one of the radio input elements.

At the top of the definition of `updateResults()`, the `company` and
`role` selected by the user are extracted from the `<input>` elements.
These values can be used in combination with the imported functions from
**workAroundModule.js** to calculate the four variables below:

``` js
const averageSalaryByRole = 0;
const averageSalaryByCompany = 0;
const salary = 0;
const industryAverageSalary = 0;
```

As you can see, they are all assigned to `0` rather than the appropriate
calculated data. Replace each `0` with a call to the appropriate
imported function from **workAroundModule.js** using either (or both)
`company` and `role` as arguments.

## Extra Challenge

10\.

Congrats! You’ve helped WorkAround build their WorkAround Explorer
application using a modular approach. The end result is a well-organized
program with clear boundaries for each of its separate concerns.

Often, programmers will create a set of generic “utility” functions that
can be applied to any program, regardless of the context. In this case,
it would be useful to have a function that can properly format a number,
like so:

``` js
const result = formatNumber(1234567.89);
// result = "1,234,567.89"
```

As an extra challenge:

- Create a new file in the **modules/** directory called
  **utilities.js**.
- Define and export a function in **utilities.js** called
  `formatNumber()`. This function should have a `number` parameter and
  should return a string representation of that `number` value with a
  comma (`,`) character between every 3rd digit.
- Import this function into **main.js** and use it to format the four
  data values rendered to the screen.

## [Solution](es6-modules-workaround)

# Learn JavaScript: Error Handling

## Introduction to Error Handling

There are two categories of programming mistakes: those that don’t
prevent our code from running and those that do.

Sometimes, we’ve written code that successfully returns a value but a
different value from what we expected. Our program continues running,
and we might not even realize anything went wrong until much later. It’s
like making soup and accidentally adding sugar instead of salt. In the
end we still have soup, but it might not be soup that we want to eat. We
will not be focusing on these mistakes.

Rather, we’re going to focus on the errors that pop up when we’ve
written code that causes our program to stop running, e.g. trying to
reassign a `const` variable. Instead of returning anything, our program
will not execute any more code past where the error occurred. For
example, what if we tried to move our soup to the table but dropped it
because it was too hot? Then our soup-making process is over— there
would be no soup.

We can’t always stop errors before they occur, but we can include a
backup plan in our program to anticipate and respond to the errors to
ensure that our program continues running. *Error handling* is the
process of programmatically anticipating and addressing errors. In
JavaScript, we handle errors using the keywords `try` and `catch`. We
`try` to move the soup to the table, making sure there’s someone or
something nearby to `catch` the soup in case we drop it.

In this lesson we’ll learn more about errors and how to create a backup
plan to allow our program to continue running. When you’re ready, let’s
*try* to get a *handle* on these JavaScript errors!



<img src="https://content.codecademy.com/courses/learn-javascript-error-handling/falling%20soup.svg" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Runtime Errors

Errors contain useful messages that tell us why our program isn’t
working or why the error was *thrown*. When an error is thrown, our
program stops running and the console displays the error message in red
text like so:

<img
src="https://content.codecademy.com/courses/learn-javascript-error-handling/error_diagram.svg"
class="img__1JGFO2nlisObc3KeOSGPRp" style="width:100.0%" />

When we execute code and a line of code throws an error, that error is
referred to as a *runtime error*. In JavaScript, there are built-in
error objects that have a `name` and `message` property which tell us
what went wrong. Examples of built-in runtime errors include:

- `ReferenceError`: when a variable or function cannot be found.
- `TypeError`: when a value is not a valid type, see the example below:

``` js
const reminder = 'Reduce, Reuse, Recycle';
reminder = 'Save the world';
// TypeError: Assignment to constant variable.
console.log('This will never be printed!');
```

In the example above, when we try to reassign a constant variable
`reminder`, the `TypeError` is thrown. Code that is written after a
thrown runtime error will not be evaluated, so the `console.log()`
statement will not be evaluated.

Let’s see for ourselves what happens when a runtime error is thrown.



**1.**

In **main.js**, we have a function `throwError()` that will throw a
`ReferenceError`. There are also two `console.log()` statements, one at
the top of the file and one at the bottom.

Call throwError() below the comment that indicates to call it. Observe
what code runs and what code doesn’t.



``` javascript
console.log('This message will be printed to the console.');

function throwError () {
  return notDefinedVar;
}

// Call throwError() below:
throwError();

console.log('Because of the error, this will not printed!');
```

## Constructing an Error

JavaScript errors are objects that have a name and message property.
Previously, we’ve seen how built-in errors alert us about common
mistakes in our code. But, what if we need an error message that isn’t
covered by the built-in errors? Let’s say we need to inform a user that
a string passed in as an argument is too short with a custom message.
Such a message isn’t covered by a built-in error, but we could use the
`Error` function to make our own error object with a message that is
unique to our program!

``` js
console.log(Error('Your password is too weak.'));
// Prints: Error: Your password is too weak.
```

The `Error` function takes an argument of a string which becomes the
value of the error’s `message` property. In the code snippet above, we
used the `Error` function to create an error object that has the message
`'Your password is too weak.'`.

You might also see errors created with the `new` keyword. Both methods
will lead to the same functionality. Take a look:

``` js
console.log(new Error('Your password is too weak.'));
// Prints: Error: Your password is too weak.
```

Keep in mind that creating an error is not the same as throwing an
error. A thrown error will cause the program to stop running. We cover
how to throw our created errors in the next exercise!



**1.**

At the top of **main.js** add a `console.log()` that prints an error
with the message `'User missing name'`.

After running the code, take note of the `console.log()` at the bottom
of **main.js** and if that line of code still runs.



``` javascript
// Write your code below:
console.log(Error('User missing name'));


console.log('Will logging the error stop our program from running?');
```

    ## Error: User missing name
    ##     at [eval]:2:13
    ##     at Script.runInThisContext (node:vm:128:12)
    ##     at Object.runInThisContext (node:vm:306:38)
    ##     at node:internal/process/execution:83:21
    ##     at [eval]-wrapper:6:24
    ##     at runScript (node:internal/process/execution:82:62)
    ##     at evalScript (node:internal/process/execution:104:10)
    ##     at node:internal/main/eval_string:50:3
    ## Will logging the error stop our program from running?

## The throw Keyword

Creating an error doesn’t cause our program to stop — remember, an error
must be thrown for it to halt the program.

To throw an error in JavaScript, we use the `throw` keyword like so:

``` js
throw Error('Something wrong happened');
// Error: Something wrong happened
```

When we use the `throw` keyword, the error is thrown and code after the
`throw` statement will not execute. Take for example:

``` js
throw Error('Something wrong happened');
// Error: Something wrong happened
 
console.log('This will never run');
```

After `throw Error('Something wrong happened');` is executed and the
error object is thrown, the `console.log()` statement will not run (just
like when a built-in JavaScript error was thrown!).

In the next lesson we will cover how to handle an error so that the rest
of our code can run!



**1.**

Use the `throw` keyword to throw an error with the message
`'Username or password does not match'`

After you clear this checkpoint, try adding some code after your throw
statement. Also, try to throw a new error and other data types to see
what happens!



``` javascript
throw Error('Username or password does not match');
```

## The try…catch Statement

Up to this point, thrown errors have caused our program to stop running.
But, we have the ability to anticipate and *handle* these errors by
writing code to address the error and allow our program to continue
running.

In JavaScript, we use `try...catch` statement to anticipate and handle
errors. Take a look at example below:

``` js
try {
  throw Error('This error will get caught');
} catch (e) {
  console.log(e);
}
// Prints: This error will get caught
 
console.log('The thrown error that was caught in the try...catch statement!');
// Prints: 'The thrown error that was caught in the try...catch statement!'
```

Now, let’s break down what happened in the `try...catch` statement
above:

- We have code that follows `try` inside curly braces `{}` known as the
  *`try` block*.
- Inside the `try` block we insert code that we anticipate might throw
  an error.
- Since we want to see what happens if an error is thrown in the `try`
  block, we throw an error with the message
  `'This error will get caught'`.
- Following the `try` block is the `catch` statement which accepts the
  thrown error from the `try` block . The `e` represents the thrown
  error.
- The curly braces that follow `catch(e)` is known as the *catch block*
  and contains code that executes to handle the error.
- Since the error is caught, our `console.log()` after the `try...catch`
  statement prints
  `'The thrown error that was caught in the try...catch statement!'`.

Generally speaking, in a `try...catch` statement, we evaluate code in
the `try` block and if the code throws an error, the code inside the
`catch` block will handle the error for us. The provided example just
showcases how a `try...catch` statement works because we know an error
is being thrown. Let’s first practice writing our own `try...catch`
statement and afterwards we will go over a more practical usage of
`try...catch`.



**1.**

Create a `try...catch` statement that doesn’t have any code in the `try`
block or the `catch` block. The `catch` statement will have accept `e`
for the error object.

**2.**

In the `try` block, throw an error using the `Error()` function and pass
into `Error()` a string containing a message of your choice!

**3.**

Inside the `catch` block, log the error to the console.



``` javascript
try {
  throw Error('Practicing throwing');
} catch (e) {
  console.log(e);
}
```

    ## Error: Practicing throwing
    ##     at [eval]:2:9
    ##     at Script.runInThisContext (node:vm:128:12)
    ##     at Object.runInThisContext (node:vm:306:38)
    ##     at node:internal/process/execution:83:21
    ##     at [eval]-wrapper:6:24
    ##     at runScript (node:internal/process/execution:82:62)
    ##     at evalScript (node:internal/process/execution:104:10)
    ##     at node:internal/main/eval_string:50:3

## Handling with try…catch

In the previous exercise we caught an error that we threw, but we can
also use a `try...catch` statement to handle built-in errors that are
thrown by the *JavaScript engine* that is reading and evaluating our
code.

``` js
const someVar = 'Cannot be reassigned';
try {
  someVar = 'Still going to try';
} catch(e) {
  console.log(e);
}
// Prints: TypeError: Assignment to constant variable.
```

In the example above, we didn’t use the `throw` keyword to throw a
custom error, rather we tried to re-assign a `const` variable and a
`TypeError` was thrown. Then, in our `catch` block, we logged the error
to the console.

Using a `try...catch` statement for built-in JavaScript errors is really
beneficial when we need to use data from an external source that’s not
written directly in our program.

Let’s say we expect to grab an array from a database but the information
we get back is a string. In our program, we could have a function that
only works on arrays. If that function was called with a string instead
of an array we would get an error and our program would stop running!

However, we can use a `try...catch` statement to handle the thrown error
for us which allows our program to continue running and we receive a
message knowing what went wrong! Let’s see how we can implement this in
our code.



**1.**

In **main.js** there is a function `capAllElements()` that takes an
array of elements and capitalizes each element.

Currently, it’s written in a way the function will execute regardless of
what argument is passed in but if the argument isn’t an array, an error
is thrown and our program stops running. Run your code to see what error
shows up in the console.

Let’s handle that error:

- Put the existing `arr.forEach(...)` code in a `try` block.
- Add a `catch` statement after the `try` block and inside the `catch`
  block log the error to the console.



``` javascript
function capAllElements(arr){
  try{
    arr.forEach((el, index, array) => {
      array[index] = el.toUpperCase();
    });
  } catch(e) {
    console.log(e);
  }
}

capAllElements('Incorrect argument');
```

    ## TypeError: arr.forEach is not a function
    ##     at capAllElements ([eval]:3:8)
    ##     at [eval]:11:1
    ##     at Script.runInThisContext (node:vm:128:12)
    ##     at Object.runInThisContext (node:vm:306:38)
    ##     at node:internal/process/execution:83:21
    ##     at [eval]-wrapper:6:24
    ##     at runScript (node:internal/process/execution:82:62)
    ##     at evalScript (node:internal/process/execution:104:10)
    ##     at node:internal/main/eval_string:50:3

## Error Handling Review

Great job with handling errors!

In this lesson we went over:

- How mistakes in programming leads to errors.
- Why errors are useful for developers.
- Errors will prevent a program from executing unless it is handled.
- How to create an error using the `Error()` function.
- How to throw an error object using the `throw` keyword.
- How to use the `try...catch` statement to handle thrown errors.
- Evaluating code in a `try` block to anticipate errors.
- Catching the error in a `catch` block to allow our program to continue
  running.
- Why the `try...catch` statement would be useful in a program.

Now you have the ability to create code that doesn’t break when an error
is thrown!



If you want to challenge yourself:

- Force different built-in error object to be thrown in a `try...catch`
  statement and see when the messages are different.
- Test out what different data types you can throw.
- Use `try...catch` for a function that accepts user input to allow
  errors to be thrown but your program to continue running.

# Review: JavaScript Syntax, Part III

In this unit, you learned intermediate JavaScript concepts.

Congratulations! The goal of this unit was to understand intermediate
JavaScript concepts, such as classes and modules. Knowing these concepts
should improve your ability to write JavaScript programs and prepare you
for creating web applications.

Having completed this unit, you are now able to:

- Create classes in JavaScript
- Implement JavaScript Modules
- Create JavaScripts errors and handle them

If you are interested in learning more about these topics, here are some
additional resources:

- Article: <a
  href="https://addyosmani.com/resources/essentialjsdesignpatterns/book/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">JavaScript Design Patterns by Andy
  Osmani</a>
- Article: <a
  href="https://engineering.helpscout.com/reducing-complexity-with-guard-clauses-in-php-and-javascript-74600fd865c7"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Reducing Complexity with Guard Clauses
  in PHP and JavaScript by Craig Davis</a>
- Documentation: <a
  href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Inheritance_and_the_prototype_chain"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Inheritance and the Prototype Chain</a>
- Article: <a
  href="https://www.digitalocean.com/community/tutorials/understanding-prototypes-and-inheritance-in-javascript"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Understanding Prototypes and
  Inheritance in JavaScript</a>
- Article: <a
  href="https://www.taniarascia.com/understanding-classes-in-javascript/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Understanding Classes in JavaScript</a>

Learning is social. Whatever you’re working on, be sure to connect with
the Codecademy community in the
<a href="https://discuss.codecademy.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">forums</a>. Remember to check in with the
community regularly, including for things like asking for code reviews
on your project work and providing code reviews to others in the
<a href="https://discuss.codecademy.com/c/project/1833"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">projects category</a>, which can help to
reinforce what you’ve learned.
