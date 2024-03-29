# Welcome To Build Python Web Apps with Flask

Welcome to the Build Python Web Apps with Flask Skill Path! Let’s talk
about what you’ll learn in this path.

Welcome to the Build Python Web Apps with Flask Skill Path! This path
will take you from writing your first line of Python code all the way to
creating a fully-featured web application.

The path is broken into 8 main sections.

1.  **Introduction to Python?** — We’ll teach you some Python basics to
    help you navigate through the world of code.
2.  **Python Data Structures and Loops** — Learn fundamental programming
    topics like loops and classes. Also, learn about different data
    structures that we’ll use throughout the course.
3.  **Introduction to the Web** — Get a crash course in the web
    technologies HTML and CSS.
4.  **Introduction to Flask** — Learn how web applications function, and
    create your own simple app!
5.  **SQL and Databases for Back-End Web Apps** — Learn how to store and
    access data in databases using SQL and Python.
6.  **Advanced Flask Functionality** — Discover how to add personalized
    experiences and security to your web applications with accounts and
    authentication.
7.  **Deploying an Application** — Find out how to share your work with
    the world by deploying your applications to the internet for all to
    see.
8.  **Capstone Project** — Put all of your knowledge to the test and
    build a fully-featured Flask application.

We’re excited for you to get started, and good luck!

# Hello World

## Welcome

Python is a programming language. Like other languages, it gives us a
way to communicate ideas. In the case of a programming language, these
ideas are “commands” that people use to communicate with a computer!

We convey our commands to the computer by writing them in a text file
using a programming language. These files are called *programs*. Running
a program means telling a computer to read the text file, translate it
to the set of operations that it understands, and perform those actions.



Change `Codecademy` to your name in the script to the right. Run the
code to see what it does!

As soon as you’re ready, move on to the next exercise to begin learning
to write your own Python programs!



``` python
my_name = "Codecademy"
print("Hello and welcome " + my_name + "!")
```

    ## Hello and welcome Codecademy!

## Comments

Ironically, the first thing we’re going to do is show how to tell a
computer to ignore a part of a program. Text written in a program but
not run by the computer is called a <a
href="https://www.codecademy.com/resources/docs/python/comments?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">comment</a>. Python interprets anything after a `#` as a
comment.

Comments can:

- Provide context for why something is written the way it is:

  ``` python
  # This variable will be used to count the number of times anyone tweets the word persnickety
  persnickety_count = 0
  ```

- Help other people reading the code understand it faster:

  ``` python
  # This code will calculate the likelihood that it will rain tomorrow
  complicated_rain_calculation_for_tomorrow()
  ```

- Ignore a line of code and see how a program will run without it:

  ``` python
  # useful_value = old_sloppy_code()
  useful_value = new_clean_code()
  ```



**1.**

Documentation is an important step in programming. Write a comment
describing the first program you want to write!



``` python
# A web application that teaches the world to upgrade their careers with new skills
```

## Print

Now what we’re going to do is teach our computer to communicate. The
gift of speech is valuable: a computer can answer many questions we have
about “how” or “why” or “what” it is doing. In Python, the <a
href="https://www.codecademy.com/resources/docs/python/built-in-functions/print?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">print()</code></a> function is used
to tell a computer to talk. The message to be printed should be
surrounded by quotes:

``` python
# from Mary Shelley's Frankenstein
print("There is something at work in my soul, which I do not understand.")
```

In the above example, we direct our program to `print()` an excerpt from
a notable book. The printed words that appear as a result of the
`print()` function are referred to as *output*. The output of this
example program would be:

    There is something at work in my soul, which I do not understand.



**1.**

Print the distinguished greeting “Hello world!”



``` python
print("Hello world!")
```

    ## Hello world!

## Strings

Computer programmers refer to blocks of text as <a
href="https://www.codecademy.com/resources/docs/python/strings?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">strings</a>. In our last exercise, we created the string
“Hello world!”. In Python a string is either surrounded by double quotes
(`"Hello world"`) or single quotes (`'Hello world'`). It doesn’t matter
which kind you use, just be consistent.



**1.**

Print your name using the `print()` command.

**2.**

If your print statement uses double-quotes `"`, change them to
single-quotes `'`. If it uses single-quotes `'`, change them to
double-quotes `"`.

Try running your code again after switching the type of quote-marks. Is
anything different about the output?



``` python
print("Codecademy")
print('Codecademy')
```

    ## Codecademy

    ## Codecademy

## Variables

Programming languages offer a method of storing data for reuse. If there
is a greeting we want to present, a date we need to reuse, or a user ID
we need to remember we can create a <a
href="https://www.codecademy.com/resources/docs/python/variables?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">variable</a> which can store a value. In Python, we <a
href="https://www.codecademy.com/resources/docs/python/operators?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>assign</em></a> variables by using the equals sign
(`=`).

``` python
message_string = "Hello there"
# Prints "Hello there"
print(message_string)
```

In the above example, we store the message “Hello there” in a variable
called `message_string`. Variables can’t have spaces or symbols in their
names other than an underscore (`_`). They can’t begin with numbers but
they can have numbers after the first letter (e.g., `cool_variable_5` is
OK).

It’s no coincidence we call these creatures “variables”. If the context
of a program changes, we can update a variable but perform the same
logical process on it.

``` python
# Greeting
message_string = "Hello there"
print(message_string)

# Farewell
message_string = "Hasta la vista"
print(message_string)
```

Above, we create the variable `message_string`, assign a welcome
message, and print the greeting. After we greet the user, we want to
wish them goodbye. We then update `message_string` to a departure
message and print that out.



**1.**

Update the variable `meal` to reflect each meal of the day before we
print it.



``` python
# We've defined the variable "meal" here to the name of the food we ate for breakfast!
meal = "An english muffin"

# Printing out breakfast
print("Breakfast:")
print(meal)

# Now update meal to be lunch!
meal = "Big salad"

# Printing out lunch
print("Lunch:")
print(meal)

# Now update "meal" to be dinner
meal = "Tofu and Rice"

# Printing out dinner
print("Dinner:")
print(meal)
```

    ## Breakfast:

    ## An english muffin

    ## Lunch:

    ## Big salad

    ## Dinner:

    ## Tofu and Rice

## Errors

Humans are prone to making mistakes. Humans are also typically in charge
of creating computer programs. To compensate, programming languages
attempt to understand and explain mistakes made in their programs.

Python refers to these mistakes as <a
href="https://www.codecademy.com/resources/docs/python/errors?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">errors</a> and will point to the location where an error
occurred with a `^` character. When programs throw errors that we didn’t
expect to encounter we call those errors *bugs*. Programmers call the
process of updating the program so that it no longer produces unexpected
errors *debugging*.

Two common errors that we encounter while writing Python are
`SyntaxError` and `NameError`.

- `SyntaxError` means there is something wrong with the way your program
  is written — punctuation that does not belong, a command where it is
  not expected, or a missing parenthesis can all trigger a
  `SyntaxError`.

- A `NameError` occurs when the Python interpreter sees a word it does
  not recognize. Code that contains something that looks like a variable
  but was never defined will throw a `NameError`.



**1.**

You might encounter a `SyntaxError` if you open a string with a single
quote and end it with double quotes. Update the string so that it starts
and ends with the same punctuation.

You might encounter a `NameError` if you try to print a single word
string but fail to put any quotes around it. Python expects the word of
your string to be defined elsewhere but can’t find where it’s defined.
Add quotes to either side of the string to squash this bug.

Update the malformed strings in the workspace to all be strings.



``` python
print("This message has mismatched quote marks!")
print("Abracadabra")
```

    ## This message has mismatched quote marks!

    ## Abracadabra

## Numbers

Computers can understand much more than just strings of text. Python has
a few <a
href="https://www.codecademy.com/resources/docs/python/data-types?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">numeric <em>data types</em>.</a> It has multiple ways of
storing numbers. Which one you use depends on your intended purpose for
the number you are saving.

An *integer*, or `int`, is a whole number. It has no decimal point and
contains all counting numbers (1, 2, 3, …) as well as their negative
counterparts and the number 0. If you were counting the number of people
in a room, the number of jellybeans in a jar, or the number of keys on a
keyboard you would likely use an integer.

A *floating-point number*, or a `float`, is a decimal number. It can be
used to represent fractional quantities as well as precise measurements.
If you were measuring the length of your bedroom wall, calculating the
average test score of a seventh-grade class, or storing a baseball
player’s batting average for the 1998 season you would likely use a
`float`.

Numbers can be assigned to variables or used literally in a program:

``` python
an_int = 2
a_float = 2.1

print(an_int + 3)
# Output: 5
```

Above we defined an integer and a float as the variables `an_int` and
`a_float`. We printed out the sum of the variable `an_int` with the
number `3`. We call the number 3 here a *literal*, meaning it’s actually
the number `3` and not a variable with the number 3 assigned to it.

Floating-point numbers can behave in some unexpected ways due to how
computers store them. For more information on floating-point numbers and
Python, review
<a href="https://docs.python.org/3/tutorial/floatingpoint.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Python’s documentation on floating-point
limitations</a>.



**1.**

A recent movie-going experience has you excited to publish a review. You
rush out of the cinema and hastily begin programming to create your
movie-review website: *The Big Screen’s Greatest Scenes Decided By A
Machine*.

Create the following variables and assign integer numbers to them:
`release_year` and `runtime`.

**2.**

Now, create the variable `rating_out_of_10` and assign it a float number
between one and ten.



``` python
# Define the release and runtime integer variables below:
release_year = 1990

runtime = 128

# Define the rating_out_of_10 float variable below: 
rating_out_of_10 = 9.4
```

## Calculations

Computers absolutely excel at performing calculations. The “compute” in
their name comes from their historical association with providing
answers to mathematical questions. Python performs the <a
href="https://www.codecademy.com/resources/docs/python/operators?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">arithmetic operations</a> of addition, subtraction,
multiplication, and division with `+`, `-`, `*`, and `/`.

``` python
# Prints "500"
print(573 - 74 + 1)

# Prints "50"
print(25 * 2)

# Prints "2.0"
print(10 / 5)
```

Notice that when we perform division, the result has a decimal place.
This is because Python converts all `int`s to `float`s before performing
division. In older versions of Python (2.7 and earlier) this conversion
did not happen, and integer division would always round down to the
nearest integer.

Division can throw its own special error: `ZeroDivisionError`. Python
will raise this error when attempting to divide by 0.

Mathematical operations in Python follow the standard mathematical <a
href="https://www.codecademy.com/resources/docs/python/operators?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">order of operations</a>.



**1.**

Print out the result of this equation: `25 * 68 + 13 / 28`



``` python
print(25 * 68 + 13 / 28)
```

    ## 1700.4642857142858

## Changing Numbers

Variables that are assigned numeric values can be treated the same as
the numbers themselves. Two variables can be added together, divided by
`2`, and multiplied by a third variable without Python distinguishing
between the variables and *literals* (like the number `2` in this
example). Performing arithmetic on variables does not change the
variable — you can only update a variable using the `=` sign.

``` python
coffee_price = 1.50
number_of_coffees = 4

# Prints "6.0"
print(coffee_price * number_of_coffees)
# Prints "1.5"
print(coffee_price)
# Prints "4"
print(number_of_coffees)

# Updating the price 
coffee_price = 2.00

# Prints "8.0"
print(coffee_price * number_of_coffees)
# Prints "2.0"
print(coffee_price)
# Prints "4"
print(number_of_coffees)
```

We create two variables and assign numeric values to them. Then we
perform a calculation on them. This doesn’t update the variables! When
we update the `coffee_price` variable and perform the calculations
again, they use the updated values for the variable!



**1.**

You’ve decided to get into quilting! To calculate the number of squares
you’ll need for your first quilt let’s create two variables:
`quilt_width` and `quilt_length`. Let’s make this first quilt 8 squares
wide and 12 squares long.

**2.**

Print out the number of squares you’ll need to create the quilt!

**3.**

It turns out that quilt required a little more material than you have on
hand! Let’s only make the quilt 8 squares long. How many squares will
you need for this quilt instead?



``` python
# First we create the variables
quilt_width = 8
quilt_length = 12

# Then we print the size
print(quilt_width * quilt_length)

# Whoops! That's a little too large
quilt_length = 8

# Let's see how large it is now
print(quilt_width * quilt_length)
```

    ## 96

    ## 64

## Exponents

Python can also perform exponentiation. In written math, you might see
an <a
href="https://www.codecademy.com/resources/docs/python/operators?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">exponent</a> as a superscript number, but typing
superscript numbers isn’t always easy on modern keyboards. Since this
operation is so related to multiplication, we use the notation `**`.

``` python
# 2 to the 10th power, or 1024
print(2 ** 10)

# 8 squared, or 64
print(8 ** 2)

# 9 * 9 * 9, 9 cubed, or 729
print(9 ** 3)

# We can even perform fractional exponents
# 4 to the half power, or 2
print(4 ** 0.5)
```

Here, we compute some simple exponents. We calculate 2 to the 10th
power, 8 to the 2nd power, 9 to the 3rd power, and 4 to the 0.5th power.



**1.**

You really like how the square quilts from last exercise came out, and
decide that all quilts that you make will be square from now on.

Using the exponent operator, print out how many squares you’ll need for
a 6x6 quilt, a 7x7 quilt, and an 8x8 quilt.

**2.**

Your 6x6 quilts have taken off so well, 6 people have each requested 6
quilts. Print out how many tiles you would need to make 6 quilts for
each of the 6 people.



``` python
print(6 ** 2)
print(7 ** 2)
print(8 ** 2)

print(6 ** 4)
```

    ## 36

    ## 49

    ## 64

    ## 1296

## Modulo

Python offers a companion to the division operator called the modulo
operator. The <a
href="https://www.codecademy.com/resources/docs/python/modulo?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">modulo operator</a> is indicated by `%` and gives the
remainder of a division calculation. If the number is divisible, then
the result of the modulo operator will be 0.

``` python
# Prints 4 because 29 / 5 is 5 with a remainder of 4
print(29 % 5)

# Prints 2 because 32 / 3 is 10 with a remainder of 2
print(32 % 3)

# Modulo by 2 returns 0 for even numbers and 1 for odd numbers
# Prints 0
print(44 % 2)
```

Here, we use the modulo operator to find the remainder of division
operations. We see that `29 % 5` equals 4, `32 % 3` equals 2, and
`44 % 2` equals 0.

The modulo operator is useful in programming when we want to perform an
action every nth-time the code is run. Can the result of a modulo
operation be larger than the divisor? Why or why not?



**1.**

You’re trying to divide a group into four teams. All of you count off.

- person 1 goes to team 1

- person 2 goes to team 2

- person 3 goes to team 3

- person 4 goes to team 4

- person 5 goes to team 1

- And so forth…

You’re person number 27. Find out your team by computing 27 modulo 4.
Save the value to `my_team`.

**2.**

Print out `my_team`. What number team are you on?

**3.**

Food for thought: what number team are the two people next to you (26
and 28) on? What are the numbers for all 4 teams? (Optional Challenge
Question)



``` python
my_team = (27 % 4)

print (my_team)

print(26 % 4)
print(28 % 4)
```

    ## 3

    ## 2

    ## 0

## Concatenation

The `+` operator doesn’t just add two numbers, it can also “add” two
strings! The process of combining two strings is called <a
href="https://www.codecademy.com/resources/docs/python/strings?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>string concatenation</em></a>. Performing string
concatenation creates a brand new string comprised of the first string’s
contents followed by the second string’s contents (without any added
space in-between).

``` python
greeting_text = "Hey there!"
question_text = "How are you doing?"
full_text = greeting_text + question_text

# Prints "Hey there!How are you doing?"
print(full_text)
```

In this sample of code, we create two variables that hold strings and
then concatenate them. But we notice that the result was missing a space
between the two, let’s add the space in-between using the same
concatenation operator!

``` python
full_text = greeting_text + " " + question_text

# Prints "Hey there! How are you doing?"
print(full_text)
```

Now the code prints the message we expected.

If you want to concatenate a string with a number you will need to make
the number a string first, using the <a
href="https://www.codecademy.com/resources/docs/python/built-in-functions/str?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code class="code__2rdF32qjRVp7mMVBHuPwDS">str()</code>
function</a>. If you’re trying to `print()` a numeric variable you can
use commas to pass it as a different argument rather than converting it
to a string.

``` python
birthday_string = "I am "
age = 10
birthday_string_2 = " years old today!"

# Concatenating an integer with strings is possible if we turn the integer into a string first
full_birthday_string = birthday_string + str(age) + birthday_string_2

# Prints "I am 10 years old today!"
print(full_birthday_string)

# If we just want to print an integer 
# we can pass a variable as an argument to 
# print() regardless of whether 
# it is a string.

# This also prints "I am 10 years old today!"
print(birthday_string, age, birthday_string_2)
```

Using `str()` we can convert variables that are not strings to strings
and then concatenate them. But we don’t need to convert a number to a
string for it to be an argument to a print statement.



**1.**

Concatenate the strings and save the message they form in the variable
`message`.

Now uncomment the print statement and run your code to see the result in
the terminal!



``` python
string1 = "The wind, "
string2 = "which had hitherto carried us along with amazing rapidity, "
string3 = "sank at sunset to a light breeze; "
string4 = "the soft air just ruffled the water and "
string5 = "caused a pleasant motion among the trees as we approached the shore, "
string6 = "from which it wafted the most delightful scent of flowers and hay."

message = string1 + string2 + string3 + string4 + string5 + string6
print(message)
```

    ## The wind, which had hitherto carried us along with amazing rapidity, sank at sunset to a light breeze; the soft air just ruffled the water and caused a pleasant motion among the trees as we approached the shore, from which it wafted the most delightful scent of flowers and hay.

## Plus Equals

Python offers a shorthand for updating variables. When you have a number
saved in a variable and want to add to the current value of the
variable, you can use the `+=` <a
href="https://www.codecademy.com/resources/docs/python/operators?page_req=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">(plus-equals) operator</a>.

``` python
# First we have a variable with a number saved
number_of_miles_hiked = 12

# Then we need to update that variable
# Let's say we hike another two miles today
number_of_miles_hiked += 2

# The new value is the old value
# Plus the number after the plus-equals
print(number_of_miles_hiked)
# Prints 14
```

Above, we keep a running count of the number of miles a person has gone
hiking over time. Instead of recalculating from the start, we keep a
grand total and update it when we’ve gone hiking further.

The plus-equals operator also can be used for string concatenation, like
so:

``` python
hike_caption = "What an amazing time to walk through nature!"

# Almost forgot the hashtags!
hike_caption += " #nofilter"
hike_caption += " #blessed"
```

We create the social media caption for the photograph of nature we took
on our hike, but then update the caption to include important social
media tags we almost forgot.



**1.**

We’re doing a little bit of online shopping and find a pair of new
sneakers. Right before we check out, we spot a nice sweater and some fun
books we also want to purchase!

Use the `+=` operator to update the `total_price` to include the prices
of `nice_sweater` and `fun_books`.

The prices (also included in the workspace) are:

- `new_sneakers = 50.00`
- `nice_sweater = 39.00`
- `fun_books = 20.00`



``` python
total_price = 0

new_sneakers = 50.00

total_price += new_sneakers

nice_sweater = 39.00
fun_books = 20.00
# Update total_price here:

total_price += nice_sweater
total_price += fun_books

print("The total price is", total_price)
```

    ## The total price is 109.0

## Multi-line Strings

Python strings are very flexible, but if we try to create a string that
occupies multiple lines we find ourselves face-to-face with a
`SyntaxError`. Python offers a solution: <a
href="https://www.codecademy.com/resources/docs/python/strings?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>multi-line</em> strings</a>. By using three
quote-marks (`"""` or `'''`) instead of one, we tell the program that
the string doesn’t end until the next triple-quote. This method is
useful if the string being defined contains a lot of quotation marks and
we want to be sure we don’t close it prematurely.

``` python
leaves_of_grass = """
Poets to come! orators, singers, musicians to come!
Not to-day is to justify me and answer what I am for,
But you, a new brood, native, athletic, continental, greater than
 before known,
Arouse! for you must justify me.
"""
```

In the above example, we assign a famous poet’s words to a variable.
Even though the quote contains multiple linebreaks, the code works!

If a multi-line string isn’t assigned a variable or used in an
expression it is treated as a comment.



**1.**

Assign the string

    Stranger, if you passing meet me and desire to speak to me, why
     should you not speak to me?
    And why should I not speak to you?

to the variable `to_you`.



``` python
to_you = """Stranger, if you passing meet me and desire to speak to me, why
  should you not speak to me?
And why should I not speak to you?"""

print(to_you)
```

    ## Stranger, if you passing meet me and desire to speak to me, why
    ##   should you not speak to me?
    ## And why should I not speak to you?

## Review

In this lesson, we accomplished a lot of things! We instructed our
computers to print messages, we stored these messages as variables, and
we learned to update those messages depending on the part of the program
we were in. We performed mathematical calculations and explored some of
the mathematical expressions that Python offers us. We learned about
errors and other valuable skills that will continue to serve us as we
develop our programming skills.

Good job!

Here are a few more resources to add to your toolkit:

- <a
  href="https://www.codecademy.com/resources/docs/python?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">Codecademy Docs: Python</a>
- <a href="https://www.codecademy.com/workspaces/new"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">Codecademy Workspaces: Python</a>

Make sure to bookmark these links so you have them at your disposal.



**1.**

Create variables:

- `my_age`
- `half_my_age`
- `greeting`
- `name`
- `greeting_with_name`

Assign values to each using your knowledge of division and
concatenation!



``` python
my_age = 34
half_my_age = my_age / 2
greeting = "How's your day been"
name = "Andrea"
greeting_with_name = greeting + name
```

# Receipts for Lovely Loveseats

We’ve decided to pursue the dream of small-business ownership and open
up a furniture store called *Lovely Loveseats for Neat Suites on Fleet
Street*. With our newfound knowledge of Python programming, we’re going
to build a system to help speed up the process of creating receipts for
your customers.

In this project, we will be storing the names and prices of a furniture
store’s catalog in variables. You will then process the total price and
item list of customers, printing them to the output terminal.

**Please note:** Projects do not run tests against your code. This
experience is more open to your interpretation and gives you the freedom
to explore. Remember that all variables must be declared *before* they
are referenced in your code.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

## Instructions

Mark the tasks as complete by checking them off

### Adding In The Catalog

1\.

Let’s add in our first item, the Lovely Loveseat that is the store’s
namesake. Create a variable called `lovely_loveseat_description` and
assign to it the following string:

    Lovely Loveseat. Tufted polyester blend on wood. 32 inches high x 40 inches wide x 30 inches deep. Red or white.

2\.

Great, now let’s create a price for the loveseat. Create a variable
`lovely_loveseat_price` and set it equal to `254.00`.

3\.

Let’s extend our inventory with another characteristic piece of
furniture! Create a variable called `stylish_settee_description` and
assign to it the following string:

    Stylish Settee. Faux leather on birch. 29.50 inches high x 54.75 inches wide x 28 inches deep. Black.

4\.

Now let’s set the price for our Stylish Settee. Create a variable
`stylish_settee_price` and assign it the value of `180.50`.

5\.

Fantastic, we just need one more item before we’re ready for business.
Create a new variable called `luxurious_lamp_description` and assign it
the following:

    Luxurious Lamp. Glass and iron. 36 inches tall. Brown with cream shade.

6\.

Let’s set the price for this item. Create a variable called
`luxurious_lamp_price` and set it equal to `52.15`.

7\.

In order to be a business, we should also be calculating sales tax.
Let’s store that in a variable as well.

Define the variable `sales_tax` and set it equal to `.088`. That’s 8.8%.

### Our First Customer

8\.

Our first customer is making their purchase! Let’s keep a running tally
of their expenses by defining a variable called `customer_one_total`.
Since they haven’t purchased anything yet, let’s set that variable equal
to `0` for now.

9\.

We should also keep a list of the descriptions of things they’re
purchasing. Create a variable called `customer_one_itemization` and set
that equal to the empty string `""`. We’ll tack on the descriptions to
this as they make their purchases.

10\.

Our customer has decided they are going to purchase our Lovely Loveseat!
Add the price to `customer_one_total`.

11\.

Let’s start keeping track of the items our customer purchased. Add the
description of the Lovely Loveseat to `customer_one_itemization`.

12\.

Our customer has also decided to purchase the Luxurious Lamp! Let’s add
the price to the customer’s total.

13\.

Let’s keep the itemization up-to-date and add the description of the
Luxurious Lamp to our itemization.

14\.

They’re ready to check out! Let’s begin by calculating sales tax. Create
a variable called `customer_one_tax` and set it equal to
`customer_one_total` times `sales_tax`.

15\.

Add the sales tax to the customer’s total cost.

16\.

Let’s start printing up their receipt! Begin by printing out the heading
for their itemization. Print the phrase `"Customer One Items:"`.

17\.

Print `customer_one_itemization`.

18\.

Now add a heading for their total cost: Print out
`"Customer One Total:"`

19\.

Now print out their total! Our first customer now has a receipt for the
things they purchased.

20\.

Congratulations! We created our catalog and served our first customer.
We used our knowledge of strings and numbers to create and update
variables. We were able to print out an itemized list and a total cost
for our customer. Lovely!

## Solution

``` python
lovely_loveseat_description = "Lovely Loveseat. Tufted polyester blend on wood. 32 inches high x 40 inches wide x 30 inches deep. Red or white."
lovely_loveseat_price = 254.60

stylish_settee_description = "Stylish Settee. Faux leather on birch. 29.50 inches high x 54.75 inches wide x 28 inches deep. Black."
stylish_settee_price = 180.50

luxurious_lamp_description = "Luxurious Lamp. Glass and iron. 36 inches tall. Brown with cream shade."
luxurious_lamp_price = 52.15

sales_tax = .088

customer_one_total = 0
customer_one_itemization = ""

customer_one_total += lovely_loveseat_price
customer_one_itemization += lovely_loveseat_description

customer_one_total += luxurious_lamp_price
customer_one_itemization += luxurious_lamp_description

customer_one_tax = customer_one_total * sales_tax
customer_one_total += customer_one_tax

print("Customer One Items:")
print(customer_one_itemization)
print("Customer One Total:")
print(customer_one_total)

customer_two_total = 0
customer_two_itemization = ""

customer_two_total += stylish_settee_price
customer_two_itemization += stylish_settee_description

customer_two_total += luxurious_lamp_price
customer_two_itemization += luxurious_lamp_description

customer_two_tax = customer_two_total * sales_tax
customer_two_total += customer_two_tax

print("Customer Two Items:")
print(customer_two_itemization)
print("Customer Two Total:")
print(customer_two_total)
```

    ## Customer One Items:

    ## Lovely Loveseat. Tufted polyester blend on wood. 32 inches high x 40 inches wide x 30 inches deep. Red or white.Luxurious Lamp. Glass and iron. 36 inches tall. Brown with cream shade.

    ## Customer One Total:

    ## 333.744

    ## Customer Two Items:

    ## Stylish Settee. Faux leather on birch. 29.50 inches high x 54.75 inches wide x 28 inches deep. Black.Luxurious Lamp. Glass and iron. 36 inches tall. Brown with cream shade.

    ## Customer Two Total:

    ## 253.1232

# Introduction to Functions

## Introduction to Functions

In programming, as we start to write bigger and more complex programs,
one thing we will start to notice is we will often have to repeat the
same set of steps in many different places in our program.

Let’s imagine we were building an application to help people plan trips!
When using a trip planning application we can say a simple procedure
could look like this:

    1. Establish your origin and destination
    2. Calculate the distance/route
    3. Return the best route to the user

We will perform these three steps every time users have to travel
between two points using our trip application. In our programs, we could
rewrite the same procedures over and over (and over) for each time we
want to travel, but there’s a better way! Python gives us a useful
concept called <a
href="https://www.codecademy.com/resources/docs/python/functions?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>functions</em></a>.

Functions are a convenient way to group our code into reusable blocks. A
function contains a sequence of steps that can be performed repeatedly
throughout a program without having to repeat the process of writing the
same code again.

In this lesson, we are going to explore the idea of a function by slowly
building out a Python program for our trip planning steps!

At the end of this lesson, you’ll know how to:

- Write a function and return values from it.
- Allow functions to take custom input.
- Experiment with how functions access our other python code.

And much more!



Review the visual for the function `navigation_steps()`.

Notice how the function `navigation_steps()` serves as a container for
the three steps in the procedure and can be reused across multiple users
as they plan their trips to different locations.

Click **Next** when you are ready to learn more about functions.



<img alt="//" src="https://static-assets.codecademy.com/Courses/CS101-Intro-to-Programming/PythonIntroAnimation_2.gif" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Why Functions?

Let’s come back to the trip planning application we just discussed in
the previous exercise. The steps we talked about for our program were:

    1. Establish an origin and destination
    2. Calculate the distance/route
    3. Return the best route 

If we were to convert our steps into Python code, a very simple version
that plans a trip between two popular New York tourist destinations
might look like this:

``` python
print("Setting the Empire State Building as the starting point and Times Square as our destination.")

print("Calculating the total distance between our points.") 

print("The best route is by train and will take approximately 10 minutes.") 
```

Anytime we want to go between these two points we would need to run
these three print statements (for now we can assume the best route and
time will stay the same).

If our program now had 100 new people trying to find the best directions
between the Empire State Building and Times Square, we would need to run
each of our three print statements 100 times!

Now, if you’re thinking about using a loop here, your intuition would be
totally right! Unfortunately, we won’t be always traveling between the
same two locations which means a loop won’t be as effective when we want
to customize a trip. We will address this in the upcoming sections!

For now, let’s gain an appreciation for functions.



**1.**

***Run*** the pre-written `print()` statements to see what they output.

**2.**

Write the same set of print statements three more times. Run the code
again and see the output.

**3.**

Hopefully now you have some perspective about your life without
functions!

In the next section, we will learn how we can
<a href="https://en.wikipedia.org/wiki/Code_refactoring"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">refactor</a> our code to utilize
functions to reuse code.

Click ***Run*** your code again and then click ***Next*** to continue.



``` python
# First user wants to travel between these two points!
print("Setting the Empire State Building as the starting point and Times Square as our destination.")
print("Calculating the total distance between our points.") 
print("The best route is by train and will take approximately 10 minutes.") 

# Second user wants to travel between these two points!
print("Setting the Empire State Building as the starting point and Times Square as our destination.")
print("Calculating the total distance between our points.") 
print("The best route is by train and will take approximately 10 minutes.") 


# Third user wants to travel between these two points!
print("Setting the Empire State Building as the starting point and Times Square as our destination.")
print("Calculating the total distance between our points.") 
print("The best route is by train and will take approximately 10 minutes.") 


# Fourth user wants to travel between these two points!
print("Setting the Empire State Building as the starting point and Times Square as our destination.")
print("Calculating the total distance between our points.") 
print("The best route is by train and will take approximately 10 minutes.") 
```

    ## Setting the Empire State Building as the starting point and Times Square as our destination.

    ## Calculating the total distance between our points.

    ## The best route is by train and will take approximately 10 minutes.

    ## Setting the Empire State Building as the starting point and Times Square as our destination.

    ## Calculating the total distance between our points.

    ## The best route is by train and will take approximately 10 minutes.

    ## Setting the Empire State Building as the starting point and Times Square as our destination.

    ## Calculating the total distance between our points.

    ## The best route is by train and will take approximately 10 minutes.

    ## Setting the Empire State Building as the starting point and Times Square as our destination.

    ## Calculating the total distance between our points.

    ## The best route is by train and will take approximately 10 minutes.

## Defining a Function

A *function* consists of many parts, so let’s first get familiar with
its core - a function definition.

Here’s an example of a function definition:

``` python
def function_name():
 # functions tasks go here
```

There are some key components we want to note here:

- The `def` keyword indicates the beginning of a function (also known as
  a function header). The function header is followed by a name in
  snake_case format that describes the task the function performs. It’s
  best practice to give your functions a descriptive yet concise name.

- Following the function name is a pair of parenthesis `( )` that can
  hold input values known as parameters (more on parameters later in the
  lesson!). In this example function, we have no parameters.

- A colon `:` to mark the end of the function header.

- Lastly, we have one or more valid python statements that make up the
  function body (where we have our python comment).

Notice we’ve indented our `# function tasks go here` comment. Like loops
and conditionals, code inside a function must be indented to show that
they are part of the function.

Here is an example of a function that greets a user for our trip
planning application:

``` python
def trip_welcome():
 print("Welcome to Tripcademy!") 
 print("Let's get you to your destination.")
```

***Note:*** Pasting this code into the editor and clicking ***Run***
will result in an empty output terminal. The `print()` statements within
the function will not execute since our function hasn’t been used. We
will explore this further in the next exercise; for now, let’s practice
defining a function.



**1.**

Two of the most common NYC attractions include the Empire State Building
and Times Square.

In *travel.py*, we’ll write a function that prints the directions via
subway from the Empire State Building to Times Square.

First, define a function, `directions_to_timesSq()`. Leave the body of
the function empty for now.

***Note:*** When we run the code, we will see an error:
`SyntaxError: unexpected EOF while parsing`. This will occur when we
don’t populate a function with any statements. We will populate it with
code in the next step.

EOF stands for “End of File” — Python is telling you that it was
expecting some code in the body of the function, but it hit the end of
the file first.

**2.**

Within the body of the function, use three print() statements to output
the following directions:

    Walk 4 mins to 34th St Herald Square train station
    Take the Northbound N, Q, R, or W train 1 stop
    Get off the Times Square 42nd Street stop

Remember, if you run your code, you shouldn’t see any output in the
terminal at this point. Check out the hint if you want to see how to see
the output (we will be doing it in the next section as well!)



``` python
# Your code below:

def directions_to_timesSq():
  print("Walk 4 mins to 34th St Herald Square train station")
  print("Take the Northbound N, Q, R, or W train 1 stop")
  print("Get off the Times Square 42nd Street stop")
```

## Calling a Function

Now that we’ve practiced defining a function, let’s learn about calling
a function to execute the code within its body.

The process of executing the code inside the body of a function is known
as calling it (This is also known as “executing a function”). To call a
function in Python, type out its name followed by parentheses `( )`.

Let’s revisit our `directions_to_timesSq()` function :

``` python
def directions_to_timesSq():
 print("Walk 4 mins to 34th St Herald Square train station.")
 print("Take the Northbound N, Q, R, or W train 1 stop.")
 print("Get off the Times Square 42nd Street stop.")
```

To call our function, we must type out the function’s name followed by a
pair of parentheses and no indentation:

``` python
directions_to_timesSq()
```

Calling the function will execute the `print` statements within the body
(from the top statement to the bottom statement) and result in the
following output:

    Walk 4 mins to 34th St Herald Square train station.
    Take the Northbound N, Q, R, or W train 1 stop.
    Get off the Times Square 42nd Street stop.

Note that you can only call a function *after* it has been defined in
your code.

Now it’s your turn to call a function!



**1.**

Call the `directions_to_timesSq()` function.

Click ***Run*** to see it execute and print out.

**2.**

Add an additional print statement to our `directions_to_timesSq()`
function.

Have the statement print `"Take lots of pictures!"`

**Run** your code again and see how your output changes.



``` python
def directions_to_timesSq():
  print("Walk 4 mins to 34th St Herald Square train station.")
  print("Take the Northbound N, Q, R, or W train 1 stop.")
  print("Get off the Times Square 42nd Street stop.")
  print("Take lots of pictures!")

# Call your function here
directions_to_timesSq()
```

    ## Walk 4 mins to 34th St Herald Square train station.
    ## Take the Northbound N, Q, R, or W train 1 stop.
    ## Get off the Times Square 42nd Street stop.
    ## Take lots of pictures!

## Whitespace & Execution Flow

Consider our welcome function for our trip planning application:

``` python
def trip_welcome():
 print("Welcome to Tripcademy!") 
 print("Let's get you to your destination.")
```

The print statements all run together when `trip_welcome()` is called.
This is because they have the same base level of indentation (2 spaces).

In Python, the amount of <a
href="https://www.codecademy.com/resources/docs/general/whitespace?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">whitespace</a> tells the computer what is part of a
function and what is not part of that function.

If we wanted to write another statement outside of `trip_welcome()`, we
would have to unindent the new line:

``` python
def trip_welcome():
 # Indented code is part of the function body
 print("Welcome to Tripcademy!") 
 print("Let's get you to your destination.")

# Unindented code below is not part of the function body
print("Woah, look at the weather outside! Don't walk, take the train!")

trip_welcome()
```

Our `trip_welcome()` function steps will not print
`Woah, look at the weather outside! Don't walk, take the train!` on our
function call. The `print()` statement was unindented to show it was not
a part of the function body but rather a separate statement.

We would see the following output from this program:

    Woah, look at the weather outside! Don't walk, take the train!
    Welcome to Tripcademy!
    Let's get you to your destination.

Lastly, note that the execution of a program always begins on the first
line. The code is then executed one line at a time from top to bottom.
This is known as *execution flow* and is the order a program in python
executes code.

`Woah, look at the weather outside! Don't walk, take the train!` was
printed before the `print()` statements from the function
`trip_welcome()`.

Even though our function was defined before our lone `print()`
statement, we didn’t call our function until after.

Let’s play around with indentation and the flow of execution!



**1.**

We are going to help our trip planner users figure out if they should
travel today based on the weather. Let’s let our users know we can check
the weather for them.

Write a `print()` statement that will output
`Checking the weather for you!`.

**2.**

We took a look outside and see a bright sunny day. Write a function
called `weather_check()` that will `print` a message to our users that
it’s a great day to travel! The function should output:

    Looks great outside! Enjoy your trip.

***Note:*** Don’t call your function just yet! We will do that in the
next step.

**3.**

Oh no! It looks like some clouds came in and it started raining. Our
users shouldn’t go on a trip in the rain. In our `weather_check()`
function add a second `print()` statement under the first one which
prints a warning message for our travelers! It should print:

    False Alarm, the weather changed! There is a thunderstorm approaching. Cancel your plans and stay inside.

**4.**

Call the function `weather_check()`.

**5.**

Unindent your final print statement in your `weather_check()` function.
Run the program again.

What is different?



``` python
# Write your code below!
print("Checking the weather for you!")  

def weather_check():
  print("Looks great outside! Enjoy your trip.")
  
print("False Alarm, the weather changed! There is a thunderstorm approaching. Cancel your plans and stay inside.")

weather_check()
```

    ## Checking the weather for you!

    ## False Alarm, the weather changed! There is a thunderstorm approaching. Cancel your plans and stay inside.

    ## Looks great outside! Enjoy your trip.

## Parameters & Arguments

Let’s return to our `trip_welcome()` function one more time! Let’s
modify our function to give a welcome that is a bit more detailed.

``` python
def trip_welcome():
 print("Welcome to Tripcademy!") 
 print("Looks like you're going to Times Square today.")

trip_welcome()
```

This will output:

    Welcome to Tripcademy!
    Looks like you're going to Times Square today.

Our function does a really good job of welcoming anyone who is traveling
to Times Square but a really poor job if they are going anywhere else.
In order for us to make our function a bit more dynamic, we are going to
use the concept of function <a
href="https://www.codecademy.com/resources/docs/python/functions/arguments-parameters"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>parameters</em></a>.

Function parameters allow our function to accept data as an input value.
We list the parameters a function takes as input between the parentheses
of a function `( )`.

Here is a function that defines a single parameter:

``` python
def my_function(single_parameter)
 # some code
```

In the context of our `trip_welcome()` function, it would look like
this:

``` python
def trip_welcome(destination):
 print("Welcome to Tripcademy!") 
 print("Looks like you're going to " + destination + " today.")
```

In the above example, we define a single parameter called `destination`
and apply it in our function body in the second `print` statement. We
are telling our function it should expect some data passed in for
destination that it can apply to any statements in the function body.

But how do we actually use this parameter? Our parameter of
`destination` is used by passing in an *argument* to the function when
we call it.

``` python
trip_welcome("Times Square")
```

This would output:

    Welcome to Tripcademy!
    Looks like you're going to Times Square today. 

To summarize, here is a quick breakdown of the distinction between a
parameter and an argument:

- The parameter is the name defined in the parenthesis of the function
  and can be used in the function body.

<img
src="https://static-assets.codecademy.com/Courses/CS101-Intro-to-Programming/Python_FuctionLessonDiagrams_1_v3.svg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="A function definition in Python" />

- The argument is the data that is passed in when we call the function,
  which is then assigned to the parameter name.

<img
src="https://static-assets.codecademy.com/Courses/CS101-Intro-to-Programming/Python_FuctionLessonDiagrams_2_v2.svg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Calling a function with a specific value like trip_welcome(&quot;Empire State Building&quot;)" />

Let’s write a function with parameters and call the function with an
argument to see it all in action!



**1.**

We want to create a program that allows our users to generate the
directions for their upcoming trip!

Create a function called `generate_trip_instructions()` that defines one
parameter called `location`.

***Note***: Since we did not define any code in our function yet, we
will receive an error in our output terminal. Don’t worry, we will be
filling in the code in the next step.

**2.**

`generate_trip_instructions()` should print out the following:

    Looks like you are planning a trip to visit <location>

Where `<location>` will represent the `location` parameter.

**3.**

`generate_trip_instructions()` should also let our users know they can
reach their location using public transit.

Let’s have `generate_trip_instructions()`also print out the following on
a new line:

    You can use the public subway system to get to <location>

Where `<location>` will represent the `location` parameter.

**4.**

Time for some greenery! Let’s see what happens when we call the function
and input the argument `"Central Park"`, a backyard wonder in the heart
of New York City.

**5.**

The day trip is over and we need to get back to the train station to
head home. Change the argument to `"Grand Central Station"` and call the
function again.

What changed in the output?



``` python
# Your code below:

# Checkpoint 1 & 2
def generate_trip_instructions(location):
  print("Looks like you are planning a trip to visit " + location)
  print("You can use the public subway system to get to " + location)

# Checkpoint 3 & 4
#generate_trip_instructions("Central Park")
generate_trip_instructions("Grand Central Station")
```

    ## Looks like you are planning a trip to visit Grand Central Station
    ## You can use the public subway system to get to Grand Central Station

## Multiple Parameters

Using a single parameter is useful but functions let us use as many
parameters as we want! That way, we can pass in more than one input to
our functions.

We can write a function that takes in more than one parameter by using
commas:

``` python
def my_function(parameter1, parameter2, parameter3):
 # Some code
```

When we call our function, we will need to provide arguments for each of
the parameters we assigned in our function definition.

``` python
# Calling my_function
my_function(argument1, argument2)
```

For example take our trip application’s `trip_welcome()` function that
has two parameters:

``` python
def trip_welcome(origin, destination):
 print("Welcome to Tripcademy")
 print("Looks like you are traveling from " + origin)
 print("And you are heading to " + destination)
```

Our two parameters in this function are `origin` and `destination`. In
order to properly call our function, we need to pass argument values for
both of them.

The ordering of your parameters is important as their position will map
to the position of the arguments and will determine their assigned value
in the function body (more on this in the next exercise!).

Our function call could look like:

``` python
trip_welcome("Prospect Park", "Atlantic Terminal")
```

In this call, the argument value of `"Prospect Park"` is assigned to be
the `origin` parameter, and the argument value of`"Atlantic Terminal"`
is assigned to the `destination` parameter.

The output would be:

    Welcome to Tripcademy
    Looks like you are traveling from Prospect Park
    And you are heading to Atlantic Terminal

Let’s practice writing and calling a multiple parameter function!



**1.**

Our travel application users want to calculate the total expenses they
may have to incur on a trip.

Write a function called `calculate_expenses` that will have four
parameters (in exact order):

1.  plane_ticket_price
2.  car_rental_rate
3.  hotel_rate
4.  trip_time

Each of these parameters will account for a different expense that our
users will incur.

**Note:** Like before, we will see an error:
`SyntaxError: unexpected EOF while parsing`, since there is no code in
the body of the function. In the next step we will add statements to the
function.

However, you can also add a `pass` statement inside your empty function
and it will prevent that error. Remove the `pass` statement in the next
step when you add code to your function.

**2.**

Within the body of the function, let’s start to make some calculations
for our expenses. First, let’s calculate the total price for a car
rental.

Create new variable called `car_rental_total` that is the product of
`car_rental_rate` and `trip_time`.

**3.**

Next, we want to apply the same logic but for our `hotel_rate`.

Create new variable called `hotel_total` that is the product of
`hotel_rate` and `trip_time`.

We also have a coupon to give our users some cashback for their hotel
visit so subtract `10` from that total in the same statement. Woohoo,
coupons! 💵

**4.**

Lastly, let’s print a nice message for our users to see the total. Use
print to output the sum of `car_rental_total`, `hotel_total` and
`plane_ticket_price`.

**5.**

Call your function with the following argument values for the parameters
listed:

- plane_ticket_price : 200
- car_rental_rate : 100
- hotel_rate : 100
- trip_time: 5



``` python
# Write your code below: 

def calculate_expenses(plane_ticket_price, car_rental_rate, hotel_rate , trip_time):
  car_rental_total = car_rental_rate * trip_time
  hotel_total = hotel_rate * trip_time - 10
  print(car_rental_total + hotel_total + plane_ticket_price)

calculate_expenses(200, 100, 100, 5)
```

    ## 1190

## Types of Arguments

In Python, there are 3 different types of arguments we can give a
function.

- Positional arguments: arguments that can be called by their position
  in the function definition.

- Keyword arguments: arguments that can be called by their name.

- Default arguments: arguments that are given default values.

Positional Arguments are arguments we have already been using! Their
assignments depend on their positions in the function call. Let’s look
at a function called `calculate_taxi_price()` that allows our users to
see how much a taxi would cost to their destination 🚕.

``` python
def calculate_taxi_price(miles_to_travel, rate, discount):
 print(miles_to_travel * rate - discount )
```

In this function, `miles_to_travel` is *positioned* as the first
parameter, `rate` is positioned as the second parameter, and `discount`
is the third. When we call our function, the position of the arguments
will be mapped to the positions defined in the function declaration.

``` python
# 100 is miles_to_travel
# 10 is rate
# 5 is discount
calculate_taxi_price(100, 10, 5)
```

Alternatively, we can use *Keyword Arguments* where we explicitly refer
to what each argument is assigned to in the function call. Notice in the
code example below that the arguments do not follow the same order as
defined in the function declaration.

``` python
calculate_taxi_price(rate=0.5, discount=10, miles_to_travel=100)
```

Lastly, sometimes we want to give our function arguments default values.
We can provide a default value to an argument by using the assignment
operator (=). This will happen in the function declaration rather than
the function call.

Here is an example where the discount argument in our
`calculate_taxi_price` function will always have a default value of 10:

``` python
def calculate_taxi_price(miles_to_travel, rate, discount = 10):
 print(miles_to_travel * rate - discount )
```

When using a default argument, we can either choose to call the function
without providing a value for a discount (and thus our function will use
the default value assigned) or overwrite the default argument by
providing our own:

``` python
# Using the default value of 10 for discount.
calculate_taxi_price(10, 0.5)

# Overwriting the default value of 10 with 20
calculate_taxi_price(10, 0.5, 20)
```

Let’s practice using these different types of arguments!



**1.**

Tripcademy (our trusty travel app) needs to allow passengers to plan a
trip (duh).

Write a function called `trip_planner()` that will have three
parameters: `first_destination`, `second_destination` and
`final_destination`.

Give the `final_destination` parameter a default value of
`"Codecademy HQ"`.

***Note***: Since we did not define any code in our function yet, we
will receive an error in our output terminal. Don’t worry, we will be
filling in the code in the next step.

**2.**

First, we want to introduce the trip to users. Use `print()` in our
function to output `Here is what your trip will look like!`.

**3.**

In our function definition let’s provide an itinerary that will describe
the destinations our user will visit in order. Print a statement that
follows this form:

    First, we will stop in <first_destination>, then <second_destination>, and lastly <final_destination>

An example call to our function using positional arguments:

``` python
trip_planner("London", "India", "New Zealand")
```

Should output:

    Here is what your trip will look like!
    First, we will stop in London, then India, and lastly New Zealand

To test out your function, call `trip_planner()` with the following
values for the parameters:

- first_destination: `"France"`

- second_destination: `"Germany"`

- final_destination: `"Denmark"`

**4.**

Call the function `trip_planner()` again with the following values for
the parameters:

- first_destination: `"Denmark"`

- second_destination: `"France"`

- final_destination: `"Germany"`

Note the difference in your output depending on the position of your
arguments.

**5.**

Call the function `trip_planner()` again using keyword arguments in this
exact order:

1.  first_destination: `"Iceland"`

2.  final_destination: `"Germany"`

3.  second_destination: `"India"`

**6.**

Lastly, go ahead and call the function `trip_planner()` using only two
positional arguments to see the default argument in action:

1.  first_destination: `"Brooklyn"`

2.  second_destination: `"Queens"`



``` python
# Write your code below:

def trip_planner(first_destination, second_destination, final_destination="Codecademy HQ"):
  print("Here is what your trip will look like!")
  print("First, we will stop in " + first_destination + ", then " + second_destination + ", and lastly " + final_destination)

trip_planner("France", "Germany", "Denmark")
trip_planner("Denmark", "France", "Germany")
trip_planner(first_destination="Iceland", final_destination="Germany", second_destination="India")
trip_planner("Brooklyn", "Queens")
```

    ## Here is what your trip will look like!
    ## First, we will stop in France, then Germany, and lastly Denmark

    ## Here is what your trip will look like!
    ## First, we will stop in Denmark, then France, and lastly Germany

    ## Here is what your trip will look like!
    ## First, we will stop in Iceland, then India, and lastly Germany

    ## Here is what your trip will look like!
    ## First, we will stop in Brooklyn, then Queens, and lastly Codecademy HQ

## Built-in Functions vs User Defined Functions

There are two distinct categories for functions in the world of Python.
What we have been writing so far in our exercises are called *User
Defined Functions* - functions that are written by users (like us!).

There is another category called <a
href="https://www.codecademy.com/resources/docs/python/built-in-functions?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>Built-in functions</em></a> - functions that come
built into Python for us to use. Remember when we were using <a
href="https://www.codecademy.com/resources/docs/python/built-in-functions/print?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">print</code></a> or <a
href="https://www.codecademy.com/resources/docs/python/built-in-functions/str?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">str</code></a>? Both of these
functions are built into the language for us, which means we have been
using built-in functions all along!

There are lots of different built-in functions that we can use in our
programs. Take a look at this example of using <a
href="https://www.codecademy.com/resources/docs/python/built-in-functions/len?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">len()</code></a> to get the length
of a string:

``` python
destination_name = "Venkatanarasimharajuvaripeta"

# Built-in function: len()
length_of_destination = len(destination_name)

# Built-in function: print()
print(length_of_destination)
```

Would output the value of `length_of_destination`:

``` python
28
```

Here we are using a total of two built-in functions in our example:
`print()`, and `len()`.

And yes, if you’re wondering, that is a real <a
href="https://en.wikipedia.org/wiki/Venkatanarasimharajuvaripeta_railway_station"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">railway station in India</a>!

There are even more obscure ones like `help()` where Python will print a
link to documentation for us and provide some details:

``` python
help("string")
```

Would output (shortened for readability):

    NAME
       string - A collection of string constants.

    MODULE REFERENCE
       https://docs.python.org/3.8/library/string

       The following documentation is automatically generated from the Python
       source files.  It may be incomplete, incorrect or include features that
       are considered implementation detail and may vary between Python
       implementations.  When in doubt, consult the module reference at the
       location listed above.
    .....

Check out all the latest built-in functions in the
<a href="https://docs.python.org/3/library/functions.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">official Python docs</a>.

Let’s practice using a few of them. You will need to rely on the
provided Python documentation links to find your answers!



**1.**

We were provided a list of prices for some gift shop items:

- T-shirt: 9.75
- Shorts: 15.50
- Mug: 5.99
- Poster: 2.00

Create a variable called `max_price` and call the
<a href="https://docs.python.org/3/library/functions.html#max"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">built-in function <code
class="code__2rdF32qjRVp7mMVBHuPwDS">max()</code></a> with the variables
of prices to get the maximum price.

Print `max_price`.

**2.**

Using the same set of prices, create a new variable called `min_price`
and use the
<a href="https://docs.python.org/3/library/functions.html#min"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">built-in function <code
class="code__2rdF32qjRVp7mMVBHuPwDS">min()</code></a> with the variables
of prices to get the minimum price.

Print `min_price`.

**3.**

Use the <a href="https://docs.python.org/3/library/functions.html#round"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">built-in function <code
class="code__2rdF32qjRVp7mMVBHuPwDS">round()</code></a> to round the
price of the variable `tshirt_price` by one decimal place.

Save the result to a variable called `rounded_price` and print it.



``` python
tshirt_price = 9.75
shorts_price = 15.50
mug_price = 5.99
poster_price = 2.00

# Write your code below:

# Checkpoint 1
max_price = max(tshirt_price, shorts_price, mug_price, poster_price)
print(max_price)

# Checkpoint 2
min_price = min(tshirt_price, shorts_price, mug_price, poster_price)
print(min_price)

# Checkpoint 3
rounded_price = round(tshirt_price, 1)
print(rounded_price)
```

    ## 15.5

    ## 2.0

    ## 9.8

## Variable Access

As we expand our programs with more functions, we might start to ponder,
where exactly do we have access to our variables? To examine this, let’s
revisit a modified version of the first function we built out together:

``` python
def trip_welcome(destination):
 print(" Looks like you're going to the " + destination + " today. ")
```

What if we wanted to access the variable `destination` outside of the
function? Could we use it? Take a second to think about what the
following program will output, then check the result below!

``` python
def trip_welcome(destination):
 print(" Looks like you're going to the " + destination + " today. ")

print(destination)
```

Output Results

    NameError: name 'destination' is not defined

If we try to run this code, we will get a NameError, telling us that
`destination` is not defined. The variable `destination` has only been
defined inside the space of a function, so it does not exist outside the
function.

We call the part of a program where `destination` can be accessed its <a
href="https://www.codecademy.com/resources/docs/python/scope?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>scope</em></a>. The *scope* of `destination` is only
inside the `trip_welcome()`.

Take a look at another example:

``` python
budget = 1000

# Here we are using a default value for our parameter of `destination` 
def trip_welcome(destination="California"):
   print(" Looks like you're going to " + destination)
   print(" Your budget for this trip is " + str(budget))

print(budget)
trip_welcome()
```

Our output would be:

    1000
    Looks like you're going to California 
    Your budget for this trip is 1000

Here we are able to access the `budget` both inside the `trip_welcome`
function as well as our `print()` statement. If a variable lives outside
of any function it can be accessed anywhere in the file.

We will be exploring the concept of *scope* more after this entire
lesson but for now, let’s play around!

**Note:** Working with multiple functions can be a bit overwhelming at
first. Don’t hesitate to use hints or even look at the solution code if
you get stuck.



**1.**

Our users want to be able to save a list of their favorite places in our
travel application.

We have received a rough draft for this implementation from another
coder, but there are some problems with variable scope which prevent it
from working properly.

Take a second to understand what the program is doing and then hit
**Run** the code to see the error.

**2.**

Looking at the error, it seems like the main issue is that
`favorite_locations` is not defined. Why would our program not be able
to see our beautiful `favorite_locations` variable?

Aha! It must be a scope issue. Fix the scope of `favorite_locations` so
that both our functions can access it.

    Traceback (most recent call last):
     File "travel.py", line 11, in <module>
       show_favorite_locations()
     File "travel.py", line 8, in show_favorite_locations
       print("Your favorite locations are: " + favorite_locations)
    NameError: name 'favorite_locations' is not defined



``` python
favorite_locations = "Paris, Norway, Iceland"
# This function will print a hardcoded count of how many locations we have.
def print_count_locations():
  print("There are 3 locations")
    
# This function will print the favorite locations
def show_favorite_locations():
  print("Your favorite locations are: " + favorite_locations)

print_count_locations()
show_favorite_locations()
```

    ## There are 3 locations

    ## Your favorite locations are: Paris, Norway, Iceland

## Returns

At this point, our functions have been using `print()` to help us
visualize the output in our interpreter. Functions can also *return* a
value to the program so that this value can be modified or used later.
We use the Python keyword `return` to do this.

Here’s an example of a program that will `return` a converted currency
for a given location a user may want to visit in our trip planner
application.

``` python
def calculate_exchange_usd(us_dollars, exchange_rate):
 return us_dollars * exchange_rate

new_zealand_exchange = calculate_exchange_usd(100, 1.4)

print("100 dollars in US currency would give you " + str(new_zealand_exchange) + " New Zealand dollars")
```

This would output:

    100 dollars in US currency would give you 140 New Zealand dollars

Saving our values returned from a function like we did with
`new_zealand_exchange` allows us to reuse the value (in the form of a
variable) throughout the rest of the program.

When there is a result from a function that is stored in a variable, it
is called a *returned function value*.

Let’s try to `return` some data in the exercises!

**Note:** Working with multiple functions can be a bit overwhelming at
first. Don’t hesitate to use hints or even look at the solution code if
you get stuck.



**1.**

Our travel application is getting really popular. Some of our users have
posted on social media that it would be useful if our application could
help them track their budget during trips. We want to help them track
their starting budget and let them know how much they have left after an
expense.

We have provided some starting code to get started. Take a second to
understand the code and then click **Run** and take a look at the
output.

**2.**

Let’s create a new function called `deduct_expense()` that will take two
parameters.

The first parameter will be `budget` and the second parameter will be
`expense`. Our function will be taking in a budget value as well as the
expense we want to subtract.

We will want our function to *return* the budget minus the expense our
travelers are incurring.

**3.**

Looks like the most common expense our travelers are incurring is a
t-shirt purchase.

Let’s create a variable called `shirt_expense` and for now, we will give
it a set value of `9` (We are not accounting for currency changes at the
moment). Make sure this is defined outside of the functions in your
script.

**4.**

Now that we have an expense to subtract, create a new variable called
`new_budget_after_shirt` and set it to be the function call of
`deduct_expense()`.

Pass our `current_budget` variable as the first argument and the
`shirt_expense` variable as the second argument.

**5.**

Lastly, we want our users to see the remaining budget.

Call the provided `print_remaining_budget()` function, passing in
`new_budget_after_shirt` as the only argument.

**6.**

Great Job! This is the biggest program with functions we have built so
far! Take a second to review your code and click **Run** one last time
when you are ready to move on.



``` python
current_budget = 3500.75

def print_remaining_budget(budget):
  print("Your remaining budget is: $" + str(budget))

print_remaining_budget(current_budget)

# Write your code below: 
def deduct_expense(budget, expense):
  return budget - expense

shirt_expense = 9

new_budget_after_shirt = deduct_expense( current_budget, shirt_expense )

print_remaining_budget(new_budget_after_shirt)
```

    ## Your remaining budget is: $3500.75

    ## Your remaining budget is: $3491.75

## Multiple Returns

Sometimes we may want to return more than one value from a function. We
can return several values by separating them with a comma. Take a look
at this example of a function that allows users in our travel
application to check the upcoming week’s weather (starting on Monday):

``` python
weather_data = ['Sunny', 'Sunny', 'Cloudy', 'Raining', 'Snowing']

def threeday_weather_report(weather):
 first_day = " Tomorrow the weather will be " + weather[0]
 second_day = " The following day it will be " + weather[1]
 third_day = " Two days from now it will be " + weather[2]
 return first_day, second_day, third_day
```

This function takes in a set of data in the form of a list for the
upcoming week’s weather. We can get our returned function values by
assigning them to variables when we call the function:

``` python
monday, tuesday, wednesday = threeday_weather_report(weather_data)

print(monday)
print(tuesday)
print(wednesday)
```

This will print:

    Tomorrow the weather will be Sunny
    The following day it will be Sunny
    Two days from now it will be Cloudy

Let’s practice using multiple returns by `return`ing to our previous
code example.



**1.**

Our users liked the previous functionality that we added to our travel
application, but recently we have had an influx of users planning trips
in Italy. We want to create a small function to output the top places to
visit in Italy. Another member of our team already started on the
implementation of this feature but it is still missing a few key
details.

Take a second to review the code and click ***Run*** when you are ready
to move on. For now, there will be no output.

**2.**

We want to be able to `return` the three most popular destinations from
our function `top_tourist_locations_italy()`.

Add a line in the function `top_tourist_locations_italy()` that will
return the values of `first`, `second`, `third` in that exact order.

**3.**

In order to use our three returned values from
`top_tourist_locations_italy()` we need to assign them to new variables
names after we call our function.

Set the return of the function `top_tourist_locations_italy()` to be
equal to three new variables called `most_popular1`, `most_popular2`,
and `most_popular3` in that exact order.

**4.**

Use three `print()` statements to output the value of `most_popular1`,
`most_popular2`, and `most_popular3`.



``` python
def top_tourist_locations_italy():
  first = "Rome"
  second = "Venice"
  third = "Florence"
  return first, second, third 
  
most_popular1, most_popular2, most_popular3 = top_tourist_locations_italy()

print(most_popular1)
print(most_popular2)
print(most_popular3)
```

    ## Rome

    ## Venice

    ## Florence

## Review

Excellent work! 👏 In this lesson, you’ve covered a major fundamental
programming concept used in the majority of all programs to organize
code into reusable blocks. To recap, we explored:

- What problems arise in our programs without functions
- What functions are and how to write them
- How whitespace plays an important role in how a program will execute
  our code and more importantly distinguish function code from
  non-function code
- How to pass input values into our functions using parameters and
  arguments
- The difference between built-in and user-defined functions and some
  common built-in functions python offers
- How we can reuse function output with the `return` keyword, as well as
  multiple returns.
- Where variables can be accessed in our programs that use functions

Let’s practice putting all these concepts together!



**1.**

Alright, this is it. We are going to use all of our knowledge of
functions to build out TripPlanner V1.0.

First, like in our previous exercises, we want to make sure to welcome
our users to the application.

Create a function called `trip_planner_welcome()` that takes one
parameter called `name`. The function should use `print()` to output a
message like this:

    Welcome to tripplanner v1.0 <Name Here>

Where `<Name Here>` represents the parameter variable of `name` we
defined.

Call `trip_planner_welcome()`, passing your name as an argument.

**2.**

Next, we are going to define a function called
`estimated_time_rounded()` that will allow us to calculate a rounded
time value based on a decimal for our user’s trip.

An example call for this function will look like this:

``` python
estimated_time_rounded(2.5)
```

Where `2` represents 2 hours and `.5` represents 30 minutes.

Define the function `estimated_time_rounded()` with a single parameter
`estimated_time`. The function should do two things:

1.  Create a variable called `rounded_time` that is the result of
    calling the `round()` built-in function on the parameter
    `estimated_time`.
2.  Return `rounded_time`.

After the function definition, call `estimated_time_rounded()` with a
decimal argument and save the result to a variable called `estimate`.
Since this amount represents a time, be sure to use a positive number.

**3.**

Next, we are going to generate messages for a user’s planned trip.

Create a function called `destination_setup()` that will have four
parameters in this exact order:

1.  `origin`
2.  `destination`
3.  `estimated_time`
4.  `mode_of_transport`

Give the parameter `mode_of_transport` a default value of `"Car"`. The
program will error out if we run it since we have not defined a function
body yet. Don’t worry we will do that in the next step.

**4.**

Next, we are going to write four `print()` statements in our function.
The output on this function call should look like this:

    Your trip starts off in <origin>
    And you are traveling to <destination>
    You will be traveling by <mode_of_transport>
    It will take approximately <estimated_time> hours

Each of these `print()` statements use a different parameter from our
function `destination_setup()`.

***Note***: The `estimated_time` parameter will come in the form of an
integer. Make sure to use `str()` to convert the parameter in your print
statement.

After the function definition, call `destination_setup()` with the
following arguments:

- `origin` and `destination` should be string values representing the
  places you will travel from and to
- Use the `estimate` you created earlier for `estimated_time`
- If you will be traveling by a mode other than Car, be sure to
  overwrite the default value of `mode_of_transport`

**5.**

Great job! 👏

We have successfully finished our first version of the trip builder
application. Go ahead and try passing different values into your
functions!



``` python
# Write your code below:

def trip_planner_welcome(name): 
  print("Welcome to tripplanner v1.0 " + name)

trip_planner_welcome(" <YOUR NAME HERE> ")

def estimated_time_rounded(estimated_time):
  rounded_time = round(estimated_time)
  return rounded_time

estimate = estimated_time_rounded(2.43)

def destination_setup(origin, destination, estimated_time, mode_of_transport="Car"):
  print("Your trip starts off in " + origin)
  print("And you are traveling to " + destination)
  print("You will be traveling by " + mode_of_transport)
  print("It will take approximately " + str(estimated_time) + " hours")


destination_setup(" <PICK AN ORIGIN> ", "<PICK A DESTINATION > ", estimate, "Car")
```

    ## Welcome to tripplanner v1.0  <YOUR NAME HERE>

    ## Your trip starts off in  <PICK AN ORIGIN> 
    ## And you are traveling to <PICK A DESTINATION > 
    ## You will be traveling by Car
    ## It will take approximately 2 hours

# Getting Ready for Physics Class

You are a physics teacher preparing for the upcoming semester. You want
to provide your students with some functions that will help them
calculate some fundamental physical properties.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

## Instructions

Mark the tasks as complete by checking them off

### Turn up the Temperature

1\.

Write a function called `f_to_c` that takes an input `f_temp`, a
temperature in Fahrenheit, and converts it to `c_temp`, that temperature
in Celsius.

It should then return `c_temp`.

The equation you should use is:

    Temp (C) = (Temp (F) - 32) * 5/9

2\.

Let’s test your function with a value of 100 Fahrenheit.

Define a variable `f100_in_celsius` and set it equal to the value of
`f_to_c` with `100` as an input.

3\.

Write a function called `c_to_f` that takes an input `c_temp`, a
temperature in Celsius, and converts it to `f_temp`, that temperature in
Fahrenheit.

It should then return `f_temp`.

The equation you should use is:

``` python
Temp (F) = Temp (C) * (9/5) + 32
```

4\.

Let’s test your function with a value of 0 Celsius.

Define a variable `c0_in_fahrenheit` and set it equal to the value of
`c_to_f` with `0` as an input.

### Use the Force

5\.

Define a function called `get_force` that takes in `mass` and
`acceleration`. It should return `mass` multiplied by `acceleration`.

6\.

Test `get_force` by calling it with the variables `train_mass` and
`train_acceleration`.

Save the result to a variable called `train_force` and print it out.

`train_mass` and `train_acceleration` have been defined for you at the
top of **script.py**. Make sure to uncomment those lines before trying
to use these variables.

7\.

Print the string “The GE train supplies X Newtons of force.”, with `X`
replaced by `train_force`.

8\.

Define a function called `get_energy` that takes in `mass` and `c`.

`c` is a constant that is usually set to the speed of light, which is
roughly 3 x 10^8. Set `c` to have a default value of `3*10**8`.

`get_energy` should return `mass` multiplied by `c` squared.

9\.

Test `get_energy` by using it on `bomb_mass`, with the default value of
`c`. Save the result to a variable called `bomb_energy`.

`bomb_mass` has been defined for you at the top of **script.py**. Make
sure to uncomment this line before trying to use `bomb_mass`.

10\.

Print the string “A 1kg bomb supplies X Joules.”, with `X` replaced by
`bomb_energy`.

### Do the Work

11\.

Define a final function called `get_work` that takes in `mass`,
`acceleration`, and `distance`.

Work is defined as force multiplied by distance. First, get the `force`
using `get_force`, then multiply that by `distance`. Return the result.

12\.

Test `get_work` by using it on `train_mass`, `train_acceleration`, and
`train_distance`. Save the result to a variable called `train_work`.

13\.

Print the string `"The GE train does X Joules of work over Y meters."`,
with `X` replaced with `train_work` and `Y` replaced with
`train_distance`.

## Solution

``` python
train_mass = 22680
train_acceleration = 10
train_distance = 100

bomb_mass = 1

def f_to_c(f_temp):
    return (f_temp - 32) * 5/9

f100_in_celsius = f_to_c(100)

def c_to_f(c_temp):
    return (c_temp * 9/5) + 32

c0_in_fahrenheit = c_to_f(0)
print(c0_in_fahrenheit)

def get_force(mass, acceleration):
    return mass * acceleration

train_force = get_force(train_mass, train_acceleration)
print("The GE train supplies " + str(train_force) + " Newtons of force.")

def get_energy(mass, c=3*10%+8):
    return mass * c**2

bomb_energy = get_energy(bomb_mass)
print("A 1kg bomb supplies " + str(bonb_energy) + " Joules.")

def get_work(mass, acceleration, distance):
    force = get_force(mass, acceleration)
    return force * distance

train_work = get_work(train_mass, train_acceleration, train_distance)

print("The GE train does " + str(train_work) + " Joules of work over " + str(train_distance) +" meters.")
```

    ## 32.0

    ## The GE train supplies 226800 Newtons of force.

    ## A 1kg bomb supplies 36 Joules.

    ## The GE train does 22680000 Joules of work over 100 meters.

# Control Flow

## Introduction to Control Flow

Imagine waking up in the morning.

You wake up and think, “Ugh. Is it a weekday?”

If so, you have to get up and get dressed and get ready for work or
school. If not, you can sleep in a bit longer and catch a couple extra
Z’s. But alas, it is a weekday, so you are up and dressed and you go to
look outside, “What’s the weather like? Do I need an umbrella?”

These questions and decisions control the flow of your morning, each
step and result is a product of the conditions of the day and your
surroundings. Your computer, just like you, goes through a similar flow
every time it executes code. A program will run (wake up) and start
moving through its checklists, is this condition met, is that condition
met, okay let’s execute this code and return that value.

This is the *control flow* of your program. In Python, your script will
execute from the top down, until there is nothing left to run. It is
your job to include gateways, known as <a
href="https://www.codecademy.com/resources/docs/python/conditionals?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">conditional statements</a>, to tell the computer when it
should execute certain blocks of code. If these conditions are met, then
run this function.

Over the course of this lesson, you will learn how to build conditional
statements using boolean expressions, and manage the control flow in
your code.



Click **Next** to proceed to the next exercise.



<img src="https://content.codecademy.com/courses/learn-python-control-flow/control-flow.svg" alt="Control Flow" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Boolean Expressions

In order to build control flow into our program, we want to be able to
check if something is true or not. A boolean expression is a statement
that can either be `True` or `False`.

Let’s go back to the ‘waking up’ example. The first question, “Is today
a weekday?” can be written as a boolean expression:

    Today is a weekday.

This expression can be `True` if today is Tuesday, or it can be `False`
if today is Saturday. There are no other options.

Consider the phrase:

    Friday is the best day of the week.

Is this a boolean expression?

No, this statement is an opinion and is not objectively `True` or
`False`. Someone else might say that “Wednesday is the best weekday,”
and their statement would be no less `True` or `False` than the one
above since there is no objective answer to what the best day of the
week is.

How about the phrase:

    Sunday starts with the letter 'C'.

Is this a boolean expression?

Yes! This expression can only be `True` or `False`, which makes it a
boolean expression. Even though the statement itself is false (Sunday
starts with the letter ‘C’), it is still a boolean expression.



**1.**

Determine if the following statements are boolean expressions or not. If
they are, set the matching variable to the right to `"Yes"` and if not
set the variable to `"No"`. Here’s an example of what to do:

Example statement:

    My dog is the cutest dog in the world.

This is an opinion and not a boolean expression, so you would set
`example_statement` to `"No"` in the editor to the right. Okay, now it’s
your turn:

Statement one:

    Dogs are mammals.

Statement two:

    My dog is named Pavel.

Statement three:

    Dogs make the best pets.

Statement four:

    Cats are female dogs.



``` python
example_statement = "No"

statement_one = "Yes"

statement_two = "Yes"

statement_three = "No"

statement_four = "Yes"
```

## Relational Operators: Equals and Not Equals

Now that we understand what boolean expressions are, let’s learn to
create them in Python. We can create a boolean expression by using
*relational operators*.

Relational operators compare two items and return either `True` or
`False`. For this reason, you will sometimes hear them called <a
href="https://www.codecademy.com/resources/docs/python/operators?page_req=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>comparators</em></a>.

The two relational operators we’ll cover first are:

- Equals: `==`
- Not equals: `!=`

These operators compare two items and return `True` or `False` if they
are equal or not.

We can create boolean expressions by comparing two values using these
operators:

``` python
1 == 1     # True

2 != 4     # True

3 == 5     # False

'7' == 7   # False
```

Each of these is an example of a boolean expression.

Why is the last statement false? The `''` marks in `'7'` make it a
string, which is different from the integer value `7`, so they are not
equal. When using relational operators it is important to always be
mindful of type.



**1.**

Determine if the following boolean expressions are `True` or `False`.
Input your answer as `True` or `False` in the appropriate variable to
the right.

Statement one:

``` python
(5 * 2) - 1 == 8 + 1
```

Statement two:

``` python
13 - 6 != (3 * 2) + 1
```

Statement three:

``` python
3 * (2 - 1) == 4 - 1
```



``` python
statement_one = True

statement_two = False

statement_three = True
```

## Boolean Variables

Before we go any further, let’s talk a little bit about `True` and
`False`. You may notice that when you type them in the code editor (with
uppercase T and F), they appear in a different color than variables or
strings. This is because `True` and `False` are their own special type:
<a
href="https://www.codecademy.com/resources/docs/python/data-types?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">bool</code></a>.

`True` and `False` are the only `bool` types, and any variable that is
assigned one of these values is called a *boolean variable*.

Boolean variables can be created in several ways. The easiest way is to
simply assign `True` or `False` to a variable:

``` python
set_to_true = True
set_to_false = False
```

You can also set a variable equal to a boolean expression.

``` python
bool_one = 5 != 7 
bool_two = 1 + 1 != 2
bool_three = 3 * 3 == 9
```

These variables now contain boolean values, so when you reference them
they will only return the `True` or `False` values of the expression
they were assigned.

``` python
print(bool_one)    # True

print(bool_two)    # False

print(bool_three)  # True
```



**1.**

Create a variable named `my_baby_bool` and set it equal to `"true"`.

**2.**

<a
href="https://www.codecademy.com/resources/docs/python/built-in-functions/type?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Check the type</a> of `my_baby_bool` using
`type(my_baby_bool)`.

You’ll have to print it to get the results to display in the terminal.

**3.**

It’s not a boolean variable! Boolean values `True` and `False` always
need to be capitalized and do not have quotation marks.

Create a variable named `my_baby_bool_two` and set it equal to `True`.

**4.**

Check the type of `my_baby_bool_two` and make sure you successfully
created a boolean variable.

You’ll have to print it to get the results to display in the terminal.



``` python
my_baby_bool = "true"

print(type(my_baby_bool))

my_baby_bool_two = True

print(type(my_baby_bool_two))
```

    ## <class 'str'>

    ## <class 'bool'>

## If Statement

“Okay okay okay, boolean variables, boolean expressions, blah blah blah,
I thought I was learning how to build control flow into my code!”

You are, I promise you!

Understanding boolean variables and expressions is essential because
they are the building blocks of <a
href="https://www.codecademy.com/resources/docs/python/conditionals?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>conditional statements</em></a>.

Recall the waking-up example from the beginning of this lesson. The
decision-making process of “Is it raining? If so, bring an umbrella” is
a conditional statement.

Here it is phrased in a different way:

    If it is raining, then bring an umbrella.

Can you pick out the boolean expression here?

Right, `"it is raining"` is the boolean expression, and this conditional
statement is checking to see if it is True.

If `"it is raining" == True` then the rest of the conditional statement
will be executed and you will bring an umbrella.

This is the form of a conditional statement:

    If [it is raining], then [bring an umbrella]

In Python, it looks very similar:

``` python
if is_raining:
 print("bring an umbrella")
```

You’ll notice that instead of “then” we have a colon, `:`. That tells
the computer that what’s coming next is what should be executed if the
condition is met.

Let’s take a look at another conditional statement:

``` python
if 2 == 4 - 2: 
 print("apple")
```

Will this code print `apple` to the terminal?

Yes, because the condition of the `if` statement, `2 == 4 - 2` is
`True`.

Let’s work through a couple more together.



**1.**

In **script.py**, there is an `if` statement. I wrote this because my
coworker Dave kept using my computer without permission and he is a real
doofus. If the `user_name` is Dave, it tells him to stay off my
computer.

Enter a user name in the field for `user_name` and try running the
program.

**2.**

Oh no! We got a `SyntaxError`! This happens when we make a small error
in the syntax of the conditional statement.

Read through the error message carefully and see if you can find the
error. Then, fix it, and run the code again.

**3.**

Ugh! Dave got around my security and has been logging onto my computer
using our coworker Angela’s user name, `angela_catlady_87`.

Set your `user_name` to be `angela_catlady_87`.

Update the program with a second `if` statement so it checks for
Angela’s user name as well and prints

    "I know it is you, Dave! Go away!"

in response. That’ll teach him!



``` python
# Enter a user name here, make sure to make it a string
user_name = "angela_catlady_87"

if user_name == "Dave":
  print("Get off my computer, Dave!")

if user_name == "angela_catlady_87":
  print("I know it is you, Dave! Go away!")
```

    ## I know it is you, Dave! Go away!

## Relational Operators II

Now that we’ve added conditional statements to our toolkit for building
control flow, let’s explore more ways to create boolean expressions. So
far we know two relational <a
href="https://www.codecademy.com/resources/docs/python/operators?page_req=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">operators</a>, equals and not equals, but there are a
ton (well, four) more:

- `>` greater than
- `>=` greater than or equal to
- `<` less than
- `<=` less than or equal to

Let’s say we’re running a movie streaming platform and we want to write
a program that checks if our users are over 13 when showing them a PG-13
movie. We could write something like:

``` python
if age <= 13:
 print("Sorry, parental control required")
```

This function will take the user’s age and compare it to the number 13.
If `age` is less than or equal to 13, it will print out a message.

Let’s try some more!



**1.**

Create an `if` statement that checks if `x` and `y` are equal, print the
string below if so:

``` python
"These numbers are the same"
```

**2.**

The nearby college, *Calvin Coolidge’s Cool College* (or *4C*, as the
locals call it) requires students to earn 120 credits to graduate.

Write an `if` statement that checks if the student has enough credits to
graduate. If they do, print the string:

``` python
"You have enough credits to graduate!"
```

Can a student with 120 `credits` graduate from *Calvin Coolidge’s Cool
College*?



``` python
x = 20
y = 20

# Write the first if statement here:

if x == y:
  print("These numbers are the same")

credits = 120

# Write the second if statement here:

if credits >= 120:
  print("You have enough credits to graduate!")
```

    ## These numbers are the same

    ## You have enough credits to graduate!

## Boolean Operators: and

Often, the conditions you want to check in your conditional statement
will require more than one boolean expression to cover. In these cases,
you can build larger boolean expressions using *boolean operators*.
These operators (also known as *logical operators*) combine smaller
boolean expressions into larger boolean expressions.

There are three boolean operators that we will cover:

- `and`
- `or`
- `not`

Let’s start with `and`.

`and` combines two boolean expressions and evaluates as `True` if both
its components are `True`, but `False` otherwise.

Consider the example:

    Oranges are a fruit and carrots are a vegetable.

This boolean expression is comprised of two smaller expressions,
`oranges are a fruit` and `carrots are a vegetable`, both of which are
`True` and connected by the boolean operator `and`, so the entire
expression is `True`.

Let’s look at an example of some AND statements in Python:

``` python
(1 + 1 == 2) and (2 + 2 == 4)   # True

(1 > 9) and (5 != 6)            # False

(1 + 1 == 2) and (2 < 1)        # False

(0 == 10) and (1 + 1 == 1)      # False
```

Notice that in the second and third examples, even though part of the
expression is `True`, the entire expression as a whole is `False`
because the other statement is False. The fourth statement is also
`False` because both components are `False`.



**1.**

Set the variables `statement_one` and `statement_two` equal to the
results of the following boolean expressions:

Statement one:

``` python
(2 + 2 + 2 >= 6) and (-1 * -1 < 0)
```

Statement two:

``` python
(4 * 2 <= 8) and (7 - 1 == 6)
```

**2.**

Let’s return to *Calvin Coolidge’s Cool College*. 120 credits aren’t the
only graduation requirement, you also need to have a GPA of 2.0 or
higher.

Rewrite the `if` statement so that it checks to see if a student meets
both requirements using an `and` statement.

If they do, print the string:

``` python
"You meet the requirements to graduate!"
```



``` python
statement_one = False

statement_two = True

credits = 120
gpa = 3.4

if gpa >= 2.0 and credits >= 120:
  print("You meet the requirements to graduate!")
```

    ## You meet the requirements to graduate!

## Boolean Operators: or

The boolean operator `or` combines two expressions into a larger
expression that is `True` if either component is `True`.

Consider the statement

    Oranges are a fruit or apples are a vegetable.

This statement is composed of two expressions: `oranges are a fruit`
which is `True` and `apples are a vegetable` which is `False`. Because
the two expressions are connected by the `or` operator, the entire
statement is `True`. Only one component needs to be `True` for an `or`
statement to be `True`.

In English, `or` implies that if one component is `True`, then the other
component must be `False`. This is not true in Python. If an `or`
statement has two `True` components, it is also `True`.

Let’s take a look at a couple of examples in Python:

``` python
True or (3 + 4 == 7)    # True
(1 - 1 == 0) or False   # True
(2 < 0) or True         # True
(3 == 8) or (3 > 4)     # False
```

Notice that each `or` statement that has at least one `True` component
is `True`, but the final statement has two `False` components, so it is
`False`.



**1.**

Set the variables `statement_one` and `statement_two` equal to the
results of the following boolean expressions:

Statement one:

``` python
(2 - 1 > 3) or (-5 * 2 == -10)
```

Statement two:

``` python
(9 + 5 <= 15) or (7 != 4 + 3)
```

**2.**

The registrar’s office at *Calvin Coolidge’s Cool College* has another
request. They want to send out a mailer with information on the
commencement ceremonies to students who have met at least one
requirement for graduation (120 credits and 2.0 GPA).

Write an `if` statement that checks if a student either has 120 or more
credits *or* a GPA 2.0 or higher, and if so prints:

``` python
"You have met at least one of the requirements."
```



``` python
statement_one = True

statement_two = True

credits = 118
gpa = 2.0

if credits >= 120 or gpa >= 2.0:
  print("You have met at least one of the requirements.")
```

    ## You have met at least one of the requirements.

## Boolean Operators: not

The final boolean operator we will cover is `not`. This operator is
straightforward: when applied to any boolean expression it reverses the
boolean value. So if we have a `True` statement and apply a `not`
operator we get a `False` statement.

``` python
not True == False
not False == True
```

Consider the following statement:

    Oranges are not a fruit.

Here, we took the `True` statement `oranges are a fruit` and added a
`not` operator to make the `False` statement `oranges are not a fruit`.

This example in English is slightly different from the way it would
appear in Python because in Python we add the `not` operator to the very
beginning of the statement. Let’s take a look at some of those:

``` python
not 1 + 1 == 2  # False
not 7 < 0       # True
```



**1.**

Set the variables `statement_one` and `statement_two` equal to the
results of the following boolean expressions:

Statement one:

``` python
not (4 + 5 <= 9)
```

Statement two:

``` python
not (8 * 2) != 20 - 4
```

**2.**

The registrar’s office at *Calvin Coolidge’s Cool College* has been so
impressed with your work so far that they have another task for you.

They want you to return to a previous `if` statement and add in several
checks using `and` and `not` statements:

- If a student’s `credits` is not greater or equal to 120, it should
  print:

``` python
"You do not have enough credits to graduate."
```

- If their `gpa` is not greater or equal to 2.0, it should print:

``` python
"Your GPA is not high enough to graduate."
```

- If their `credits` is not greater than or equal to 120 *and* their
  `gpa` is not greater than or equal to 2.0, it should print:

``` python
"You do not meet either requirement to graduate!"
```

Make sure your return value matches those strings exactly.
Capitalization, punctuation, and spaces matter!



``` python
statement_one = False

statement_two = True

credits = 120
gpa = 1.8

if not credits >= 120:
  print("You do not have enough credits to graduate.")

if not gpa >= 2.0:
  print("Your GPA is not high enough to graduate.")

if not (credits >= 120) and not (gpa >= 2.0):
  print("You do not meet either requirement to graduate!")
```

    ## Your GPA is not high enough to graduate.

## Else Statements

As you can tell from your work with *Calvin Coolidge’s Cool College*,
once you start including lots of `if` statements in a function the code
becomes a little cluttered and clunky. Luckily, there are other tools we
can use to build control flow.

`else` statements allow us to elegantly describe what we want our code
to do when certain conditions are **not** met.

`else` statements always appear in conjunction with `if` statements.
Consider our waking-up example to see how this works:

``` python
if weekday:
 print("wake up at 6:30")
else:
 print("sleep in")
```

In this way, we can build if statements that execute different code if
conditions are or are not met. This prevents us from needing to write
`if` statements for each possible condition, we can instead write a
blanket `else` statement for all the times the condition is not met.

Let’s return to our `if` statement for our movie streaming platform.
Previously, all it did was check if the user’s age was over `13` and if
so, print out a message. We can use an `else` statement to return a
message in the event the user is too young to watch the movie.

``` python
if age >= 13:
 print("Access granted.")
else:
 print("Sorry, you must be 13 or older to watch this movie.")
```



**1.**

*Calvin Coolidge’s Cool College* has another request for you. They want
you to add an additional check to a previous `if` statement. If a
student is failing to meet one or both graduation requirements, they
want it to print:

``` python
"You do not meet the requirements to graduate."
```

Add an `else` statement to the existing `if` statement.



``` python
credits = 120
gpa = 1.9

if (credits >= 120) and (gpa >= 2.0):
  print("You meet the requirements to graduate!")
else:
  print("You do not meet the requirements to graduate.")
```

    ## You do not meet the requirements to graduate.

## Else If Statements

We have `if` statements, we have `else` statements, we can also have
`elif` statements.

Now you may be asking yourself, what the heck is an `elif` statement?
It’s exactly what it sounds like, “else if”. An `elif` statement checks
another condition after the previous `if` statements conditions aren’t
met.

We can use `elif` statements to control the order we want our program to
check each of our conditional statements. First, the `if` statement is
checked, then each `elif` statement is checked from top to bottom, then
finally the `else` code is executed if none of the previous conditions
have been met.

Let’s take a look at this in practice. The following `if` statement will
display a “thank you” message after someone donates to a charity; there
will be a curated message based on how much was donated.

``` python
print("Thank you for the donation!")

if donation >= 1000:
 print("You've achieved platinum status")
elif donation >= 500:
 print("You've achieved gold donor status")
elif donation >= 100:
 print("You've achieved silver donor status")
else:
 print("You've achieved bronze donor status")
```

Take a second to think about this function. What would happen if all of
the `elif` statements were simply `if` statements? If you donated
\$1100.00, then the first three messages would all print because each
`if` condition had been met.

But because we used `elif` statements, it checks each condition
sequentially and only prints one message. If I donate \$600.00, the code
first checks if that is over 1000, which it is not, then it checks if
it’s over 500, which it is, so it prints that message, then because all
of the other statements are `elif` and `else`, none of them get checked
and no more messages get printed.

Try your hand at some other `elif` statements.



**1.**

*Calvin Coolidge’s Cool College* has noticed that students prefer to get
letter grades.

Write an `if`/`elif`/`else` statement that:

- If `grade` is 90 or higher, print `"A"`
- Else if `grade` is 80 or higher, print `"B"`
- Else if `grade` is 70 or higher, print `"C"`
- Else if `grade` is 60 or higher, print `"D"`
- Else, print `"F"`



``` python
grade = 86

if grade >= 90:
  print("A")
elif grade >= 80:
  print("B")
elif grade >= 70:
  print("C")
elif grade >= 60:
  print("D")
else:
  print("F")
```

    ## B

## Review

Great job! We covered a ton of material in this lesson and we’ve
increased the number of tools in our Python toolkit by several-fold.
Let’s review what we’ve learned this lesson:

- Boolean expressions are statements that can be either `True` or
  `False`
- A boolean variable is a variable that is set to either `True` or
  `False`.
- We can create boolean expressions using relational operators:
  - `==`: Equals
  - `!=`: Not equals
  - `>`: Greater than
  - `>=`: Greater than or equal to
  - `<`: Less than
  - `<=`: Less than or equal to
- `if` statements can be used to create control flow in your code.
- `else` statements can be used to execute code when the conditions of
  an `if` statement are not met.
- `elif` statements can be used to build additional checks into your
  `if` statements

Let’s put these skills to the test!



**Optional:** Little Codey is an interplanetary space boxer, who is
trying to win championship belts for various weight categories on other
planets within the solar system.

Write a **space.py** program that helps Codey keep track of their target
weight by:

1.  Checks which number `planet` is equal to.
2.  It should then compute their weight on the destination planet.

Here is the table of conversions:

| \#  | Planet  | Relative Gravity |
|-----|---------|------------------|
| 1   | Venus   | 0.91             |
| 2   | Mars    | 0.38             |
| 3   | Jupiter | 2.34             |
| 4   | Saturn  | 1.06             |
| 5   | Uranus  | 0.92             |
| 6   | Neptune | 1.19             |

Click to see a hint!

To compute their weight on the planet they are fighting on, multiply
their earth weight and the relative gravity of that planet.

See solution

``` python
if planet == 1:
 weight = weight * 0.91
elif planet == 2:
 weight = weight * 0.38
elif planet == 3:
 weight = weight * 2.34
elif planet == 4:
 weight = weight * 1.06
elif planet == 5:
 weight = weight * 0.92
elif planet == 6:
 weight = weight * 1.19

print("Your weight:", weight)
```

Full solution code can be found <a
href="https://github.com/Codecademy/learn-python/blob/main/2-control-flow/space.py"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>.



``` python
print("I have information for the following planets:\n")

print("   1. Venus   2. Mars    3. Jupiter")
print("   4. Saturn  5. Uranus  6. Neptune\n")
 
weight = 185
planet = 3

# Write an if statement below:

if planet == 1:
  weight = weight * 0.91
elif planet == 2:
  weight = weight * 0.38
elif planet == 3:
  weight = weight * 2.34
elif planet == 4:
  weight = weight * 1.06
elif planet == 5:
  weight = weight * 0.92
elif planet == 6:
  weight = weight * 1.19

print("Your weight:", weight)
```

    ## I have information for the following planets:

    ##    1. Venus   2. Mars    3. Jupiter

    ##    4. Saturn  5. Uranus  6. Neptune

    ## Your weight: 432.9

# Magic 8-Ball

The <a href="https://en.wikipedia.org/wiki/Magic_8-Ball"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Magic 8-Ball</a> is a popular toy
developed in the 1950s for fortune-telling or advice seeking.

Write a **magic8.py** Python program that can answer any “Yes” or “No”
question with a different fortune each time it executes.

<img
src="https://content.codecademy.com/courses/learn-cpp/conditionals-and-logic/magic8ball.gif"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Magic 8-Ball, should I do this project?" />

We’ll be using the following 9 possible answers for our Magic 8-Ball:

- `Yes - definitely`
- `It is decidedly so`
- `Without a doubt`
- `Reply hazy, try again`
- `Ask again later`
- `Better not tell you now`
- `My sources say no`
- `Outlook not so good`
- `Very doubtful`

The output of the program will have the following format:

    [Name] asks: [Question]
    Magic 8-Ball’s answer: [Answer]

For example:

    Joe asks: Is this real life?
    Magic 8-Ball's answer: Better not tell you now

Let’s get started!

## Instructions

Mark the tasks as complete by checking them off

### Setting up

1\.

In **magic8.py**, declare a variable `name` and assign it to the name of
the person who will be asking the Magic 8-Ball.

2\.

Next, declare a variable `question`, and assign it to a “Yes” or “No”
question you’d like to ask the Magic 8-Ball.

3\.

We want to store the answer of the Magic 8-Ball in another variable,
which we’ll call `answer`. For now, assign this variable to an empty
string.

### Generating a random number

4\.

In order for the answer to be different each time we run the program, we
will utilize randomly generated values.

**Note:** This will be something new! But don’t worry, we will try to
explain this topic thoroughly and also supply the code.

In Python, we can use the `.randint()` function from the `random` module
to generate a random number from a range.

But first, let’s import this module so we can use its functions. Add
this line of code to the top of **magic8.py**:

``` python
import random
```

5\.

Next, we’ll create a variable to store the randomly generated value.
Declare a variable called `random_number`, and assign it to the function
call:

``` python
random.randint(1, 9)
```

which will generate a random number between `1` (inclusive) and `9`
(inclusive).

Next, add a `print()` statement that outputs the value of
`random_number`, and run the program several times to ensure random
values are being generated as expected.

Once you’re sure this is working as we expected, feel free to comment
out this `print()` statement.

### Control Flow

6\.

Now that we’ve declared all the variables needed, it’s time to implement
the core logic of our program!

For this section, we’ll be utilizing control flow using an
`if`/`elif`/`else` statement to assign different answers for each
randomly generated value.

First, write an `if` statement where if the `random_number` is equal to
`1`, `answer` is assigned to the phrase “Yes - definitely”

7\.

Next, write an `elif` statement after the `if` statement where if the
`random_number` is equal to `2`, `answer` is assigned to the phrase “It
is decidedly so”.

Then, continue writing `elif` statements for each of the remaining
phrases for the values `3` to `9`.

Recall that the 9 possible answers of the Magic 8-Ball are:

1.  `Yes - definitely`

2.  `It is decidedly so`

3.  `Without a doubt`

4.  `Reply hazy, try again`

5.  `Ask again later`

6.  `Better not tell you now`

7.  `My sources say no`

8.  `Outlook not so good`

9.  `Very doubtful`

8\.

Following the `if`/`elif` statements, add an `else` statement that will
set `answer` to the string “Error”, if the number was accidentally
assigned a value outside of our range.

### Seeing the result

9\.

Now, let’s see our program in action! Write a `print()` statement to
output the asker’s `name` and their `question`, which should be in the
following format:

    [Name] asks: [Question]

For example, when we run the program, the output should look something
like:

    Joe asks: Will I win the lottery?

10\.

Add a second `print()` statement that will output the Magic 8-Ball’s
`answer` in the following format:

    Magic 8-Ball's answer: [answer]

For example, when running the program it should look something like:

    Magic 8-Ball's answer: My sources say no

11\.

Great job! You’ve successfully utilized your knowledge of conditionals
and previous fundamental Python concepts to create a program that
generates different fortunes.

Run your program several times to see that it’s working as expected.

### Optional Challenges

12\.

If you’re up for some more challenges, try implementing the following
features to your program.

So far, the Magic 8-Ball provides 9 possible fortunes. Try to add a few
more possible answers to the program.

To do this, you will need to increase the range of randomly generated
numbers and add additional `elif` statements for each new answer.

13\.

What if the asker does not provide a name, such that the value of `name`
is an empty string? If the `name` string is empty, the output of the
program looks like the following:

    asks: Will I win the lottery?
    Magic 8 Ball's answer: Outlook not so good

As you can see, the formatting of the output can use some improvement
when there is no name provided.

We can address this by printing out just the question, such that it
looks like the following:

    Question: Will I win the lottery?
    Magic 8-Ball's answer: Outlook not so good

You can implement this by creating an `if`/`else` statement such that:

- If the name is an empty string, it will only print the question.
- Else, the player’s name and question are both printed.

14\.

What if the `question` string is empty? If the user does not provide any
question, then the Magic 8-Ball cannot provide a fortune, otherwise, the
fabric of reality is at risk!

To ensure that the fabric of reality is safe, we can create an
`if`/`else` statement where:

- If the question is an empty string, print out a message to the user.
- Else, print the name and question, with the Magic 8-Ball’s answer.



15\.

Don’t forget to check off all the tasks before moving on.

Sample solutions:

- **<a
  href="https://github.com/Codecademy/learn-python/blob/main/2-control-flow/magic-8-ball/magic8.py"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">magic8.py</a>**

P.S. If you make something cool, share it with us!

## Solution

``` python
import random

name = "Joe"
question = "Will I win the lottery?"
answer = ""

random_number = random.randint(1, 9)
# print(random_number)

if random_number == 1:
  answer = "Yes - definitely"
elif random_number == 2:
  answer = "It is decidedly so"
elif random_number == 3:
  answer = "Without a doubt"
elif random_number == 4:
  answer = "Reply hazy, try again"
elif random_number == 5:
  answer = "Ask again later"
elif random_number == 6:
  answer = "Better not tell you now"
elif random_number == 7:
  answer = "My sources say no"
elif random_number == 8:
  answer = "Outlook not so good"
elif random_number == 9:
  answer = "Very doubtful"
else:
  answer = "Error"
  
print(name + " asks: " + question)
print("Magic 8 Ball's answer: " + answer)
```

    ## Joe asks: Will I win the lottery?

    ## Magic 8 Ball's answer: It is decidedly so

# Sal’s Shipping

Sal runs the biggest shipping company in the tri-county area, Sal’s
Shippers. Sal wants to make sure that every single one of his customers
has the best, and most affordable experience shipping their packages.

In this project, you’ll build a program that will take the weight of a
package and determine the cheapest way to ship that package using Sal’s
Shippers.

Sal’s Shippers has several different options for a customer to ship
their package:

- Ground Shipping, which is a small flat charge plus a rate based on the
  weight of your package.
- Ground Shipping Premium, which is a much higher flat charge, but you
  aren’t charged for weight.
- Drone Shipping (new), which has no flat charge, but the rate based on
  weight is triple the rate of ground shipping.

Here are the prices:

**Ground Shipping**

| Weight of Package                         | Price per Pound | Flat Charge |
|-------------------------------------------|-----------------|-------------|
| 2 lb or less                              | \$1.50          | \$20.00     |
| Over 2 lb but less than or equal to 6 lb  | \$3.00          | \$20.00     |
| Over 6 lb but less than or equal to 10 lb | \$4.00          | \$20.00     |
| Over 10 lb                                | \$4.75          | \$20.00     |

**Ground Shipping Premium**

Flat charge: \$125.00

**Drone Shipping**

| Weight of Package                         | Price per Pound | Flat Charge |
|-------------------------------------------|-----------------|-------------|
| 2 lb or less                              | \$4.50          | \$0.00      |
| Over 2 lb but less than or equal to 6 lb  | \$9.00          | \$0.00      |
| Over 6 lb but less than or equal to 10 lb | \$12.00         | \$0.00      |
| Over 10 lb                                | \$14.25         | \$0.00      |

Write a **shipping.py** Python program that asks the user for the weight
of their package and then tells them which method of shipping is
cheapest and how much it will cost to ship their package using Sal’s
Shippers.

Note that the walkthrough video for this project is slightly out of date
— the walkthrough was done using a version of this project that uses
functions. Feel free to come back to the video after having been
introduced to functions!

## Instructions

Mark the tasks as complete by checking them off

### Ground Shipping:

1\.

First things first, define a `weight` variable and set it equal to any
number.

2\.

Next, we need to know how much it costs to ship a package of given
weight by normal ground shipping based on the “Ground shipping” table
above.

Write a comment that says “Ground Shipping”.

Create an `if`/`elif`/`else` statement for the cost of ground shipping.
It should check for `weight`, and print the `cost` of shipping a package
of that weight.

3\.

A package that weighs 8.4 pounds should cost \$53.60 to ship with normal
ground shipping:

$$8.4 lb \times \$4.00+\$20.00=\$53.60$$

Test that your ground shipping function gets the same value.

### Ground Shipping Premium:

4\.

We’ll also need to make sure we include the price of premium ground
shipping in our code.

Create a variable for the cost of premium ground shipping.

**Note:** This does not need to be an `if` statement because the price
of premium ground shipping does not change with the weight of the
package.

5\.

Print it out for the user just in case they forgot!

### Drone Shipping:

6\.

Write a comment for this section of the code, “Drone Shipping”.

Create an `if`/`elif`/`else` statement for the cost of drone shipping.
This statement should check against `weight` and print the `cost` of
shipping a package of that weight.

7\.

A package that weighs 1.5 pounds should cost \$6.75 to ship by drone:

$$1.5 lb \times \$4.50+\$0.00=\$6.75$$

Test that your drone shipping function gets the same value.

:

8\.

Great job! Now, test everything one more time!

What is the cheapest method of shipping a 4.8 pound package and how much
would it cost?

What is the cheapest method of shipping a 41.5 pound package and how
much would it cost?

(See hint for answers)

9\.

Don’t forget to check off all the tasks before moving on.

Sample solutions:

- **<a
  href="https://github.com/Codecademy/learn-python/blob/main/2-control-flow/sals-shipping/shipping.py"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">shipping.py</a>**

P.S. If you make something cool, share it with us!

## Solution

``` python
# Sal's Shipping
# Sonny Li

weight = 80

# Ground Shipping 🚚

if weight <= 2:
  cost_ground = weight * 1.5 + 20
elif weight <= 6:
  cost_ground = weight * 3.00 + 20
elif weight <= 10:
  cost_ground = weight * 4.00 + 20
else:
  cost_ground = weight * 4.75 + 20

print("Ground Shipping $", cost_ground)
      
# Ground Shipping Premimum 🚚💨

cost_ground_premium = 125.00

print("Ground Shipping Premimium $", cost_ground_premium)

# Drone Shipping 🛸

if weight <= 2:
  cost_drone = weight * 4.5
elif weight <= 6:
  cost_drone = weight * 9.00
elif weight <= 10:
  cost_drone = weight * 12.00
else:
  cost_drone = weight * 14.25

print("Drone Shipping: $", cost_drone)
```

    ## Ground Shipping $ 400.0

    ## Ground Shipping Premimium $ 125.0

    ## Drone Shipping: $ 1140.0

# Errors in Python

## Introduction to Bugs

*“<a
href="https://raw.githubusercontent.com/Codecademy/learn-python/main/2-control-flow/art/first-bug.jpg"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">First actual case of bug being
found.</a>“*

The story goes that on September 9<sup>th</sup>, 1947, computer
scientist <a href="https://en.wikipedia.org/wiki/Grace_Hopper"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Grace Hopper</a> found a moth in the
Harvard Mark II computer’s logbook and reported the world’s first
literal computer bug. However, the term “bug,” in the sense of technical
error, dates back at least to 1878 and with Thomas Edison.

Python refers to the mistakes within the program as *errors* and will
point to the location where an error occurred with a `^` character. When
programs throw errors that we didn’t expect to encounter, we call those
errors *bugs*. Programmers call the process of updating the program so
that it no longer produces bugs *debugging*.

During your programming journey, you are destined to encounter
innumerable red errors. Some even say that 75% of development time is
spent on debugging. But what makes a programmer successful isn’t
avoiding errors, it’s knowing how to solve them. And a good place to
start is understanding what they are.

In Python, there are many different ways of classifying errors, but here
are some common ones:

- `SyntaxError`: Error caused by not following the proper structure
  (syntax) of the language.
- `NameError`: Errors reported when the interpreter detects a variable
  that is unknown.
- `TypeError`: Errors thrown when an operation is applied to an object
  of an inappropriate type.

In this mini-lesson, we will be looking at these different error
messages, and you’ll get some practice by debugging them one by one!



Click **Next** to continue.



<img alt="&quot;First actual case of bug being found.&quot;" src="https://content.codecademy.com/courses/learn-cpp/loops/bug.gif" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Syntax Errors

When we are writing Python programs, the interpreter is our first line
of defense against errors.

`SyntaxError` means there is something wrong with the way your program
is written — punctuation that does not belong, a command where it is not
expected, or a missing parenthesis can all trigger a `SyntaxError`.

Here’s an example of a `SyntaxError` error message:

    File "script.py", line 1
     print(Hello world!)
                     ^
    SyntaxError: invalid syntax

The interpreter will tell us where (the file name and line number) it
got into trouble and its best guess as to what is wrong.

After reading the error message, we can assume that the cause for this
error is a lack of quotation marks around `Hello world!`.

Some common syntax errors are:

- Misspelling a Python keyword.
- Missing colon `:`.
- Missing closing parenthesis `)`, square bracket `]`, or curly brace
  `}`.



**1.**

In **script.py**, your coworker Carolyn wrote a Fortune Cookie program
that is supposed to print out a possible fortune based on a random
number and an `if`/`elif`/`else` statement.

Run the program to check it out.

**2.**

Oh no, there are three `SyntaxError` errors inside **script.py**!

Can you find them all?



``` python
# Fortune Cookie Program 🥠 

import random

fortune = random.randint(0, 4)

if fortune == 0:
  print("May you one day be carbon neutral")
elif fortune == 1:  
  print("You have rice in your teeth")
elif fortune == 2:
  print("No snowflake feels responsible for an avalanche")
elif fortune == 3:
  print("You can only connect the dots looking backwards")
elif fortune == 4:
  print("The fortune you seek is in another cookie")
```

    ## No snowflake feels responsible for an avalanche

## Name Errors

A `NameError` is reported by the Python interpreter when it detects a
variable that is unknown.

This can occur if a variable is used before it has been assigned a value
or if a variable name is spelled differently than the point at which it
was defined. The Python interpreter will display the line of code where
the `NameError` was detected and indicate which name is found that was
not defined.

Here’s an example of a `NameError` error message:

    File "script.py", line 1, in <module>
       print(score)
    NameError: name 'score' is not defined

This error is suggesting that the variable `score` was never defined in
the program. Oops.

Some common name errors are:

- Misspelling a variable name.
- Forgetting to define a variable.



**1.**

In **script.py**, another teammate Alex wrote a
<a href="https://youtu.be/_tmkOI6bWKs"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Who Wants to Be A Millionaire</a>
question and four options. If the answer is an uppercase or lowercase
“A”, then the score goes up.

Run the program to check it out.

**2.**

Oh no, there are two `NameError` errors!

Can you find them both?



``` python
# Who Wants To Be A Millionaire 💰

score = 0

option1 = 'Fresca'
option2 = 'V8'
option3 = 'Yoo-hoo'
option4 = 'A&W'
  
print("For ordering his favorite beverages on demand, LBJ had four buttons installed in the Oval Office labeled 'Coffee', 'Tea', 'Coke', and what?\n")

print("A.", option1)
print("B.", option2)
print("C.", option3)
print("D.", option4)
  
answer = 'a'

if answer == 'A' or answer == 'a': 
  score += 100
  print("\nCorrect!")
else:
  print("\nNope, sorry!")
```

    ## For ordering his favorite beverages on demand, LBJ had four buttons installed in the Oval Office labeled 'Coffee', 'Tea', 'Coke', and what?

    ## A. Fresca

    ## B. V8

    ## C. Yoo-hoo

    ## D. A&W

    ## 
    ## Correct!

## Type Errors

A `TypeError` is reported by the Python interpreter when an operation is
applied to a variable of an inappropriate type.

This can occur in Python when one attempts to use an operator on
something of the incorrect type.

For example, let’s see what happens when we try and add together two
incompatible types:

``` python
piggy_bank = '2' + 0.25
```

There will be an `TypeError` error message:

    Traceback (most recent call last):
     File "script.py", line 1, in <module>
       piggy_bank = '2' + 0.25
    TypeError: must be str, not float

This error is reporting that `0.25` is not a string.

Some common type errors are:

- Accidentally adding or subtracting a string value.
- Call a function on something of the incorrect type.



**1.**

The word got out in the office that you are a pro bug catcher!

Another peer Alisha pops out of the blue and hands you a program that
calculates the area of a triangle, a rectangle, and a circle.

Run the program to check it out.

**2.**

Oh no, there’s one `TypeError` error!

Can you find it?



``` python
# Area Calculator 📏

import math

base = 20
height = 30
area = base * height / 2

print("The triangle area is", area)

length = 2
width = 12
area = length * width

print("The rectangle area is", area )
    
radius = 36
area = math.pi * radius * radius
    
print("The circle area is", area)
```

    ## The triangle area is 300.0

    ## The rectangle area is 24

    ## The circle area is 4071.5040790523717

## Review

Finding bugs is a huge part of a programmer’s life. Don’t be intimidated
by them! In fact, errors in your code mean you’re trying to do something
cool.

In this lesson, we have learned about the three types of Python errors:

- `SyntaxError`: Error caused by not following the proper structure
  (syntax) of the language.
- `NameError`: Errors reported when the interpreter detects an object
  that is unknown.
- `TypeError`: Errors thrown when an operation is applied to an object
  of an inappropriate type.

There is also another type of error that doesn’t have error messages
that we will cover down the line:

- Logic errors: Errors found by the programmer when the program isn’t
  doing what it is intending to do.

Remember, <a href="https://google.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Google</a> and
<a href="https://stackoverflow.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Stack Overflow</a> are a programmer’s
BFFs (best friends forever) in situations where an error is giving you a
lot of trouble. For some more motivation, check out this
<a href="https://news.codecademy.com/errors-in-code-think-differently/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">blog post</a>.

We wish you the best of luck in your bug-squashing journey! 🔎



An empty **review.py** file is provided in the code editor. Try
experimenting and see what new errors you can find!
