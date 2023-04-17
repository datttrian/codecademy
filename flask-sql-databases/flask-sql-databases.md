# Welcome to SQL and Databases for Backend Web Apps

Learn how to add database functionality to your web apps!

Welcome to the section of the course focused on working with databases.
In this section, you will learn how to add data storage capabilities to
your web apps.

Begin by learning SQL, or Structured Query Language, the most common
language used for managing data in databases.

Then learn how to add a database to your Flask web apps with
Flask-SQLAlchemy, a helpful tool that combines object-oriented
programming approaches with database concepts.

Let’s get started!

# Manipulation

## Introduction to SQL

<a href="https://www.codecademy.com/resources/docs/sql/about-sql"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">SQL</a>, **S**tructured **Q**uery **L**anguage, is a
programming language designed to manage data stored in <a
href="https://www.codecademy.com/resources/docs/general/relational-database?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">relational databases</a>. SQL operates through simple,
declarative statements. This keeps data accurate and secure, and helps
maintain the integrity of <a
href="https://www.codecademy.com/resources/docs/general/database?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">databases</a>, regardless of size.

The SQL language is widely used today across web frameworks and database
applications. Knowing SQL gives you the freedom to explore your data,
and the power to make better decisions. By learning SQL, you will also
learn concepts that apply to nearly every data storage system.

The statements covered in this course use SQLite Relational Database
Management System
<a href="https://www.codecademy.com/articles/what-is-rdbms-sql"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">(RDBMS)</a>. You can also access a glossary of all the
<a href="https://www.codecademy.com/articles/sql-commands"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">SQL commands</a> taught in this course.



**1.**

Let’s begin by entering a SQL command.

In the code editor, type:

``` sql
SELECT * FROM celebs;
```

You will run all of your SQL commands in this course by pressing the Run
button at the bottom of the code editor.

Press Run.



``` sql
SELECT * FROM celebs;
```

## Relational Databases

Nice work! In one line of code, you returned information from a
relational database.

``` sql
SELECT * FROM celebs;
```

We’ll take a look at what this code means soon, for now, let’s focus on
what relational databases are and how they are organized.

A <a
href="https://www.codecademy.com/resources/docs/general/relational-database?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>relational database</em></a> is a <a
href="https://www.codecademy.com/resources/docs/general/database?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">database</a> that organizes information into one or more
tables. Here, the relational database contains one table.

A *table* is a collection of data organized into rows and columns.
Tables are sometimes referred to as *relations*. Here the table is
`celebs`.

A *column* is a set of data values of a particular type. Here, `id`,
`name`, and `age` are the columns.

A *row* is a single record in a table. The first row in the `celebs`
table has:

- An `id` of `1`
- A `name` of `Justin Bieber`
- An `age` of `22`

All data stored in a relational database is of a certain <a
href="https://www.codecademy.com/resources/docs/sql/data-types?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">data type</a>. Some of the most common data types are:

- `INTEGER`, a positive or negative whole number
- `TEXT`, a text string
- `DATE`, the date formatted as YYYY-MM-DD
- `REAL`, a decimal value



Now that you have an understanding of what relational databases are,
let’s take a closer look at SQL syntax.

Click Next to continue.

## Statements

The code below is a SQL statement. A *statement* is text that the
database recognizes as a valid command. Statements always end in a
semicolon `;`.

``` sql
CREATE TABLE table_name (
   column_1 data_type, 
   column_2 data_type, 
   column_3 data_type
);
```

Let’s break down the components of a statement:

1.  <a
    href="https://www.codecademy.com/resources/docs/sql/commands/create-table?page_ref=catalog"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank"><code
    class="code__2rdF32qjRVp7mMVBHuPwDS">CREATE TABLE</code></a> is a
    *clause*. Clauses perform specific tasks in SQL. By convention,
    clauses are written in capital letters. Clauses can also be referred
    to as commands.
2.  `table_name` refers to the name of the table that the command is
    applied to.
3.  `(column_1 data_type, column_2 data_type, column_3 data_type)` is a
    *parameter*. A parameter is a list of columns, <a
    href="https://www.codecademy.com/resources/docs/sql/data-types?page_ref=catalog"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank">data types</a>, or values that are passed to a
    clause as an argument. Here, the parameter is a list of column names
    and the associated data type.

The structure of SQL statements vary. The number of lines used does not
matter. A statement can be written all on one line, or split up across
multiple lines if it makes it easier to read. In this course, you will
become familiar with the structure of common statements.



**1.**

Let’s take a closer look at the statement we wrote before. In the code
editor, type:

``` sql
SELECT * FROM celebs;
```

Run the code to observe the results, and ask yourself:

- Which parts of the statement are the *clauses*?
- What table are we applying the command to?

Uncover the hint to view the answers, and then proceed to the next
exercise.

## Create

`CREATE` statements allow us to create a new table in the database. You
can use the `CREATE` statement anytime you want to create a new table
from scratch. The statement below creates a new table named `celebs`.

``` sql
CREATE TABLE celebs (
   id INTEGER, 
   name TEXT, 
   age INTEGER
);
```

1\. <a
href="https://www.codecademy.com/resources/docs/sql/commands/create-table?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">CREATE TABLE</code></a> is a clause
that tells SQL you want to create a new table.  
2. `celebs` is the name of the table.  
3. `(id INTEGER, name TEXT, age INTEGER)` is a list of parameters
defining each column, or attribute in the table and its <a
href="https://www.codecademy.com/resources/docs/sql/data-types?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">data type</a>:

- `id` is the first column in the table. It stores values of data type
  `INTEGER`
- `name` is the second column in the table. It stores values of data
  type `TEXT`
- `age` is the third column in the table. It stores values of data type
  `INTEGER`



**1.**

Now that you have a good understanding of SQL syntax, we can create a
new table. We’ve cleared the database from the previous exercises.
Confirm no `celebs` table exists by entering the following in the code
editor:

``` sql
SELECT * FROM celebs;
```

Look at the results. The database should be empty!

**2.**

Now that we know the database is empty, let’s create a new `celebs`
table.

In the code editor, type:

``` sql
CREATE TABLE celebs (
   id INTEGER, 
   name TEXT, 
   age INTEGER
); 
```

We will learn how to view this table in a later exercise after we have
added some data to it.



``` sql
SELECT * FROM celebs;
 
CREATE TABLE celebs (
   id INTEGER, 
   name TEXT, 
   age INTEGER
);
```

## Insert

The `INSERT` statement inserts a new row into a table.

We can use the `INSERT` statement when you want to add new records. The
statement below enters a record for Justin Bieber into the `celebs`
table.

``` sql
INSERT INTO celebs (id, name, age) 
VALUES (1, 'Justin Bieber', 22);
```

- <a
  href="https://www.codecademy.com/resources/docs/sql/commands/insert-into?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">INSERT INTO</code></a> is a
  clause that adds the specified row or rows.  
- `celebs` is the table the row is added to.  
- `(id, name, age)` is a parameter identifying the columns that data
  will be inserted into.  
- `VALUES` is a clause that indicates the data being inserted.  
- `(1, 'Justin Bieber', 22)` is a parameter identifying the values being
  inserted.
  - `1`: an integer that will be added to `id` column
  - `'Justin Bieber'`: text that will be added to `name` column
  - `22`: an integer that will be added to `age` column



**1.**

Add a row to the table. In the code editor, type:

``` sql
INSERT INTO celebs (id, name, age) 
VALUES (1, 'Justin Bieber', 22); 
```

Look at the Database Schema. How many rows are in the `celebs` table?

**2.**

Add three more celebrities to the table. Beneath your previous `INSERT`
statement type:

``` sql
INSERT INTO celebs (id, name, age) 
VALUES (2, 'Beyonce Knowles', 33); 
 
INSERT INTO celebs (id, name, age) 
VALUES (3, 'Jeremy Lin', 26); 
 
INSERT INTO celebs (id, name, age) 
VALUES (4, 'Taylor Swift', 26); 
```

Look at the Database Schema. How many rows are in the `celebs` table
now?



``` sql
INSERT INTO celebs (id, name, age) 
VALUES (1, 'Justin Bieber', 22);

INSERT INTO celebs (id, name, age) 
VALUES (2, 'Beyonce Knowles', 33); 

INSERT INTO celebs (id, name, age) 
VALUES (3, 'Jeremy Lin', 26); 

INSERT INTO celebs (id, name, age) 
VALUES (4, 'Taylor Swift', 26);
```

## Select

`SELECT` statements are used to fetch data from a database. In the
statement below, `SELECT` returns all data in the `name` column of the
`celebs` table.

``` sql
SELECT name FROM celebs;
```

1\. <a
href="https://www.codecademy.com/resources/docs/sql/commands/select?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">SELECT</code></a> is a clause that
indicates that the statement is a query. You will use `SELECT` every
time you query data from a database.  
2. `name` specifies the column to query data from.  
3. `FROM celebs` specifies the name of the table to query data from. In
this statement, data is queried from the `celebs` table.

You can also query data from all columns in a table with `SELECT`.

``` sql
SELECT * FROM celebs;
```

`*` is a special wildcard character that we have been using. It allows
you to select every column in a table without having to name each one
individually. Here, the result set contains every column in the `celebs`
table.

`SELECT` statements always return a new table called the *result set*.



**1.**

Let’s take a closer look at `SELECT` and retrieve all the `name`s in the
`celebs` table. In the code editor, type:

``` sql
SELECT name FROM celebs; 
```

**2.**

Delete your previous `SELECT` statement from the code editor.

To `SELECT` *all* the data in the `celebs` table, enter the following
statement in the code editor using the `*` wildcard character:

``` sql
SELECT * FROM celebs;
```



``` sql
SELECT name FROM celebs; 
```

``` sql
SELECT * FROM celebs; 
```

## Alter

The `ALTER TABLE` statement adds a new column to a table. You can use
this command when you want to add columns to a table. The statement
below adds a new column `twitter_handle` to the `celebs` table.

``` sql
ALTER TABLE celebs 
ADD COLUMN twitter_handle TEXT;
```

1\. <a
href="https://www.codecademy.com/resources/docs/sql/commands/alter-table?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">ALTER TABLE</code></a> is a clause
that lets you make the specified changes.  
2. `celebs` is the name of the table that is being changed.  
3. `ADD COLUMN` is a clause that lets you add a new column to a table:

- `twitter_handle` is the name of the new column being added
- `TEXT` is the data type for the new column

4\. `NULL` is a special value in SQL that represents missing or unknown
data. Here, the rows that existed before the column was added have
`NULL` (∅) values for `twitter_handle`.



**1.**

Add a new column to the table. In the code editor, type:

``` sql
ALTER TABLE celebs 
ADD COLUMN twitter_handle TEXT; 
 
SELECT * FROM celebs; 
```



``` sql
ALTER TABLE celebs 
ADD COLUMN twitter_handle TEXT; 

SELECT * FROM celebs;
```

## Update

The `UPDATE` statement edits a row in a table. You can use the `UPDATE`
statement when you want to change existing records. The statement below
updates the record with an `id` value of `4` to have the
`twitter_handle` `@taylorswift13`.

``` sql
UPDATE celebs 
SET twitter_handle = '@taylorswift13' 
WHERE id = 4; 
```

1\. <a
href="https://www.codecademy.com/resources/docs/sql/commands/update?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">UPDATE</code></a> is a clause that
edits a row in the table.  
2. `celebs` is the name of the table.  
3. `SET` is a clause that indicates the column to edit.

- `twitter_handle` is the name of the column that is going to be updated
- `@taylorswift13` is the new value that is going to be inserted into
  the `twitter_handle` column.

4\. `WHERE` is a clause that indicates which row(s) to update with the
new column value. Here the row with a `4` in the `id` column is the row
that will have the `twitter_handle` updated to `@taylorswift13`.



**1.**

Update the table to include Taylor Swift’s
<a href="https://twitter.com/taylorswift13"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">twitter handle</a>. In the code editor,
type:

``` sql
UPDATE celebs 
SET twitter_handle = '@taylorswift13' 
WHERE id = 4; 
 
SELECT * FROM celebs;
```



``` sql
UPDATE celebs 
SET twitter_handle = '@taylorswift13' 
WHERE id = 4; 

SELECT * FROM celebs;
```

## Delete

The `DELETE FROM` statement deletes one or more rows from a table. You
can use the statement when you want to delete existing records. The
statement below deletes all records in the `celebs` table with no
`twitter_handle`:

``` sql
DELETE FROM celebs 
WHERE twitter_handle IS NULL;
```

1.  <a
    href="https://www.codecademy.com/resources/docs/sql/commands/delete?page_ref=catalog"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank"><code
    class="code__2rdF32qjRVp7mMVBHuPwDS">DELETE FROM</code></a> is a
    clause that lets you delete rows from a table.
2.  `celebs` is the name of the table we want to delete rows from.
3.  `WHERE` is a clause that lets you select which rows you want to
    delete. Here we want to delete all of the rows where the
    twitter_handle column `IS NULL`.
4.  `IS NULL` is a condition in SQL that returns true when the value is
    `NULL` and false otherwise.



**1.**

Delete all of the rows that have a `NULL` value in the twitter handle
column. In the code editor, type the following:

``` sql
DELETE FROM celebs 
WHERE twitter_handle IS NULL;
 
SELECT * FROM celebs; 
```

How many rows exist in the `celebs` table now?



``` sql
DELETE FROM celebs 
WHERE twitter_handle IS NULL;

SELECT * FROM celebs;
```

## Constraints

<a
href="https://www.codecademy.com/resources/docs/sql/constraints?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>Constraints</em></a> that add information about how
a column can be used are invoked after specifying the data type for a
column. They can be used to tell the database to reject inserted data
that does not adhere to a certain restriction. The statement below sets
*constraints* on the `celebs` table.

``` sql
CREATE TABLE celebs (
   id INTEGER PRIMARY KEY, 
   name TEXT UNIQUE,
   date_of_birth TEXT NOT NULL,
   date_of_death TEXT DEFAULT 'Not Applicable'
);
```

1\. `PRIMARY KEY` columns can be used to uniquely identify the row.
Attempts to insert a row with an identical value to a row already in the
table will result in a *constraint violation* which will not allow you
to insert the new row.

2\. `UNIQUE` columns have a different value for every row. This is
similar to `PRIMARY KEY` except a table can have many different `UNIQUE`
columns.

3\. `NOT NULL` columns must have a value. Attempts to insert a row
without a value for a `NOT NULL` column will result in a constraint
violation and the new row will not be inserted.

4\. `DEFAULT` columns take an additional argument that will be the
assumed value for an inserted row if the new row does not specify a
value for that column.



**1.**

Create a new table with constraints on the values. In the code editor
type:

``` sql
CREATE TABLE awards (
   id INTEGER PRIMARY KEY,
   recipient TEXT NOT NULL,
   award_name TEXT DEFAULT 'Grammy'
);
```

How many tables do you see in the database schema on the right?



``` sql
CREATE TABLE awards (
   id INTEGER PRIMARY KEY,
   recipient TEXT NOT NULL,
   award_name TEXT DEFAULT 'Grammy'
);
```

## Review

Congratulations! We’ve learned six commands commonly used to manage data
stored in a relational database and how to set constraints on such data.
What can we generalize so far?

<a href="https://www.codecademy.com/resources/docs/sql?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">SQL</a> is a programming language designed to manipulate
and manage data stored in relational databases.

- A *relational database* is a database that organizes information into
  one or more tables.
- A *table* is a collection of data organized into rows and columns.

A *statement* is a string of characters that the database recognizes as
a valid command.

- <a
  href="https://www.codecademy.com/resources/docs/sql/commands/create-table?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">CREATE TABLE</code></a> creates a
  new table.
- <a
  href="https://www.codecademy.com/resources/docs/sql/commands/insert-into?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">INSERT INTO</code></a> adds a new
  row to a table.
- <a
  href="https://www.codecademy.com/resources/docs/sql/commands/select?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">SELECT</code></a> queries data
  from a table.
- <a
  href="https://www.codecademy.com/resources/docs/sql/commands/alter-table?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">ALTER TABLE</code></a> changes an
  existing table.
- <a
  href="https://www.codecademy.com/resources/docs/sql/commands/update?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">UPDATE</code></a> edits a row in
  a table.
- <a
  href="https://www.codecademy.com/resources/docs/sql/commands/delete?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">DELETE FROM</code></a> deletes
  rows from a table.

<a
href="https://www.codecademy.com/resources/docs/sql/constraints?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>Constraints</em></a> add information about how a
column can be used.



In this lesson, we have learned SQL statements that create, edit, and
delete data. In the upcoming lessons, we will learn how to use SQL to
retrieve information from a database!

# Create a Table

In this project, you will create your own `friends` table and add/delete
data from it!

The instructions provided are a general guideline. Feel free to add more
columns, insert more data, and create more tables.

After completing the instructions for each Task below, click the “Save”
button to check your progress. If nothing populates in the “Query
Results” tab to the right, double-check your work for syntax errors.

If you get stuck during this project or would like to see an experienced
developer work through it, click **Get Unstuck** to see a walkthrough
video.



Mark the tasks as complete by checking them off

1\.

Create a table named `friends` with three columns:

- `id` that stores `INTEGER`
- `name` that stores `TEXT`
- `birthday` that stores `DATE`

2\.

Beneath your current code, add Ororo Munroe to `friends`.

Her birthday is May 30th, 1940.

3\.

Let’s make sure that Ororo has been added to the database:

``` sql
SELECT * 
FROM friends;
```

Check for two things:

- Is `friends` table created?
- Is Ororo Munroe added to it?

4\.

Let’s move on!

Add two of your friends to the table.

Insert an `id`, `name`, and `birthday` for each of them.

5\.

Ororo Munroe just realized that she can control the weather and decided
to change her name. Her new name is “Storm”.

Update her record in `friends`.

6\.

Add a new column named `email`.

7\.

Update the email address for everyone in your table.

Storm’s email is `storm@codecademy.com`.

8\.

Wait, Storm is fictional…

Remove her from `friends`.

9\.

Great job! Let’s take a look at the result one last time:

``` sql
SELECT * 
FROM friends;
```



``` sql
CREATE TABLE friends(
id INTEGER,
name TEXT,
birthday DATE
);

INSERT INTO friends (id, name, birthday) VALUES (1, 'Jane Doe', '1990-05-30');

SELECT * FROM friends;

INSERT INTO friends (id, name, birthday) VALUES (2, 'Joe Biden', '1950-02-23');

INSERT INTO friends (id, name, birthday) VALUES (3, 'Bob Smith', '1986-11-27');

UPDATE friends
SET name = 'Jane Smith'
WHERE id

ALTER TABLE friends
ADD COLUMN email TEXT;

UPDATE friends
SET email = 'Jane@codecademy.com'
WHERE id = 1;

UPDATE friends.
SET email = 'Joe@codecademy. com'
WHERE id = 2

UPDATE friends
SET email = 'Bob@codecademy. com'
WHERE id = 3

DELETE FROM friends WHERE id = 1;

SELECT * FROM friends;
```

# Queries

## Introduction

In this lesson, we will be learning different SQL commands to **query**
a single table in a database.

One of the core purposes of the SQL language is to retrieve information
stored in a database. This is commonly referred to as querying. Queries
allow us to communicate with the database by asking questions and
returning a result set with data relevant to the question.

We will be querying a database with one table named `movies`.

Let’s get started!

Fun fact: IBM started out SQL as SEQUEL (**S**tructured **E**nglish
**QUE**ry **L**anguage) in the 1970’s to query databases.



**1.**

We should get acquainted with the `movies` table.

In the editor, type the following:

``` sql
SELECT * FROM movies;
```

What are the column names?



``` sql
SELECT * FROM movies;
```

## Select

Previously, we learned that <a
href="https://www.codecademy.com/resources/docs/sql/commands/select?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">SELECT</code></a> is used every
time you want to query data from a database and `*` means *all* columns.

Suppose we are only interested in two of the columns. We can select
individual columns by their names (separated by a comma):

``` sql
SELECT column1, column2 
FROM table_name;
```

To make it easier to read, we moved `FROM` to another line.

Line breaks don’t mean anything specific in SQL. We could write this
entire query in one line, and it would run just fine.



**1.**

Let’s only select the `name` and `genre` columns of the table.

In the code editor, type the following:

``` sql
SELECT name, genre 
FROM movies;
```

**2.**

Now we want to include a third column.

Edit your query so that it returns the `name`, `genre`, *and* `year`
columns of the table.



``` sql
SELECT name, genre, year
FROM movies;
```

## As

Knowing how <a
href="https://www.codecademy.com/resources/docs/sql/commands/select?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">SELECT</code></a> works, suppose we
have the code below:

``` sql
SELECT name AS 'Titles'
FROM movies;
```

Can you guess what `AS` does?

<a
href="https://www.codecademy.com/resources/docs/sql/commands/as?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code class="code__2rdF32qjRVp7mMVBHuPwDS">AS</code></a>
is a keyword in SQL that allows you to *rename* a column or table using
an alias. The new name can be anything you want as long as you put it
inside of single quotes. Here we renamed the `name` column as `Titles`.

Some important things to note:

- Although it’s not always necessary, it’s best practice to surround
  your aliases with single quotes.
- When using `AS`, the columns are not being renamed in the table. The
  aliases only appear in the result.



**1.**

To showcase what the `AS` keyword does, select the `name` column and
rename it with an alias of your choosing.

Place the alias inside single quotes, like so:

``` sql
SELECT name AS '______'
FROM movies;
```

Note in the result, that the name of the column is now your alias.

**2.**

Edit the query so that instead of selecting and renaming the `name`
column, select the `imdb_rating` column and rename it as `IMDb`.



``` sql
SELECT imdb_rating AS 'IMDb' 
FROM movies;
```

## Distinct

When we are examining data in a table, it can be helpful to know what
*distinct* values exist in a particular column.

<a
href="https://www.codecademy.com/resources/docs/sql/commands/select-distinct?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">DISTINCT</code></a> is used to
return unique values in the output. It filters out all duplicate values
in the specified column(s).

For instance,

``` sql
SELECT tools 
FROM inventory;
```

might produce:

| tools  |
|--------|
| Hammer |
| Nails  |
| Nails  |
| Nails  |

By adding `DISTINCT` before the column name,

``` sql
SELECT DISTINCT tools 
FROM inventory;
```

the result would now be:

| tools  |
|--------|
| Hammer |
| Nails  |

Filtering the results of a query is an important skill in SQL. It is
easier to see the different possible `genre`s in the `movie` table after
the data has been filtered than to scan every row in the table.



**1.**

Let’s try it out. In the code editor, type:

``` sql
SELECT DISTINCT genre 
FROM movies;
```

What are the unique genres?

**2.**

Now, change the code so we return the unique values of the `year` column
instead.



``` sql
SELECT DISTINCT year 
FROM movies;
```

## Where

We can restrict our query results using the <a
href="https://www.codecademy.com/resources/docs/sql/commands/where?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">WHERE</code></a> clause in order to
obtain only the information we want.

Following this format, the statement below filters the result set to
only include top rated movies (IMDb ratings greater than 8):

``` sql
SELECT *
FROM movies
WHERE imdb_rating > 8;
```

How does it work?

1.  The `WHERE` clause filters the result set to only include rows where
    the following *condition* is true.

2.  `imdb_rating > 8` is the condition. Here, only rows with a value
    greater than 8 in the `imdb_rating` column will be returned.

The `>` is an *operator*. Operators create a condition that can be
evaluated as either *true* or *false*.

Comparison operators used with the `WHERE` clause are:

- `=` equal to
- `!=` not equal to
- `>` greater than
- `<` less than
- `>=` greater than or equal to
- `<=` less than or equal to

There are also some special operators that we will learn more about in
the upcoming exercises.



**1.**

Suppose we want to take a peek at all the not-so-well-received movies in
the database.

In the code editor, type:

``` sql
SELECT * 
FROM movies 
WHERE imdb_rating < 5;
```

Ouch!

**2.**

Edit the query so that it will now retrieve all the recent movies,
specifically those that were released after 2014.

Select all the columns using `*`.



``` sql
SELECT *
FROM movies
WHERE year > 2014;
```

## Like I

<a
href="https://www.codecademy.com/resources/docs/sql/operators/like?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">LIKE</code></a> can be a useful
operator when you want to compare similar values.

The `movies` table contains two films with similar titles, ‘Se7en’ and
‘Seven’.

How could we select all movies that start with ‘Se’ and end with ‘en’
and have exactly one character in the middle?

``` sql
SELECT * 
FROM movies
WHERE name LIKE 'Se_en';
```

- `LIKE` is a special operator used with the `WHERE` clause to search
  for a specific pattern in a column.

- `name LIKE 'Se_en'` is a condition evaluating the `name` column for a
  specific pattern.

- `Se_en` represents a pattern with a *wildcard* character.

The `_` means you can substitute any individual character here without
breaking the pattern. The names `Seven` and `Se7en` both match this
pattern.



**1.**

Let’s test it out.

In the code editor, type:

``` sql
SELECT * 
FROM movies
WHERE name LIKE 'Se_en';
```



``` sql
SELECT * 
FROM movies
WHERE name LIKE 'Se_en';
```

## Like II

The percentage sign `%` is another wildcard character that can be used
with <a
href="https://www.codecademy.com/resources/docs/sql/operators/like?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">LIKE</code></a>.

This statement below filters the result set to only include movies with
names that begin with the letter ‘A’:

``` sql
SELECT * 
FROM movies
WHERE name LIKE 'A%';
```

`%` is a wildcard character that matches zero or more missing letters in
the pattern. For example:

- `A%` matches all movies with names that begin with letter ‘A’
- `%a` matches all movies that end with ‘a’

We can also use `%` both before and after a pattern:

``` sql
SELECT * 
FROM movies 
WHERE name LIKE '%man%';
```

Here, any movie that *contains* the word ‘man’ in its name will be
returned in the result.

`LIKE` is not case sensitive. ‘Batman’ and ‘Man of Steel’ will both
appear in the result of the query above.



**1.**

In the text editor, type:

``` sql
SELECT * 
FROM movies
WHERE name LIKE '%man%';
```

How many movie titles contain the word ‘man’?

**2.**

Let’s try one more.

Edit the query so that it selects all the information about the movie
titles that *begin* with the word ‘The’.

You might need a space in there!



``` sql
SELECT * 
FROM movies
WHERE name LIKE 'The %';
```

## Is Null

By this point of the lesson, you might have noticed that there are a few
missing values in the `movies` table. More often than not, the data you
encounter will have missing values.

Unknown values are indicated by `NULL`.

It is not possible to test for `NULL` values with comparison operators,
such as `=` and `!=`.

Instead, we will have to use these operators:

- <a
  href="https://www.codecademy.com/resources/docs/sql/operators/is-null?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">IS NULL</code></a>
- <a
  href="https://www.codecademy.com/resources/docs/sql/operators/is-not-null?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">IS NOT NULL</code></a>

To filter for all movies *with* an IMDb rating:

``` sql
SELECT name
FROM movies 
WHERE imdb_rating IS NOT NULL;
```



**1.**

Now let’s do the opposite.

Write a query to find all the movies *without* an IMDb rating.

Select only the `name` column!



``` sql
SELECT name
FROM movies
WHERE imdb_rating IS NULL;
```

## Between

The <a
href="https://www.codecademy.com/resources/docs/sql/operators/between?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">BETWEEN</code></a> operator is used
in a <a
href="https://www.codecademy.com/resources/docs/sql/commands/where?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">WHERE</code></a> clause to filter
the result set within a certain *range*. It accepts two values that are
either numbers, text or dates.

For example, this statement filters the result set to only include
movies with `year`s from 1990 up to, *and including* 1999.

``` sql
SELECT *
FROM movies
WHERE year BETWEEN 1990 AND 1999;
```

When the values are text, `BETWEEN` filters the result set for within
the alphabetical range.

In this statement, `BETWEEN` filters the result set to only include
movies with `name`s that begin with the letter ‘A’ up to, *but not
including* ones that begin with ‘J’.

``` sql
SELECT *
FROM movies
WHERE name BETWEEN 'A' AND 'J';
```

However, if a movie has a name of simply ‘J’, it would actually match.
This is because `BETWEEN` goes *up to* the second value — up to ‘J’. So
the movie named ‘J’ would be included in the result set but not ‘Jaws’.



**1.**

Using the `BETWEEN` operator, write a query that selects all information
about movies whose `name` begins with the letters ‘D’, ‘E’, and ‘F’.

**2.**

Remove the previous query.

Using the `BETWEEN` operator, write a new query that selects all
information about movies that were released in the 1970’s.



``` sql
-- Step 1 Solution
-- SELECT *
-- FROM movies
-- WHERE name BETWEEN 'D 'AND 'G';

-- Step 2 Solution
SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979;
```

## And

Sometimes we want to *combine multiple conditions* in a <a
href="https://www.codecademy.com/resources/docs/sql/commands/where?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">WHERE</code></a> clause to make the
result set more specific and useful.

One way of doing this is to use the <a
href="https://www.codecademy.com/resources/docs/sql/operators/and?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">AND</code></a> operator. Here, we
use the `AND` operator to only return 90’s romance movies.

``` sql
SELECT * 
FROM movies
WHERE year BETWEEN 1990 AND 1999
   AND genre = 'romance';
```

- `year BETWEEN 1990 AND 1999` is the 1st condition.

- `genre = 'romance'` is the 2nd condition.

- `AND` combines the two conditions.

<img
src="https://content.codecademy.com/courses/learn-sql/queries/AND.svg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="AND Venn Diagram" />

With `AND`, *both* conditions must be true for the row to be included in
the result.



**1.**

In the previous exercise, we retrieved every movie released in the
1970’s.

Now, let’s retrieve every movie released in the 70’s, that’s also well
received.

In the code editor, type:

``` sql
SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979
  AND imdb_rating > 8;
```

**2.**

Remove the previous query.

Suppose we have a picky friend who only wants to watch old horror films.

Using `AND`, write a new query that selects all movies made prior to
1985 that are also in the `horror` genre.



``` sql
SELECT *
FROM movies
WHERE year < 1985
   AND genre = 'horror';
```

## Or

Similar to `AND`, the `OR` operator can also be used to combine multiple
conditions in <a
href="https://www.codecademy.com/resources/docs/sql/commands/where?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">WHERE</code></a>, but there is a
fundamental difference:

- <a
  href="https://www.codecademy.com/resources/docs/sql/operators/and?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">AND</code></a> operator displays
  a row if *all* the conditions are true.
- <a
  href="https://www.codecademy.com/resources/docs/sql/operators/or?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code class="code__2rdF32qjRVp7mMVBHuPwDS">OR</code></a>
  operator displays a row if *any* condition is true.

Suppose we want to check out a new movie or something action-packed:

``` sql
SELECT *
FROM movies
WHERE year > 2014
   OR genre = 'action';
```

- `year > 2014` is the 1st condition.

- `genre = 'action'` is the 2nd condition.

- `OR` combines the two conditions.

<img
src="https://content.codecademy.com/courses/learn-sql/queries/OR.svg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="OR Venn Diagram" />

With `OR`, if *any* of the conditions are true, then the row is added to
the result.



**1.**

Let’s test this out:

``` sql
SELECT *
FROM movies
WHERE year > 2014
   OR genre = 'action';
```

**2.**

Suppose we are in the mood for a good laugh or a good cry.

Using `OR`, write a query that returns all movies that are either a
romance or a comedy.



``` sql
SELECT *
FROM movies
WHERE genre = 'romance'
   OR genre = 'comedy';
```

## Order By

That’s it with <a
href="https://www.codecademy.com/resources/docs/sql/commands/where?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">WHERE</code></a> and its operators.
Moving on!

It is often useful to list the data in our result set in a particular
order.

We can *sort* the results using <a
href="https://www.codecademy.com/resources/docs/sql/commands/order-by?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">ORDER BY</code></a>, either
alphabetically or numerically. Sorting the results often makes the data
more useful and easier to analyze.

For example, if we want to sort everything by the movie’s title from A
through Z:

``` sql
SELECT *
FROM movies
ORDER BY name;
```

- `ORDER BY` is a clause that indicates you want to sort the result set
  by a particular column.

- `name` is the specified column.

Sometimes we want to sort things in a decreasing order. For example, if
we want to select all of the well-received movies, sorted from highest
to lowest by their year:

``` sql
SELECT *
FROM movies
WHERE imdb_rating > 8
ORDER BY year DESC;
```

- `DESC` is a keyword used in `ORDER BY` to sort the results in
  *descending order* (high to low or Z-A).

- `ASC` is a keyword used in `ORDER BY` to sort the results in
  *ascending* order (low to high or A-Z).

The column that we `ORDER BY` doesn’t even have to be one of the columns
that we’re displaying.

Note: `ORDER BY` always goes after `WHERE` (if `WHERE` is present).



**1.**

Suppose we want to retrieve the `name` and `year` columns of all the
movies, ordered by their name alphabetically.

Type the following code:

``` sql
SELECT name, year
FROM movies
ORDER BY name;
```

**2.**

Your turn! Remove the previous query.

Write a new query that retrieves the `name`, `year`, and `imdb_rating`
columns of all the movies, ordered highest to lowest by their ratings.



``` sql
SELECT name, year, imdb_rating
FROM movies
ORDER BY imdb_rating DESC;
```

## Limit

We’ve been working with a fairly small table (fewer than 250 rows), but
most SQL tables contain hundreds of thousands of records. In those
situations, it becomes important to cap the number of rows in the
result.

For instance, imagine that we just want to see a few examples of
records.

``` sql
SELECT *
FROM movies
LIMIT 10;
```

<a
href="https://www.codecademy.com/resources/docs/sql/commands/limit?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">LIMIT</code></a> is a clause that
lets you specify the maximum number of rows the result set will have.
This saves space on our screen and makes our queries run faster.

Here, we specify that the result set can’t have more than 10 rows.

`LIMIT` always goes at the very end of the query. Also, it is not
supported in all SQL databases.



**1.**

Combining your knowledge of `LIMIT` and `ORDER BY`, write a query that
returns the top 3 highest rated movies.

Select all the columns.



``` sql
SELECT *
FROM movies
ORDER BY imdb_rating DESC
LIMIT 3;
```

## Case

A <a
href="https://www.codecademy.com/resources/docs/sql/commands/case?page_ref=catalog"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">CASE</code></a> statement allows us
to create different outputs (usually in the `SELECT` statement). It is
SQL’s way of handling <a
href="https://en.wikipedia.org/wiki/Conditional_(computer_programming)"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">if-then</a> logic.

Suppose we want to condense the ratings in `movies` to three levels:

- *If the rating is above 8, then it is Fantastic.*
- *If the rating is above 6, then it is Poorly Received.*
- *Else, Avoid at All Costs.*

``` sql
SELECT name,
 CASE
  WHEN imdb_rating > 8 THEN 'Fantastic'
  WHEN imdb_rating > 6 THEN 'Poorly Received'
  ELSE 'Avoid at All Costs'
 END
FROM movies;
```

- Each `WHEN` tests a condition and the following `THEN` gives us the
  string if the condition is true.
- The `ELSE` gives us the string if *all* the above conditions are
  false.
- The `CASE` statement must end with `END`.

In the result, you have to scroll right because the column name is very
long. To shorten it, we can rename the column to ‘Review’ using `AS`:

``` sql
SELECT name,
 CASE
  WHEN imdb_rating > 8 THEN 'Fantastic'
  WHEN imdb_rating > 6 THEN 'Poorly Received'
  ELSE 'Avoid at All Costs'
 END AS 'Review'
FROM movies;
```



**1.**

Let’s try one on your own.

Select the `name` column and use a `CASE` statement to create the second
column that is:

- ‘Chill’ if `genre = 'romance'`
- ‘Chill’ if `genre = 'comedy'`
- ‘Intense’ in all other cases

Optional: Rename the whole `CASE` statement to ‘Mood’ using `AS`.

Give it your best shot! Check hint for the answer.



``` sql
SELECT name,
 CASE
  WHEN genre = 'romance' THEN 'Chill'
  WHEN genre = 'comedy'  THEN 'Chill'
  ELSE 'Intense'
 END AS 'Mood'
FROM movies;
```

## Review

Congratulations!

We just learned how to query data from a database using SQL. We also
learned how to filter queries to make the information more specific and
useful.

Let’s summarize:

- <a
  href="https://www.codecademy.com/resources/docs/sql/commands/select?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">SELECT</code></a> is the clause
  we use every time we want to query information from a database.
- <a
  href="https://www.codecademy.com/resources/docs/sql/commands/as?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code class="code__2rdF32qjRVp7mMVBHuPwDS">AS</code></a>
  renames a column or table.
- <a
  href="https://www.codecademy.com/resources/docs/sql/commands/select-distinct?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">DISTINCT</code></a> return unique
  values.
- <a
  href="https://www.codecademy.com/resources/docs/sql/commands/where?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">WHERE</code></a> is a popular
  command that lets you filter the results of the query based on
  conditions that you specify.
- <a
  href="https://www.codecademy.com/resources/docs/sql/operators/like?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">LIKE</code></a> and <a
  href="https://www.codecademy.com/resources/docs/sql/operators/between?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">BETWEEN</code></a> are special
  operators.
- <a
  href="https://www.codecademy.com/resources/docs/sql/operators/and?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">AND</code></a> and <a
  href="https://www.codecademy.com/resources/docs/sql/operators/or?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code class="code__2rdF32qjRVp7mMVBHuPwDS">OR</code></a>
  combines multiple conditions.
- <a
  href="https://www.codecademy.com/resources/docs/sql/commands/order-by?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">ORDER BY</code></a> sorts the
  result.
- <a
  href="https://www.codecademy.com/resources/docs/sql/commands/limit?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">LIMIT</code></a> specifies the
  maximum number of rows that the query will return.
- <a
  href="https://www.codecademy.com/resources/docs/sql/commands/case?page_ref=catalog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank"><code
  class="code__2rdF32qjRVp7mMVBHuPwDS">CASE</code></a> creates different
  outputs.



Feel free to experiment a bit more with the `movies` table before moving
on!

# New York Restaurants

We have put together a table of restaurants called `nomnom` and we need
your help to answer some questions. Use the SQL commands you just
learned and find the best dinner spots in the city.

The schema of this table is available <a
href="https://content.codecademy.com/courses/sql-intensive/nomnom.png"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>.

Let’s begin!

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

## Instructions

Mark the tasks as complete by checking them off

### Write the following queries:

1\.

Start by getting a feel for the `nomnom` table:

``` sql
SELECT *
FROM nomnom;
```

What are the column names?

2\.

What are the distinct `neighborhood`s?

3\.

What are the distinct `cuisine` types?

4\.

Suppose we would like some `Chinese` takeout.

What are our options?

5\.

Return all the restaurants with `review`s of 4 and above.

6\.

Suppose Abbi and Ilana want to have a fancy dinner date.

Return all the restaurants that are `Italian` and `$$$`.

7\.

Your coworker Trey can’t remember the exact name of a restaurant he went
to but he knows it *contains* the word ‘meatball’ in it.

Can you find it for him using a query?

8\.

Let’s order delivery to the house!

Find all the close by spots in `Midtown`, `Downtown` or `Chinatown`.

(`OR` can be used more than once)

9\.

Find all the `health` grade pending restaurants (empty values).

10\.

Create a Top 10 Restaurants Ranking based on `review`s.

11\.

Use a `CASE` statement to change the rating system to:

- `review > 4.5` is Extraordinary
- `review > 4` is Excellent
- `review > 3` is Good
- `review > 2` is Fair
- Everything else is Poor

Don’t forget to rename the new column!

12\.

If you are stuck on the project or would like to see an experienced
developer work through the project, watch the project walkthrough video
in the “**Get Unstuck**“ section!

## Solution

``` sql
SELECT *
FROM nomnom;

SELECT DISTINCT neighborhood
FROM nomnom;

SELECT DISTINCT cuisine
FROM nomnom;

SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';

SELECT *
FROM nomnom
WHERE review >= 4;

SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
   AND price = '$$$';

SELECT *
FROM nomnom
WHERE cuisine = 'Italian'
   AND price LIKE '%$$$%';   


SELECT *
FROM nomnom
WHERE name LIKE '%meatball%';

SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown'
   OR neighborhood = 'Downtown'
   OR neighborhood = 'Chinatown'; 

SELECT *
FROM nomnom
WHERE health IS NULL;   

SELECT *
FROM nomnom
ORDER BY review DESC;

SELECT name,
 CASE
  WHEN review > 4.5 THEN 'Extraordinary'
  WHEN review > 4 THEN 'Excellent'
  WHEN review > 3 THEN 'Good'
  WHEN review > 2 THEN 'Fair'
  ELSE 'Poor'
 END AS 'Review'
FROM nomnom;
```

# What is SQLite?

Learn about the SQLite database engine and how to install it on your
computer.

In this article, we will be exploring the extremely prevalent database
engine called <a href="https://www.sqlite.org/index.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">SQLite</a>. We will describe what it
does, its main uses, and then explain how to set it up and use it on
your own computer.

### What is SQLite?

SQLite is a database engine. It is software that allows users to
interact with a relational database. In SQLite, a database is stored in
a single file — a trait that distinguishes it from other database
engines. This fact allows for a great deal of accessibility: copying a
database is no more complicated than copying the file that stores the
data, sharing a database can mean sending an email attachment.

#### Drawbacks to SQLite

SQLite’s signature portability unfortunately makes it a poor choice when
many different users are updating the table at the same time (to
maintain integrity of data, only one user can write to the file at a
time). It also may require some more work to ensure the security of
private data due to the same features that make SQLite accessible.
Furthermore, SQLite does not offer the same exact functionality as many
other database systems, limiting some advanced features other relational
database systems offer. Lastly, SQLite does not validate data types.
Where many other database software would reject data that does not
conform to a table’s schema, SQLite allows users to store data of any
type into any column.

SQLite creates schemas, which constrain the type of data in each column,
but it does not enforce them. The example below shows that the id column
expects to store integers, the name column expects to store text, and
the age column expects to store integers:

``` sql
CREATE TABLE celebs (
   id INTEGER, 
   name TEXT, 
   age INTEGER
);
```

However, SQLite will not reject values of the wrong type. We could
accidentally insert the wrong data types in the columns. Storing
different data types in the same column is a bad habit that can lead to
errors that are difficult to fix, so it’s important to be strict about
your schema even though SQLite will not enforce it.

#### Uses for SQLite

Even considering the drawbacks, the benefits of being able to access and
manipulate a database without involving a server application are huge.
SQLite is used worldwide for testing, development, and in any other
scenario where it makes sense for the database to be on the same disk as
the application code. SQLite’s maintainers consider it to be among the
<a href="https://www.sqlite.org/mostdeployed.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">most replicated pieces of software in the
world</a>.

------------------------------------------------------------------------

### Setting Up SQLite

Binaries for SQLite can be installed at the
<a href="https://www.sqlite.org/download.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">SQLite Download</a> page. This page has
versions of SQLite for Windows, Mac OS X, and Linux. The last number in
each file name is the current SQLite version. Our instructions use the
version number `3200100`. You should download whichever version is
listed on the SQLite Download page, and replace `3200100` in the
instructions below with the version number you downloaded. For example,
if the name of the file you download is
`sqlite-tools-win32-x86-3390200.zip`, you would change `3200100` in each
command below to `3390200`.

#### Windows

For Windows machines:

1.  Download the **sqlite-tools-win32-x86-3200100.zip** file and unzip
    it.
2.  From your
    <a href="https://www.codecademy.com/article/command-line-setup"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank">git-bash terminal</a>, open the directory of the
    unzipped folder with
    `cd ~/Downloads/sqlite-tools-win32-x86-3200100/sqlite-tools-win32-x86-3200100/`.
3.  Try running sqlite with the command `winpty ./sqlite3.exe`. If that
    command opens a `sqlite>` prompt, congratulations! You’ve installed
    SQLite.

We want to be able to access this command quickly from elsewhere, so
we’re going to create an alias to the command. Exit the `sqlite>` prompt
by typing in <span class="kbd">Ctrl</span> + <span class="kbd">C</span>,
and in the same git-bash terminal without changing folders, run these
commands:

`echo "alias sqlite3=\"winpty ${PWD}/sqlite3.exe\"" >> ~/.bashrc`

and

`source ~/.bashrc`

The first command will create the alias `sqlite3` that you can use to
open a database. The second command will refresh your terminal so that
you can start using this command. Try typing in the command
`sqlite3 newdb.sqlite`. If you’re presented with a `sqlite>` prompt,
you’ve successfully created the `sqlite3` command for your terminal.
Enter <span class="kbd">Ctrl</span> + <span class="kbd">C</span> to
quit. You can also exit by typing `.exit` in the prompt and pressing
<span class="kbd">Enter</span>.

**Video Tutorial:** <a href="https://youtu.be/dcfh5iQ_-3s"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Setting Up SQLite Locally (Windows)</a>

#### Mac OS X

For Macs, use the Mac OS X (x86) sqlite-tools package:

1.  Install it, and unzip it.
2.  In your terminal, navigate to the directory of the unzipped folder
    using `cd`.
3.  Run the command `mv sqlite3 /usr/local/bin/`. This will add the
    command `sqlite3` to your terminal path, allowing you to use the
    command from anywhere.
4.  Try typing `sqlite3 newdb.sqlite`. If you’re presented with a
    `sqlite>` prompt, you’ve installed SQLite! Enter
    <span class="kbd">control</span> + <span class="kbd">d</span> to
    quit. You can also exit by typing `.exit` in the prompt and pressing
    <span class="kbd">return</span>.

**Video Tutorial:** <a href="https://youtu.be/4MJSZi4qvIE"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Setting Up SQLite Locally (Mac)</a>

#### Linux

In Ubuntu or similar distributions:

1.  Open your terminal and run `sudo apt-get install sqlite3`.
    Otherwise, use your distribution’s package managers.
2.  Try typing in the command `sqlite3 newdb.sqlite`. If you’re
    presented with a `sqlite>` prompt, you’ve successfully created the
    `sqlite3` command for your terminal. You can exit by typing `.exit`
    in the prompt and pressing <span class="kbd">enter</span>.

### Conclusion

You’ve installed database software and opened a connection to a
database. Now you have the full power of SQL at your fingertips. You’ll
be able to manage all the data for any application you can dream of
writing. Congratulations! For more info on other Relational Database
Management Systems, check out
<a href="https://www.codecademy.com/article/what-is-rdbms-sql"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">this</a> article.

# Setting Up DB Browser

Learn about this tool that allows you to perform SQL tasks visually.

## What is DB Browser

DB Browser is a visual tool used to organize commands sent to SQLite.
With databases, it’s easy to lose track of commands that have been run.
DB Browser lets you see exactly the sequence of commands you are
executing before you run them. DB Browser will also allow you to see the
column structure for the tables within the database you’re working with,
so inserting data or other manipulation of data is more manageable and
doesn’t require performing queries every time you need to remember the
structure of your data.

## Installing DB Browser

DB Browser has packages available for each operating system on the right
panel of the <a href="http://sqlitebrowser.org/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">DB Browser website</a>. Follow along with
this video for installation instructions:

[Setting Up DB Browser](https://www.youtube.com/watch?v=1Vaqh24HLKU)

After following the installation process, open up the software and you
will presented with an interface for opening or creating a new database.

## Using DB Browser to Create a New Table

Steps: Creating a new database with DB Browser will open a `File` dialog
box, where you can set where the SQLite database will live in your file
structure. After creating a db, you will be presented with an interface
for creating a table. Add a name for the table at the top, and then add
and remove fields in the `Fields` window. Each field has a free-text
name, a dropdown for its type, and four checkboxes for not-null, primary
key, autoincrement, and unique attributes, as well as other parameters.
You will see the SQL query that DB Browser executes to create this table
update as you add information to this table. Update these and press
“OK”. You will see the Database Structure tab of DB Browser refresh with
the updated information. Note that no changes have been made to any
database file yet, and queries are only executed by DB Browser when the
“Write Changes” button is pressed. Press the “Write Changes” button and
create your table.

## Adding Data to a SQLite Table Using DB Browser

Steps: Switch from the Database Structure tab to the Browse Data tab.
You can add a row to the table with the New Record button. Click it, and
update the columns in the viewport as you would a spreadsheet. Remember
that no data will be inserted into the SQLite database until the “Write
Changes” button is pressed. Press that button and you will have
successfully added a row to your table.

## Conclusion

You’ve installed DB Browser and used it to perform SQL tasks visually.
You can now use DB Browser to visualize what SQL commands will
accomplish without worrying about affecting the state of your database.
Verify these commands do what you want, and press “Write Changes” to
commit to them. Congratulations! You’re ready to manage a database.

# Introduction to Flask-SQLAlchemy

## Why have databases in your web applications?

Web applications are often built around a lot of data that change
frequently. The data is usually organized in entities related in some
way. For example, entities such as users are related to products by the
act of purchasing, music albums are related to a specific artist by
authoring, users are related to other users by befriending, etc.

*Relational databases* offer robust and efficient data management. A
usual relational database consists of tables that represent entities
and/or relationships amongst entities. The attributes of entities are
constrained (for example, NAME attribute is a string, and a user’s
PASSWORD should not be empty). The way a database is organized in
entities, attributes and relationships, without data being present, is
called the database schema.

**Database schema design: A simple book club scenario**

You want to create a personal book club application. Each month you pick
a book your friends can review and rate. Your web app manages registered
readers, the list of books you choose each month, and the ratings the
readers write for those books. Moreover, you can show the annotations
your friends made while reading the suggested books.

The schema for this problem is shown on the right. Inspect the schema by
following the instructions below.



**Entities** in our database are Reader, Book, Review and Annotation.
Those represent tables in the schema.

**Attributes** are properties of an entity and are represented as
columns in a database table. For example, Reader’s attributes are NAME,
SURNAME and EMAIL, and Review’s attributes are TEXT and STARS
(representing ratings from 1 to 5).

**Relationships** are represented as arrows between tables. Readers are
in a relationship with books by reviewing them and by making
annotations. A reader can review and annotate multiple books. A book can
have multiple reviews and annotations. Each review or annotation is
associated with one book and one reader. We say that Reader is in a
one-to-many relationship with Review, and Annotation. Similarly, Book is
in a one-to-many relationship with Review and Annotation.

Columns with the yellow key represent the primary key columns that
uniquely identify entries in the table.

Columns with the silver key symbols represent the foreign key columns
that represent references to the primary keys of other tables.

Note: often when modeling application databases, nouns represent
entities (readers and books) and verbs represent relationships (to
review).



<img src="https://content.codecademy.com/programs/flask/databases/books-schema.jpg" alt="books schema" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Flask application with Flask-SQLAlchemy

*Flask-SQLAlchemy* is an extension for Flask that supports the use of a
Python SQL Toolkit called SQLAlchemy.

To start creating a minimal application, in addition to importing Flask,
we also need to import `SQLAlchemy` class from the `flask_sqlalchemy`
module:

``` python
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
```

The next step is to create our Flask app instance:

``` python
app = Flask(__name__)
```

To enable communication with a database, the Flask-SQLAlchemy extension
takes the location of the application’s database from the
`SQLALCHEMY_DATABASE_URI` configuration variable we set in the following
way:

``` python
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///myDB.db' 
```

Next, we set the `SQLALCHEMY_TRACK_MODIFICATIONS` configuration option
to `False` to disable a feature of Flask-SQLAlchemy that signals the
application every time a change is about to be made in the database.

``` python
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
```

Finally, we create an SQLAlchemy object and bind it to our app:

``` python
db = SQLAlchemy(app)
```



``` python
from flask import Flask
from flask_sqlalchemy import SQLAlchemy

#database configuration
app = Flask(__name__) #application instance
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///myDB.db' #path to database and its name
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False #to supress warning
db = SQLAlchemy(app) #database instance


#some routing for displaying the home page
@app.route('/')
@app.route('/home')
def home():
    return "Congrats! You have just created your first Flask application supporting databases!"
```

## Declaring a simple model: Book

The database object `db` created in our application contains all the
functions and helpers from both SQLAlchemy and SQLAlchemy Object
Relational Mapper (ORM). SQLAlchemy ORM associates user-defined Python
classes with database tables, and instances of those classes (objects)
with rows in their corresponding tables. The classes that mirror the
database tables are referred to as *models*.

We would like to create a Flask-SQLAlchemy ORM representation of the
following table schema: <img
src="https://content.codecademy.com/programs/flask/databases/book.jpg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="title" />

The key symbol represents the primary key column that denotes a column
or a property that uniquely identifies entries in the table. For
example, student number, social security number, SKU (stock keeping
unit), ISBN (International Standard Book Number), and similar, often
serve as primary keys.

`Model` represents a declarative base in SQLAlchemy which can be used to
declare models. For `Book` to be a database model for the database
instance `db`, it has to inherit from `db.Model` in the following way:

``` python
class Book(db.Model):
```

As you can see in the code editor, the `Book` model has 5 attributes of
`Column` class. The types of the column are the first argument to
`Column`. We use the following column types:

- `String(N)`, where N is the maximum number of characters
- `Integer`, representing a whole number

`Column` can take some other parameters:

- `unique`: when `True`, the values in the column must be unique
- `index`: when`True`, the column is searchable by its values
- `primary_key`: when `True`, the column serves as the primary key



**1.**

Add another column to the `Book` model called `author_name` of type
`String` of maximum length 50. The column is indexable, and not unique.
Run this program and check if there is a database file
\*\*\*\*myDB.db\*\*\*\* in your application folder.



``` python
from flask import Flask
from flask_sqlalchemy import SQLAlchemy


app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///myDB.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False #to supress warning
db = SQLAlchemy(app)

#declaring the Book model
class Book(db.Model):
    id = db.Column(db.Integer, primary_key = True) #primary key column, automatically generated IDs
    title = db.Column(db.String(80), index = True, unique = True) # book title
    author_name = db.Column(db.String(50), index = True, unique = False) #author name added
    author_surname = db.Column(db.String(80), index = True, unique = False) #author surname
    month = db.Column(db.String(20), index = True, unique = False) #the month of book suggestion
    year = db.Column(db.Integer, index = True, unique = False) #tthe year of boook suggestion
    
    #Get a nice printout for Book objects
    def __repr__(self):
        return "{} in: {},{}".format(self.title, self.month,self.year)


@app.route('/')
@app.route('/home')
def home():
    return "Congrats! You have just made your first Flask-SQLAlchemy model declaration!"
```

## Declaring a simple model: Reader

Adding another model or table schema to your application is simple. You
only need to create another class that inherits from `Model`.

The model you will create next, `Reader`, is simple and similar to
`Book`. Let us try it together. You can do this!

To make it easier for you, here’s the schema representation of `Reader`:
<img
src="https://content.codecademy.com/programs/flask/databases/reader.jpg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="title" />

We have already provided the `Reader` class declaration and the
representation method.



**1.**

Add to the model a column called `name` that is of type `String` with at
most 50 characters. It is indexable and not unique.

**2.**

Add to the model a column called `surname` that is of type `String` with
at most 80 characters. It is indexable and not unique.

**3.**

Add to the model a column called `email` that is of type `String` with
at most 120 characters. It is indexable and unique.



``` python
from flask import Flask
from flask_sqlalchemy import SQLAlchemy


app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///myDB.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False #to supress warning
db = SQLAlchemy(app)

#declaring the Book model
class Book(db.Model):
    id = db.Column(db.Integer, primary_key = True) #primary key column
    title = db.Column(db.String(80), index = True, unique = True) # book title
    author_name = db.Column(db.String(50), index = True, unique = False) #author name
    author_surname = db.Column(db.String(80), index = True, unique = False) #author surname
    month = db.Column(db.String(20), index = True, unique = False) #the month of the book suggestion
    year = db.Column(db.Integer, index = True, unique = False) #tthe year of the book suggestion
    
    #Get a nice printout for Book objects
    def __repr__(self):
        return "{} in: {},{}".format(self.title, self.month,self.year)

#Add your columns for the Reader model here below.
class Reader(db.Model):
  id = db.Column(db.Integer, primary_key = True)
  name = db.Column(db.String(50), index = True, unique = False)
  surname = db.Column(db.String(80), unique = False, index = True)
  email = db.Column(db.String(120), unique = True, index = True)
  
  #get a nice printout for Reader objects
  def __repr__(self):
      return "Reader: {}".format(self.email)




#some routing for displaying the home page
@app.route('/')
@app.route('/home')
def home():
    return "Congrats! You have just made a Flask-SQLAlchemy model declaration all by yourself!"
```

## Part I: declaring relationships (one-to-many)

Often times in real-world applications we will have entities that are
somehow related. Students take courses, customers buy products, and
users comment on posts. In SQLAlchemy we can declare a *relationship*
with a field initialized with the `.relationship()` method. In
one-to-many relationships, the `relationship` field is used on the ‘one’
side of the relationship. In our use case we have the following
one-to-many relationships:

1.  One book ———\< many reviews for that book
2.  One reader ——–\< many reviews from that reader

Hence, we add `relationship` fields to the `Book` and `Reader` models.
In this exercise, we will show you how to add a relationship to the
`Book` model, and you will do the same for the `Reader` model.

We declare a one-to-many relationship between `Book` and `Review` by
creating the following field in the `Book` model:

``` python
reviews = db.relationship('Review', backref='book', lazy='dynamic')
```

where

- the first argument denotes which model is to be on the ‘many’ side of
  the relationship: `Review`.
- `backref = 'book'` establishes a `book` attribute in the related class
  (in our case, class `Review`) which will serve to refer back to the
  related `Book` object.
- `lazy = dynamic` makes related objects load as SQLAlchemy’s query
  objects.

By adding `relationship` to `Book` we only handled one side in our
one-to-many relationship. Specifically, we only covered the direction
denoted by the red arrow in the schema below:

<img
src="https://content.codecademy.com/programs/flask/databases/book-review.jpg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="schema" />

In the next exercise, we will add the `Review` model and its
relationship with the `Book` model (the blue arrow).



**1.**

To the `Reader` model add a relationship field called `reviews`. It
should link to `Review` with back reference called `reviewer`, and
should use the dynamic loading process.



``` python
from flask import Flask
from flask_sqlalchemy import SQLAlchemy


app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///myDB.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False #to supress warning
db = SQLAlchemy(app)

#declaring the Book model
class Book(db.Model):
    id = db.Column(db.Integer, primary_key = True) #primary key column
    title = db.Column(db.String(80), index = True, unique = True) # book title
    author_name = db.Column(db.String(50), index = True, unique = False)
    author_surname = db.Column(db.String(80), index = True, unique = False) #author surname
    month = db.Column(db.String(20), index = True, unique = False) #the month of the book suggestion
    year = db.Column(db.Integer, index = True, unique = False) #the year of the book suggestion
    reviews = db.relationship('Review', backref = 'book', lazy = 'dynamic') #relationship of Books and Reviews
    
    #Get a nice printout for Book objects
    def __repr__(self):
        return "{} in: {},{}".format(self.title, self.month,self.year)

#Add your columns for the Reader model here below.
class Reader(db.Model):
    id = db.Column(db.Integer, primary_key = True)
    name = db.Column(db.String(50), index = True, unique = False)
    surname = db.Column(db.String(80), unique = False, index = True)
    email = db.Column(db.String(120), unique = True, index = True)
    reviews = db.relationship('Review', backref = 'reviewer', lazy = 'dynamic')
  
    #get a nice printout for Reader objects
    def __repr__(self):
        return "Reader: {}".format(self.email)




#some routing for displaying the home page
@app.route('/')
@app.route('/home')
def home():
    return "Congrats! You are making your first one-to-many relationship in Flask-SQLAlchemy!"
```

## Part II: declaring relationships (Foreign keys)

In the previous lesson, we began adding a one-to-many relationship to
the `Book` and `Reader` models by using `.relationship()`. But that does
not completely specify our one-to-many relationship. We additionally
have to specify what the *foreign keys* are for the model on the ‘many’
side of the relationship. To remind you, a foreign key is a field (or
collection of fields) in one table that refers to the primary key in
another table.

In this exercise we want to create the following database schema: <img
src="https://content.codecademy.com/programs/flask/databases/reader-book-review.jpg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="title" />

To complete the schema, we need to add the `Review` model, and specify
the foreign keys (blue arrows) representing the following relationship:

- One review ——– one book for which the review was written
- One review ——– one reader who wrote that review

The red arrows were covered in the previous exercise with the
`db.relationship()` columns.

Similar to the previous models we declared, the `Review` model has its
own columns such as `text`, `stars` (denoting ratings), and its own
primary key field `id`. `Review` additionally needs to specify which
other models it is related to by specifying their primary key in its
foreign key column:

``` python
book_id = db.Column(db.Integer, db.ForeignKey('book.id'))
```

The `book_id` field is a foreign key that refers to the primary key `id`
of the `Book` table. Similar to the primary key, a foreign key is just
another column in our model with unique entries.



**1.**

Add a new field to `Review` called `reviewer_id` that serves as a
foreign key to the `Reader` class.



``` python
from flask import Flask
from flask_sqlalchemy import SQLAlchemy


app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///myDB.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False #to supress warning
db = SQLAlchemy(app)

#declaring the Book model
class Book(db.Model):
    id = db.Column(db.Integer, primary_key = True) #primary key column
    title = db.Column(db.String(80), index = True, unique = True) # book title
    author_name = db.Column(db.String(50), index = True, unique = False)
    author_surname = db.Column(db.String(80), index = True, unique = False) #author surname
    month = db.Column(db.String(20), index = True, unique = False) #the month of the book suggestion
    year = db.Column(db.Integer, index = True, unique = False) #the year of the book suggestion
    reviews = db.relationship('Review', backref = 'book', lazy = 'dynamic') #relationship of Books and Reviews
    
    #Get a nice printout for Book objects
    def __repr__(self):
        return "{} in: {},{}".format(self.title, self.month, self.year)

#Add your columns for the Reader model here below.
class Reader(db.Model):
    id = db.Column(db.Integer, primary_key = True)
    name = db.Column(db.String(50), index = True, unique = False)
    surname = db.Column(db.String(80), unique = False, index = True)
    email = db.Column(db.String(120), unique = True, index = True)
    reviews = db.relationship('Review', backref='reviewer', lazy = 'dynamic')
  
    #get a nice printout for Reader objects
    def __repr__(self):
        return "Reader: {}".format(self.email)

#declaring the Review model
class Review(db.Model):
    id = db.Column(db.Integer, primary_key = True) #primary key column, automatically generated IDs
    stars = db.Column(db.Integer, unique = False) #a review's rating
    text = db.Column(db.String(200), unique = False) #a review's text
    #here below is the foreign key column linking to the primary key (id) of the Book model (book). 
    #Note the lower case here: 'book.id' instead of 'Book.id'
    book_id = db.Column(db.Integer, db.ForeignKey('book.id')) #foreign key column
    #your code here
    reviewer_id = db.Column(db.Integer, db.ForeignKey('reader.id'))
    #get a nice printout for Review objects
    def __repr__(self):
        return "Review: {} stars: {}".format(self.text, self.stars)


#some routing for displaying the home page
@app.route('/')
@app.route('/home')
def home():
    return "Congrats! You have just made a foreign key column in your Flask-SQLAlchemy model!"
```

## Putting it all together: initializing the database

When you ran your application in the previous exercises you might have
realized that there is no database file created in the application
folder. The reason is simple: we need to explicitly initialize the
database according to the models declared.

We can initialize our database in two ways:

1.  Using the interactive Python shell.

- In the command-line terminal, navigate to the application folder and
  enter Python’s interactive mode:

  ``` python
  $ python3
  ```

- Import the database instance `db` from \*\*\*\*app.py\*\*\*\*:

  ``` python
  >>> from app import db
  ```

  (this assumes the application file is called \*\*\*\*app.py\*\*\*\*)

- Create all database tables according to the declared models:

  ``` python
  >>> db.create_all()
  ```

1.  From within the application file. After all the models have been
    specified the database is initialized by adding `db.create_all()` to
    the main program. The command is written after all the defined
    models.

The result of `db.create_all()` is that the database schema is created
representing our declared models. After running the command, you should
see your database file in the path and with the name you set in the
`SQLALCHEMY_DATABASE_URI` configuration field.



**1.**

In the Terminal window, enter Python’s interactive mode by typing
`python3`.

**2.**

While in Python’s interactive mode, import the database instance `db`
from the \*\*\*\*app.py\*\*\*\* file.

**3.**

After the database `db` instance is imported, type and run
`db.create_all()`. Check the file system (a folder icon on the top left
corner of the code editor) and verify that a new file called
\*\*\*\*myDB.db\*\*\*\* is created.



``` python
from flask import Flask
from flask_sqlalchemy import SQLAlchemy


app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///myDB.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False #to supress warning
db = SQLAlchemy(app)

#declaring the Book model
class Book(db.Model):
    id = db.Column(db.Integer, primary_key = True) #primary key column
    title = db.Column(db.String(80), index = True, unique = True) 
    author_name = db.Column(db.String(50), index = True, unique = False)
    author_surname = db.Column(db.String(80), index = True, unique = False) 
    month = db.Column(db.String(20), index = True, unique = False) 
    year = db.Column(db.Integer, index = True, unique = False) 
    reviews = db.relationship('Review', backref = 'book', lazy = 'dynamic') 
    
    #Get a nice printout for Book objects
    def __repr__(self):
        return "{} in: {},{}".format(self.title, self.month, self.year)

#Declaring the Reader model
class Reader(db.Model):
    id = db.Column(db.Integer, primary_key = True)
    name = db.Column(db.String(50), index = True, unique = False)
    surname = db.Column(db.String(80), unique = False, index = True)
    email = db.Column(db.String(120), unique = True, index = True)
    reviews = db.relationship('Review', backref='reviewer', lazy = 'dynamic')
  
    #get a nice printout for Reader objects
    def __repr__(self):
        return "Reader: {}".format(self.email)

#declaring the Review model
class Review(db.Model):
    id = db.Column(db.Integer, primary_key = True) #primary key column, 
    stars = db.Column(db.Integer, unique = False) #a review's rating
    text = db.Column(db.String(200), unique = False) #a review's text
    book_id = db.Column(db.Integer, db.ForeignKey('book.id')) #foreign key 
    reviewer_id = db.Column(db.Integer, db.ForeignKey('reader.id'))

    #get a nice printout for Review objects
    def __repr__(self):
        return "Review: {} stars: {}".format(self.text, self.stars)


#some routing for displaying the home page
@app.route('/')
@app.route('/home')
def home():
    return "Congrats! You have just initialized your database!"
```

## Creating database entries: entities

Now that we initialized our database schema, the next step is to start
creating entries that will later populate the database. The beauty of
SQLAlchemy Object Relational Mapper (ORM) is that our database entries
are simply created as instances of Python classes representing the
declared models.

We will create our objects in a separate file called
\*\*\*\*create_objects.py\*\*\*\*. To create objects representing model
entries, we first need to import the models from the
\*\*\*\*app.py\*\*\*\* file:

``` python
from app import Reader, Book, Review
```

We can create an object of class `Book` in the following way:

``` python
b1 = Book(id = 123, title = 'Demian', author_name = 'Hermann', author_surname = 'Hesse', month = "February", year = 2020)
```

An example object of class `Reader` could be:

``` python
r1 = Reader(id = 342, name = 'Ann', surname = 'Adams', email = 'ann.adams@example.com')
```

Thanks to the ORM, creating database entries is the same as creating
Python objects.

We interact with database entries in the way we interact with Python
objects. In case we want to access a specific attribute or column, we do
it in the same way we would access attributes of Python objects: by
using `.` (dot) notation:

``` python
print("My first reader:", r1.name) # prints My first reader: Ann
```



**1.**

In file `create_objects.py`, create an instance of `Book` called `b2`
with `id` 533, titled ‘The Stranger’ written by Albert Camus suggested
for month April in year 2019.

**2.**

In file `create_objects.py`, create an instance of `Reader` called
variable `r2` representing a reader with id number 765, called Sam Adams
with e-mail <a href="mailto:sam.adams@example.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">sam.adams@example.com</a>.

**3.**

Print the author surname for book instance `b2`.

**4.**

Print the length of the e-mail for Reader `r2`.



``` python
#This is a separate Python script in which we practice creating database objects
#You can also perform these operations in command-line terminal
from app import Reader, Book, Review

b1 = Book(id = 123, title = 'Demian', author_name = "Hermann", author_surname = 'Hesse', month = "February", year = 2020)
r1 = Reader(id = 342, name = 'Ann', surname = 'Adams', email = 'ann.adams@example.com')

print("My first reader:", r1.name)

#your code here below
#Checkpoint 1: 
b2 = Book(id = 533, title = "The Stranger", author_name = "Albert", author_surname = "Camus", month = "April", year = 2019)
#Checkpoint 2: 
r2 = Reader(id = 765, email = "sam.adams@example.com", surname = "Adams", name = "Sam")
#Checkpoint 3: 
print(b2.author_surname)
#Checkpoint 4:
print(len(r2.email))
```

## Creating database entries: relationships

Creating objects for tables that have foreign keys is not much different
from the usual creation of Python objects.

Consider that we have the following objects already created:

``` python
b1 = Book(id = 123, title = 'Demian', author_name = 'Hermann', author_surname = 'Hesse')
b2 = Book(id = 533, title = 'The stranger', author_name = 'Albert', author_surname = 'Camus')
r1 = Reader(id = 342, name = 'Ann', surname = 'Adams', email = 'ann.adams@example.com')
r2 = Reader(id = 312, name = 'Sam', surname = 'Adams', email = 'sam.adams@example.com')
```

To create an entry in the `Review` table, in addition to specifying a
review text and a rating, we also need to specify which reader wrote the
review, and for which book. In other words, we need to specify values
for the review’s foreign keys `reviewer_id` and `book_id` that represent
primary keys in `Reader` and `Book`, respectively.

``` python
rev1 = Review(id = 435, text = 'This book is amazing...', stars = 5, reviewer_id = r1.id, book_id = b1.id)
```

In the example above we see that the review is written by `Reader`
instance `r1` for `Book` instance `b1`. We again used Python’s dot
notation to access the `id` attribute of `r1` and `b1` objects.

Note: in the future, when creating database entries you don’t need to
specify the primary key value explicitly, if you don’t have a preference
for the values. When adding entries to a database, a primary key value
will be automatically generated, unless specified. In the next lesson,
we will see how to add entries to our database.



**1.**

Create a new review instance called `rev2` representing a review with
`id` 450 given by the reader Sam Adams (object assigned to variable `r2`
for the book ‘The Stranger’ by Albert Camus (object assigned to variable
`b2`). The review gives 2 stars and says ‘This book is difficult!’.

**2.**

Print the number of words in the review object assigned to variable
`rev2`.



``` python
#This is a separate Python script in which we practice creating database objects
#You can also perform these operations in command-line terminal
from app import Reader, Book, Review

b1 = Book(id = 123, title = 'Demian', author_name = 'Hermann', author_surname = 'Hesse')
b2 = Book(id = 533, title = 'The stranger', author_name = 'Albert', author_surname = 'Camus')
r1 = Reader(id = 342, name = 'Ann', surname = 'Adams', email = 'ann.adams@example.com')
r2 = Reader(id = 312, name = 'Sam', surname = 'Adams', email = 'sam.adams@example.com')

rev1 = Review(id = 435, text = 'This book is amazing...', stars = 5, reviewer_id = r1.id, book_id = b1.id)
print(rev1) #prints the rev1 object
print(rev1.text) #prints the text of the review rev1
print(rev1.book_id) #prints the id of the book for which the review was written

#Checkpoint 1: 
rev2 = Review(id = 450, text = "This book is difficult!", stars = 2, reviewer_id = r2.id, book_id = b2.id)

#Checkpoint 2:
print(len(rev2.text.split()))
```

## Review

Congratulations on writing your first Flask app with database support!

In this lesson, you have learned how to:

- import Flask-SQLAlchemy and configure your app to support database
  connections.
- create your first model representing a table schema using
  Flask-SQLAlchemy ORM by declaring classes that extend `Model`
- specify attributes of database entities by using `Column` fields
- set the primary key `Column`
- create a one-to-many relationship by using `relationship()`
- specify foreign key columns
- initialize the database according to the declared models by using
  `create_all()`
- create database entries as instances of the declared Flask-SQLAlchemy
  classes

We added the `Annotation` model to the `app.py` file in order to
complete our database schema shown in the first exercise of this lesson.
Moreover, we demonstrate for you in the browser how to combine the
templates and database queries to list all the books we already put in
the database for you. In the next lesson, you will learn how to
accomplish this yourself! Excited? Let’s go.



``` python
from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///myDB.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False #to supress warning
db = SQLAlchemy(app)

#declaring the Book model
class Book(db.Model):
    id = db.Column(db.Integer, primary_key = True) #primary key column
    title = db.Column(db.String(80), index = True, unique = True) # book title
    author_name = db.Column(db.String(50), index = True, unique = False)
    author_surname = db.Column(db.String(80), index = True, unique = False) #author surname
    month = db.Column(db.String(20), index = True, unique = False) #the month of the book suggestion
    year = db.Column(db.Integer, index = True, unique = False) #the year of the book suggestion
    reviews = db.relationship('Review', backref = 'book', lazy = 'dynamic', cascade = "all, delete, delete-orphan") #relationship of Books and Reviews
    annotations = db.relationship('Annotation', backref='book', lazy='dynamic', cascade = "all, delete, delete-orphan")
    #Get a nice printout for Book objects
    def __repr__(self):
        return "{} in: {},{}".format(self.id, self.month, self.year)

#Add your columns for the Reader model here below.
class Reader(db.Model):
    id = db.Column(db.Integer, primary_key = True)
    name = db.Column(db.String(50), index = True, unique = False)
    surname = db.Column(db.String(80), unique = False, index = True)
    email = db.Column(db.String(120), unique = True, index = True)
    reviews = db.relationship('Review', backref='reviewer', lazy = 'dynamic', cascade = "all, delete, delete-orphan")
    annotations = db.relationship('Annotation', backref='author', lazy='dynamic', cascade = "all, delete, delete-orphan") 
    #get a nice printout for Reader objects
    def __repr__(self):
        return "Reader ID: {}, email: {}".format(self.id, self.email)

#declaring the Review model
class Review(db.Model):
    id = db.Column(db.Integer, primary_key = True) #primary key column, automatically generated IDs
    stars = db.Column(db.Integer, unique = False) #a review's rating
    text = db.Column(db.String(200), unique = False) #a review's text
    book_id = db.Column(db.Integer, db.ForeignKey('book.id')) #foreign key column
    reviewer_id = db.Column(db.Integer, db.ForeignKey('reader.id'))
    #get a nice printout for Review objects
    def __repr__(self):
        return "Review ID: {}, {} stars {}".format(self.id, self.stars, self.book_id)

#declaring the Annotation model
class Annotation(db.Model):
    id = db.Column(db.Integer, primary_key = True)
    text = db.Column(db.String(200), unique = False)
    reviewer_id = db.Column(db.Integer, db.ForeignKey('reader.id'))
    book_id = db.Column(db.Integer, db.ForeignKey('book.id'))
    #get a nice printout for Annotation objects
    def __repr__(self):
        return '<Annotation {}-{}:{} >'.format(self.reviewer_id, self.book_id, self.text)

import routes
```

``` python
from app import app
from app import db, Reader, Book, Review, Annotation
from flask import render_template, request, url_for, redirect

@app.route('/home')
@app.route('/')
def home():
  books = Book.query.all()
  return render_template('home.html', books = books)

@app.route('/profile/<int:user_id>')
def profile(user_id):
   reader = Reader.query.filter_by(id = user_id).first_or_404(description = "There is no user with this ID.")
   return render_template('profile.html', reader = reader)

@app.route('/books/<year>')
def books(year):
   books = Book.query.filter_by(year = year)
   return render_template('display_books.html', year = year, books = books)

@app.route('/reviews/<int:review_id>')
def reviews(review_id):
   #your code here
   return render_template('_review.html', review = review)
```

# Databases in Flask - Reading, Updating and Deleting

## Interacting with a Database

Your database has a number of readers who subscribed to your book club
and some books you already assigned to be read. Also some of your
readers wrote reviews about the books and some of them might have some
annotations made while reading their books on an eReader. The schema
representing the database is in the image on the right.

What can you do with the database?

Say you want to list all the books you suggested or list all the
subscribed readers. Or let each subscriber see only the reviews they
wrote. When new people subscribe to your web service, you need to add
them to your database, or when they unsubscribe delete them. If you made
a mistake in changing your database, you probably want to undo the
changes or ‘rollback’ to the previous correct state. When your
subscribers change their e-mail, you need to update your database. Or
you need to filter out the books your club read in the year 2019 and
only calculate average ratings of those. These are all the most common
interactions with a database, and in this lesson, you will learn how to
perform them in Flask-SQLAlchemy.

Throughout this exercise we will provide you with a database containing
some entries for you to query, but you will learn how to add more
entries, and remove some, on the way.

Can’t wait? Let’s go.



<img src="https://content.codecademy.com/programs/flask/databases/books-schema.jpg" alt="schema" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Queries: query.all() and query.get()

Querying a database table with Flask SQLAlchemy is done through the
`query` property of the `Model` class. To get all entries from a model
called `TableName` we run `TableName.query.all()`. Often you know the
primary key (unique identifier) value of entries you want to fetch. To
get an entry with some primary key value `ID` from model `TableName` you
run: `TableName.query.get(ID)`.

For example, to get all the entries from the `Reader` table we do the
following:

``` python
readers = Reader.query.all()
```

Similarly, to get a reader with `id = 123` we do the following:

``` python
reader = Reader.query.get(123)
```

We assign the result of the `.get()` method to a variable because
through that variable we can access the entry’s attributes. For example:

``` python
reader = Reader.query.get(450)
print(reader.name)
```

Now you see the amazing convenience of using ORM: database tables are
simply treated as Python classes and database entries are Python
objects. For example, you can easily use a `for` loop to loop through
all the readers and print their name:

``` python
readers = Reader.query.all()
for reader in readers: 
    print(reader.name)
```

In the image on the right, you can see some entries we already inserted
for you in the database, so you can query it.



**1.**

In the **playground.py** file, write code that assigns all entries from
the `Review` table to a variable called `reviews`.

**2.**

In the **playground.py** file, write a `for` loop that will, for each
`review` in `reviews`, print its `text` attribute.

**3.**

In the **playground.py** file, use the `get()` function to get a book
with `id=12` from the `Book` table, and assign the result to a variable
called `book_1`.



``` python
from app import db, Book, Reader, Review, Annotation

#query all the readers from the Reader model
readers = Reader.query.all()
print(readers)

#get an entry with id = 123 
reader = Reader.query.get(123)
print(reader)

#reader with id = 450
reader = Reader.query.get(450)
print("Reader with id = ", reader.id, "is called", reader.name)

#Loop through all the readers and print their e-mails
print("\nPrint all the readers in a loop:")
for reader in readers:
  print(reader.email)

#or inline
#[print(reader.email) for reader in readers]

print("\nCheckpoint1: fetching all the reviews")
reviews = Review.query.all()

print("\nCheckpoint2: looping through all the reviews and printing their text")
for review in reviews:
   print(review.text)

print("\nCheckpoint3: fetching a book with id = 13 using the get() function")
book_1 = Book.query.get(12)
```

# Queries: retrieve related objects

The models we declared contain relationships. Readers write multiple
reviews and have multiple annotations. Similarly, books have multiple
reviews and multiple annotations. In this exercise we will see how we
can fetch all the reviews made by a reader, and to fetch the author of a
review.

###### Fetching many objects

We fetch related objects of some object by accessing its attribute
defined with `.relationship()`. For example, to fetch all reviews of a
reader with `id = 123` we do the following:

``` python
reader = Reader.query.get(123)
reviews_123 = reader.reviews.all()
```

Note that `reviews` attribute was defined as a column in the model for
`Reader` using the `.relationship()` method (see \*\*\*\*app.py\*\*\*\*
to remind yourself).

###### Fetching one object

For `Review` object we can fetch its authoring `Reader` through the
`backref` field specified in `Reader`’s `.relationship()` attribute. For
example, to fetch the author of review `id = 111` we do the following:

``` python
review = Review.query.get(111)
reviewer_111 = review.reviewer 
```

You can modify the examples above so not to have temporary variables
(`reader` and `review_1`) by chaining the operations:

``` python
reviews_123 = Reader.query.get(123).reviews.all()
```

and

``` python
reviewer_111 = Review.query.get(111).reviewer
```

Notice the subtle difference between the examples above. The first needs
`.all()` because one reader can have many reviews. In the second
example, we do not use `.all()` since each review is associated with
only one reader. That is our one-to-many relationship.



**1.**

Fetch all the reviews made for a book with `id = 13` and assign them to
the `book_13` variable.

**2.**

Fetch all the annotations for the book with `id = 19` and assign it to
the variable called `book_19_an`.

**3.**

Fetch the reader who owns the annotation with `id = 331` and assign the
annotation to the variable called `author_331`.



``` python
from app import db, Book, Reader, Review, Annotation

#Fetching 'many' objects
reader = Reader.query.get(123) #fetch a reader with id = 123
reviews_123 = reader.reviews.all() #fetch all reviews made by reader wiith id = 123
[print(review.id) for review in reviews_123]
#check the image on the right - Ann Adams (id = 123, wrote reviews with ids 111 and 113)

#fetching 'one' object
review = Review.query.get(111) #fetch a review with id = 111
reviewer_111 = review.reviewer #get the reviewer for review with id = 111. There's only one!
print("The author of [", review, "] is", reviewer_111)

#By chaining we avoid using temporary variables
reviews_123 = Reader.query.get(123).reviews.all() #same result as line 5
reviewer_111 = Review.query.get(111).reviewer #same result as line 10

print("\nCheckpoint 1: fetch all the reviews made for a book with id = 13.")
book_13 = Book.query.get(13).reviews.all()
[print(book.id) for book in book_13]

print("\nCheckpoint 2: fetch all the annotations made for a book with id = 19.")
book_19_an = Book.query.get(19).annotations.all()
[print(annotation.id) for annotation in book_19_an]

print("\nCheckpoint 3: fetch the reader who owns the annotation with `id = 331.`")
author_331 = Annotation.query.get(331).author
print(author_331)
```

# Queries: filtering

Often times you don’t want to retrieve all the entries from a table but
select only those that satisfy some criterion. Criteria are usually
based on the values of the table’s columns. To filter a query,
SQLAlchemy provides the `.filter()` method.

For example, to select books from a specific year from the `Book` table
we use the following command:

``` python
Book.query.filter(Book.year == 2020).all()
```

Notice the additional `.all()` method. `.filter()` returns a `Query`
object that needs to be further refined. This can be done by using
several additional methods like `.all()` that returns a list of all
results, `.count()` that counts the number of fetched entries, or
`.first()` that returns only one result, namely the first one.

``` python
Book.query.filter(Book.year == 2020).first()
```

Multiple criteria may be specified as comma separated and the
interpretation of a comma is a Boolean `and`:

``` python
Review.query.filter(Review.stars <= 3, Review.book_id == 1).all()
```

This query will return all entries in the `Review` table that have fewer
than 3 stars for the book with `id = 1`.

Note: there is also the `.filter_by()` method that uses only a simple
attribute-value test for filtering.



**1.**

Use the `filter` method to fetch **all** the readers from the `Reader`
table with `Adams` surname, and assign the result in the variable called
`adams`.

**2.**

Use the `filter` method to fetch all the books from the year 2019 or
earlier, but then assign only the **first** result to the variable
called `book_pre2019`.



``` python
from app import Book, Reader, Review, Annotation

#select books from the year 2020
book_2020 = Book.query.filter(Book.year == 2020).all()
print("All the suggested books in the year 2020:")
[print(book) for book in book_2020]

#instead of all books suggested in 2020, fetch only the first one
book_2020_first = Book.query.filter(Book.year == 2020).first()
print("\nThe first book fetched from the year 2020: ", book_2020_first)

#you can specify multiple criteria for filtering
rev_3_boook13 = Review.query.filter(Review.stars <= 3, Review.book_id == 13).all()
print("\nThe review of 3 stars or lower written for a book with id = 13: ", rev_3_boook13)

#Checkpoint 1: fetching all the readers with "Adams" surname
adams = Reader.query.filter(Reader.surname == "Adams").all()
[print(person) for person in adams]

#Checkpoint 2: fetching the first book dating prior to the year 2019
books_pre2019 = Book.query.filter(Book.year <= 2019).first()
[print(book) for book in books_pre2019]
```

# Queries: more advanced filtering

Flask-SQLALchemy allows more complex queries and operations such as
checking whether a column starts, or ends, with some string. One can
also order retrieved queries by some criterion. There are many more
possible queries, but here we cover only some of them.

For example, to retrieve e-mails that end with `edu` we do:

``` python
education = Reader.query.filter(Reader.email.endswith('edu')).all()
```

To retrieve all the readers with e-mails that contain a ‘.’ before the
‘@’ symbol we use `.like()`:

``` python
emails = Reader.query.filter(Reader.email.like('%.%@%')).all()
```

You might recognize the `like` operator from SQL. It is used to search
for a specified pattern in a column. The wildcard `%` represents zero,
one, or multiple characters.

In the two examples above, we used methods on the column of the table
(SQLAlchemy’s `ColumnElement`).

To order books by year we use the `.order_by()` method on `Query`:

``` python
ordered_books = Book.query.order_by(Book.year).all()
```

We suggest checking the SQLAlchemy Core + ORM documentation to see other
querying options.



**1.**

Using `filter` and column-based criterion `endswith`, write a query that
retrieves all the readers with the surname that ends with an ‘s’ and
assign the result to a variable called `s_names`.

**2.**

Using `like`, write a query that retrieves all the readers with e-mails
having “sample” instead of “example” just after the “@” symbol, and
assign the result to a variable called `sample_emails`.

**3.**

Using `order_by`, write a query that orders the reviews by the number of
stars they have in ascending order, and assign the result to a variable
called `ordered_reviews`.



``` python
from app import db, Book, Reader, Review

#retrieve all reader with .edu e-mails
education = Reader.query.filter(Reader.email.endswith('edu')).all()
print(education)

#retrieve all readers with e-mails that contain a . before the @ symbol
emails = Reader.query.filter(Reader.email.like('%.%@%')).all()
print("\nReaders with e-mails having a . before the @ symbol:")
for e in emails:
  print(e.email)

#order all books by year
ordered_books = Book.query.order_by(Book.year).all()
print("\nBooks ordered by year:")
for book in ordered_books:
  print(book.title, book.year)

print("\nCheckpoint 1: your code here below:")
s_names = Reader.query.filter(Reader.surname.endswith('s')).all()
#print(s_names)

print("\nCheckpoint 2: your code here below:")
sample_emails = Reader.query.filter(Reader.email.like('%@sample%')).all()
#print(sample_emails)

print("\nCheckpoint 3: your code here below:")
ordered_reviews = Review.query.order_by(Review.stars).all()
print(ordered_reviews)
```

# Session: add and rollback

A set of operations such as addition, removal, or updating database
entries is called a database transaction. A *database session* consists
of one or more transactions. The act of committing ends a transaction by
saving the transactions permanently to the database. In contrast,
*rollback* rejects the pending transactions and changes are not
permanently saved in the database.

In Flask-SQLAlchemy, a database is changed in the context of a session,
which can be accessed as the `session` attribute of the database
instance. An entry is added to a session with the `add()` method. The
changes in a session are permanently written to a database when
`.commit()` is executed.

For example, we create new readers and would like to add them to our
database:

``` python
from app import db, Reader
new_reader1 = Reader(name = "Nova", surname = "Yeni", email = "nova.yeni@example.com")
new_reader2 = Reader(name = "Nova", surname = "Yuni", email = "nova.yeni@example.com")
new_reader3 = Reader( name = "Tom", surname = "Grey", email = "tom.grey@example.edu")
```

Note that we didn’t specify the primary key `id` value. Primary keys
don’t have to be specified explicitly, and the values are automatically
generated after the transaction is committed.

Adding each new entry to the database has the same pattern:

``` python
db.session.add(new_reader1)
try:
    db.session.commit()
except:
    db.session.rollback()
```

Notice that we surrounded `db.session.commit()` with a try-except block.
Why did we do that? If you look more carefully, `new_reader1` and
`new_reader2` have the same e-mail, and when we declared the `Reader`
model, we made the e-mail column unique (see the \*\*\*\*app.py\*\*\*\*
file). As a consequence, we want to undo the most recent addition to the
transaction by using `db.session.rollback()` and continue with other
additions without interruption.



**1.**

In the `playground.py` file, create a variable called `new_reader` that
is assigned an instance of the `Reader` class with `name = “Peter”`,
`surname = “Johnson”`, and
`email =`<a href="mailto:peter.johnson@example.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">peter.johnson@example.com</a>. Do not add an assignment
for `id`(the `id` will be automatically generated once the entry is
added to the database)

**2.**

In the “playground.py” file, using `session.add()` add the `new_reader`
entry to the database.

**3.**

In the “playground.py” file, commit the `new_reader` object to the
database. Enclose it using `try-except`. If `except` happens, perform
the rollback.



``` python
from app import db, Reader #notice we import db here as well
import add_data #we use this script to recreate the database, put all the entries so every time you run this script
                #you get the same result

#creating new readers
new_reader1 = Reader(name = "Nova", surname = "Yeni", email = "nova.yeni@sample.com")
new_reader2 = Reader(name = "Nova", surname = "Yuni", email = "nova.yeni@sample.com")
new_reader3 = Reader(name = "Tom", surname = "Grey", email = "tom.grey@example.edu")

print("Before addition: ")
for reader in Reader.query.all():
  print(reader.id, reader.email)

print("\nNote that before committing, the id of the new readers is: ", new_reader1.id, "\n")

#adding the first reader - the commit should succeed
db.session.add(new_reader1)
try:
    db.session.commit()
    print("Commit succeded.", new_reader1, "added to the database permanently. The exception was not raised.\n")
except:
    db.session.rollback()

#adding the second reader - the commit should fail because e-mails should be unique
db.session.add(new_reader2)  
try:
    db.session.commit()
except Exception as ex:
    print("The commit of", new_reader2,"didn't succeed. Duplicate primary key values. We will empty the current session.\n")
    print("The error is the following:", ex)
    db.session.rollback() 

#adding the third reader - the commit should succeed
db.session.add(new_reader3)  
try:
    db.session.commit()
    print("Commit succeded.", new_reader3, "added to the database permanently. The exception was not raised.\n")
except Exception as ex:
    db.session.rollback() 

print("\nNote that after committing, the id of the new readers is now: ", new_reader1.id, "\n")

#print all the readers after the addition, and we see nova.yeni@sample.com there, but not twice
for reader in Reader.query.all():
  print(reader.id, reader.email)
print("\nThe new readers Nova Yeni and Tom Grey are in the database. Notice that Nova Yeni doesn't appear twice.\n")

print("\nCheckpoint 1: create a new_reader:")
new_reader = Reader(name = "Peter", surname = "Johnson", email = "peter.johnson@example.com")

print("\nCheckpoint 2: add the new reader to the database:")
#your code here
db.session.add(new_reader)

print("\nCheckpoint 3: commit and rollback if exception is raised:")
try:
  db.session.commit()
except:
  db.session.rollback()
```

# Session: updating existing entries

Sometimes you will need to update a certain column value of an entry in
your database. This is rather easy in the context of SQLAlchemy ORM and
is done in the same way you would change Python object’s attribute.

The commands below change the email of a reader with `id=3` and commit
the changes to the database:

``` python
reader = Reader.query.get(3)
reader.email = “new_email@example.com”
db.session.commit()
```

If you want to undo the update, you can use

``` python
db.session.rollback()
```

instead of committing.



**1.**

Using the `get` method, fetch a book entry with `id = 19` and assign it
to the variable called `book_19`.

**2.**

Change the `month` attribute of `book_19` to `June`.

**3.**

Commit the change.



``` python
from app import db, Book, Reader #notice we import db here as well
import add_data

#fetch the reader with id = 123 and change their e-mail
reader = Reader.query.get(123)
print("Before the change:", reader) #print before the change
reader.email = "new.email@example.com"
db.session.commit()
print("After the commit:", Reader.query.get(123)) #print after the change

#rollback
reader = Reader.query.get(345)
print("Rollback example - before the change: ", reader) #print before the change
reader.email = "new.email@example.edu"
db.session.rollback()
print("Rollback example - after the rollback: ", Reader.query.get(345)) #print after the change

print("\nCheckpoint 1: use get to fetch a book entry:")
book_19 = Book.query.get(19)

print("\nCheckpoint 2: modify the month attribute to June:")
book_19.month = "June"

print("\nCommit the change:")
db.session.commit()
```

# Session: Removing database entries

Removing entries is an important aspect of database management and is
used often in real-world applications. Users unsubscribe from services,
products are removed from web applications, and some relationships are
lost (unfollowing other users).

However, before we proceed, we need to be careful about one-to-many
relationships. If we remove a reader, we would expect that all the
reader’s reviews are also removed from our database. Similarly, removing
a book should also remove all the reviews for that book. This procedure
is called cascading deletion. Unfortunately, the way we previously
declared our `Reader` and `Book` models will not perform the cascading
deletion by default. To enable cascading deletions, we did a naive
solution in this exercise by changing our models and re-initializing the
database. In practice, database migration management is used to update a
database schema.

To enable cascade deletions, we changed the models in the
\*\*\*\*app.py\*\*\*\* by adding the `cascade` parameter to the
`.relationship()` fields of `Reader` and `Book` models:

``` python
reviews = db.relationship('Review', backref='reviewer', lazy='dynamic', cascade = 'all, delete, delete-orphan')
```

In contrast, removing a review does not have any other cascading
consequences on `Book` and `Reader` tables. Hence, specifying the
cascading deletion option in `Review` is not needed.

Finally, to remove a reader with `id = 753` we use the following
command:

``` python
db.session.delete(Reader.query.get(753))
```

When you run \*\*\*\*playground.py\*\*\*\* you see that we print all the
readers, all the reviews before and after the deletion. You can notice
that when the reader with `id = 753` is deleted, all their reviews are
deleted as well. Refer to the image on the right to see the initial
entries of some database tables.



**1.**

Use the `delete()` command in combination with `get()` to delete a
reader entry with `id = 123` from the database in the image on the
right.



``` python
from app import db, Book, Reader, Review #notice we import db here as well

#let us first print all the readers current in the database (image on the right)
for reader in Reader.query.all():
   print(reader)

#print all the reviews
print("\nAll the current reviews:")
for review in Review.query.all():
  print(review)  

#delete reader with id = 753 (Nova Yeni, nova.yeni@example.com)
db.session.delete(Reader.query.get(753))

#print readers again to validate that the reader is indeed deleted
print("\nReaders after deleting a rader with id = 753")
for reader in Reader.query.all():
   print(reader)

#print reviews to see that all the reviews made by reader id = 753 are deleted
#(see the image on the right)
#print all the reviews
print("\nAll the current reviews:")
for review in Review.query.all():
  print(review)  

#Checkpoint 1:
#your code here below
db.session.delete(Reader.query.get(123))
```

# Queries and templates

In this exercise we combine database queries with Jinja templates. In
the \*\*\*\*routes.py\*\*\*\* file, besides the `home()` route listing
all the books in the database, we also added several routes for
displaying web pages with filtered entries from the database. For
example,

``` python
@app.route('/books/<year>')
def books(year):
   books = Book.query.filter_by(year = year)
   return render_template('display_books.html', year = year, books = books)
```

is a dynamic route with the `year` variable that can be set to some
valid year in the URL. Next, we filter out the books from the asked year
and display them using the \*\*\*\*display_books.html\*\*\*\* file (you
can find in the templates folder). The template expects the provided
`year` and a list of `books` to display.

In the URL bar of the integrated Web browser on the right, type or
copy-paste the following:
\*\*\*\*<a href="http://localhost:8000/books/2020"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:8000/books/2020</a>\*\*\*\*.
You see all the books suggested in 2020, together with all the reviews
for each book. Cool, ha?

If the list of the retrieved queries is empty, we handle that in the
\*\*\*\*display_books.html\*\*\*\* template by outputting that there are
no books suggested in that year. Alternatively, one can use
`.first_or_404()` as we do in the following:

``` python
reader = Reader.query.filter_by(id = user_id).first_or_404(description = "There is no user with this ID.")
```

If a reader with some `id` does not exist in the database, 404 error is
returned with a custom made message.

Take some time to observe the complete code provided on the right paying
attention to \*\*\*\*routes.py\*\*\*\*, and explore the templates in the
`template` folder.



**1.**

In the `routes.py` file, in the `reviews(review_id)` method, just before
rendering template with `render_template`, assign to a variable called
`review` the result of a query that by using the `filter_by()` method
filters the `Review` table by the value of the provided `review_id`
parameter in the route.

**2.**

Extend your query from Checkpoint1 to provide a custom `404 error` by
using the `first_or_404()` and providing any description you would like.



``` python
from app import app
from app import db, Reader, Book, Review, Annotation
from flask import render_template, request, url_for, redirect

@app.route('/home')
@app.route('/')
def home():
  books = Book.query.all()
  return render_template('home.html', books = books)

@app.route('/profile/<int:user_id>')
def profile(user_id):
   reader = Reader.query.filter_by(id = user_id).first_or_404(description = "There is no user with this ID.")
   return render_template('profile.html', reader = reader)

@app.route('/books/<year>')
def books(year):
   books = Book.query.filter_by(year = year)
   return render_template('display_books.html', year = year, books = books)

@app.route('/reviews/<int:review_id>')
def reviews(review_id):
   #your code here
   review = Review.query.filter_by(id = review_id).first_or_404(description = "There is no user with this ID.")
   return render_template('_review.html', review = review)
```

``` html
<html>
    <head>
        <title>Book selected for the year {{year}}</title>
    </head>
    <body>
        {% for book in books %}
             <p>{{ book.title }}</p>
             {% for review in book.reviews %}
                   {% include '_review.html' %}
             {% endfor %}
        {% else %}
         <p> Sorry. There are no books suggested in the year {{year}}</p>
        {% endfor %}
    </body>
</html>
```

# Review

Congratulations! This was maybe a challenging, but hopefully rewarding
experience for you.

In this lesson you learned how to:

1.  query all entries with `query.all()`, or fetch an entry based on the
    value of its primary key with `query.get(id)`.
2.  retrieve related objects by using the attributes instantiated with
    `db.relationship()` in your model
    (`Reader.query.get(123).reviews.all()`).
3.  use `filter` and `filter_by` to select database entries based on
    some criterion (for example,
    `Book.query.filter(Book.year = 2020).all()`).
4.  filter database entries by analyzing the patterns in their column
    values (for example,
    `emails = Reader.query.filter(Reader.email.like('%.%@%')).all()`).
5.  add new entries to a database, or how to rollback in case the
    transaction had erroneous entries.
6.  update existing entries in the database (for example,
    `Reader.query.get(3).email = “new_email@example.com”`).
7.  remove database entries (for example,
    `db.session.delete(Reader.query.get(753))`).
8.  combine databases with your web application’s templates (views).

The database that we sequentially built throughout the Flask-SQLAlchemy
lessons has the following final schema: <img
src="https://content.codecademy.com/programs/flask/databases/books-schema.jpg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="schema" />

Feel free to further explore all the files included in the final
demonstration. You did a great job!



``` python
from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///myDB.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False #to supress warning
db = SQLAlchemy(app)

#declaring the Book model
class Book(db.Model):
    id = db.Column(db.Integer, primary_key = True) #primary key column
    title = db.Column(db.String(80), index = True, unique = True) # book title
    author_name = db.Column(db.String(50), index = True, unique = False)
    author_surname = db.Column(db.String(80), index = True, unique = False) #author surname
    month = db.Column(db.String(20), index = True, unique = False) #the month of the book suggestion
    year = db.Column(db.Integer, index = True, unique = False) #the year of the book suggestion
    reviews = db.relationship('Review', backref = 'book', lazy = 'dynamic', cascade = "all, delete, delete-orphan") #relationship of Books and Reviews
    annotations = db.relationship('Annotation', backref='book', lazy='dynamic', cascade = "all, delete, delete-orphan")
    #Get a nice printout for Book objects
    def __repr__(self):
        return "{} in: {},{}".format(self.id, self.month, self.year)

#Add your columns for the Reader model here below.
class Reader(db.Model):
    id = db.Column(db.Integer, primary_key = True)
    name = db.Column(db.String(50), index = True, unique = False)
    surname = db.Column(db.String(80), unique = False, index = True)
    email = db.Column(db.String(120), unique = True, index = True)
    reviews = db.relationship('Review', backref='reviewer', lazy = 'dynamic', cascade = "all, delete, delete-orphan")
    annotations = db.relationship('Annotation', backref='author', lazy='dynamic', cascade = "all, delete, delete-orphan") 
    #get a nice printout for Reader objects
    def __repr__(self):
        return "Reader ID: {}, email: {}".format(self.id, self.email)

#declaring the Review model
class Review(db.Model):
    id = db.Column(db.Integer, primary_key = True) #primary key column, automatically generated IDs
    stars = db.Column(db.Integer, unique = False) #a review's rating
    text = db.Column(db.String(200), unique = False) #a review's text
    book_id = db.Column(db.Integer, db.ForeignKey('book.id')) #foreign key column
    reviewer_id = db.Column(db.Integer, db.ForeignKey('reader.id'))
    #get a nice printout for Review objects
    def __repr__(self):
        return "Review ID: {}, {} stars {}".format(self.id, self.stars, self.book_id)

#declaring the Annotation model
class Annotation(db.Model):
    id = db.Column(db.Integer, primary_key = True)
    text = db.Column(db.String(200), unique = False)
    reviewer_id = db.Column(db.Integer, db.ForeignKey('reader.id'))
    book_id = db.Column(db.Integer, db.ForeignKey('book.id'))
    #get a nice printout for Annotation objects
    def __repr__(self):
        return '<Annotation {}-{}:{} >'.format(self.reviewer_id, self.book_id, self.text)

import routes
```

``` python
from app import app
from app import db, Reader, Book, Review, Annotation
from flask import render_template, request, url_for, redirect

@app.route('/home')
@app.route('/')
def home():
  books = Book.query.all()
  return render_template('home.html', books = books)

@app.route('/profile/<int:user_id>')
def profile(user_id):
   reader = Reader.query.filter_by(id = user_id).first_or_404(description = "There is no user with this ID.")
   return render_template('profile.html', reader = reader)

@app.route('/books/<year>')
def books(year):
   books = Book.query.filter_by(year = year)
   return render_template('display_books.html', year = year, books = books)

@app.route('/reviews/<int:review_id>')
def reviews(review_id):
   #your code here
   review = Review.query.filter_by(id = review_id).first_or_404(description = "There is no user with this ID.")
   return render_template('_review.html', review = review)
```

# FlaskFM

You probably often encountered the concept of personalizing your taste
in products you find online. For example, users create wishlists or
shopping lists of various products, a personal book library as they buy
and read books, sewing fabric preferences, or song library they listen
to often. Your personal ‘wishlist’ is stored in a database so you can
view it when needed.

In this project, you will create a web service, called
\*\*\*\*FlaskFM\*\*\*\*, that will allow users to add songs to their
personalized list from a song library curated by an administrator
through a dashboard page. You will model users and playlists that can be
changed by users who add or remove songs. The project work will focus on
the database aspect, but you will create a functional web service for
your users with us providing you templates, routes, and guidance. Your
task will be to create a database with the schema below: <img
src="https://content.codecademy.com/programs/flask/databases/songs-schema.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="schema" />

You will do a simplified version, but imagine users listening to songs
on their music applications and your web service can track which
songs/genre they listen to most often. Given the collected data, your
web app can recommend new music to the users based on their listening
preferences. We will start with the basics, but the sky is the limit.
Let’s go!



Mark the tasks as complete by checking them off

## Setup the database

1\.

We already provided some imports for you in \*\*\*\*app.py\*\*\*\*.
Import `SQLAlchemy` from `flask_sqlalchemy` module in order to use
databases in Flask.

2\.

To the `'SQLALCHEMY_DATABASE_URI'` app configuration key, assign a
database URI (or path) that should be used for an SQLite database
connection. A good name for the database file could be
\*\*\*\*song_library.db\*\*\*\*.

3\.

Create an SQLAlchemy object and assign it to a variable called `db` that
binds your database to the application instance `app` in
\*\*\*\*app.py\*\*\*\*.

## Create the Song model

4\.

To create your database models use the \*\*\*\*models.py\*\*\*\* file in
your application folder. In this project, you need to model users,
playlists, items, and songs. We already wrote the `User` model for you
in the \*\*\*\*models.py\*\*\*\* file, and you will create the rest of
the models.

Create the `Song` model that inherits from `db.Model` and initially has
one column called `id` representing the primary key for the `Song`
table. Use the `User` model as your guide.

5\.

To the `Song` model, add two columns representing the `artist` field,
and the `title` field. Both are of the `db.String` type and are both
indexable but not unique. See the database schema for better
visualization. You can choose your own string length.

6\.

As users add songs to their playlists, we want to count each addition.
This will be a proxy attribute for a song’s popularity.

Create another column instance `n` in the `Song` model of the
`db.Integer` type that is neither indexable nor unique.

7\.

Implement a `__repr__` method for the `Song` model that returns a string
formatted as follows:

``` python
<Song Title> by <Song Artist>
```

For example, if a song’s title is “Waterfalls” and the artist is “TLC”,
the `__repr__` method would return the following:

``` python
Waterfalls by TLC
```

## Create Song-Playlist pairs

8\.

Users in your web service can add songs to their playlist from a
universally accessible song library. Each user’s playlist contains
song-playlist pairs we call `Item`. Each item is a playlist and a song
pair.

First, in the \*\*\*\*models.py\*\*\*\* file, create the `Item` model
with the primary key column called `id`.

9\.

Each item is associated with a song. That way we know which song was
added to a playlist.

Add a foreign key column called `song_id` that references the `Song`
model’s primary key `id`.

## Creating the Playlist model

10\.

Finally, we need the `Playlist` model. One playlist can have many
`Item`s. This tells you that the `Playlist` and `Item` models are in a
one-to-many relationship.

In the \*\*\*\*models.py\*\*\*\* file, Create the `Playlist` model with
its primary key column called `id`.

11\.

**One** playlist can have **many** items (or song-playlist pairs). This
should tell you that the `Playlist` and the `Item` models are in a
one-to-many relationship. Since one item is associated with only one
playlist, this means that you need to add a foreign key column to the
`Item` model. If you look at the schema, it is nicely visualized.

To the `Item` model, add a foreign key column called `playlist_id`
referencing the `Playlist`’s primary key `id`.

12\.

To complete this one-to-many relationship, you need to add another field
in the `Playlist` model called `items` (notice how we use the plural
variable name since it’s a one-to-MANY relationship).

Add a new field called `items` to the `Playlist` model instantiated
using `.db.relationship()` that references the `Item` table. The
backreference field should be called `playlist`, as in “each item
belongs to a playlist”. Set `lazy` to `dynamic` and set the cascade
deletion if you wish.

## Initializing the database

13\.

Now that you have the models declared in the \*\*\*\*app.py\*\*\*\*
file, it is time to initialize the database.

In Terminal, type `python3` and initialize the database using the `db`
instance we created in \*\*\*\*app.py\*\*\*\*. If this was successful,
you should see your database file (with the \*\*\*\*.db\*\*\*\*\*
extension) appearing in your file system window.

14\.

All set? Great. The database is created but containing no data. We
provided you with a short script for adding some initial data. It is
called \*\*\*\*add_data.py\*\*\*\* and is located in your application
folder.

Run the \*\*\*\*add_data.py\*\*\*\* script in the Terminal with the
`python3 add_data.py` command.

## Queries

15\.

In order to view the database entries in your web pages, you must first
enable other routes we provided for you. At the end of the
\*\*\*\*app.py\*\*\*\* file, uncomment the `import routes` code.

In case you don’t uncomment the importing code when you click on
**Home** or **Dasboard** links in the navigation bar, their URL will not
be found.

16\.

The profiles page in the browser window should list all the users
currently in the database. The profiles page is rendered using the
`profiles()` function in \*\*\*\*routes.py\*\*\*\*. Make sure to locate
it in \*\*\*\*routes.py\*\*\*\*. This route displays the home page by
rendering the \*\*\*\*users.html\*\*\*\* template that expects a list of
users to be displayed. That list is currently empty.

To display all the users in the database, just before the template
rendering command, write a database query that assigns all the users in
the `User` table to the `current_users` variable. If your query
succeeds, you should be able to see the list of usernames on the home
page. Cool, right?

17\.

Every time someone clicks on a link for a specific user on the home
page, they should be redirected to the user’s profile. In
\*\*\*\*routes.py\*\*\*\*, user profiles are displayed using the
`profile()` function that renders \*\*\*\*profile.html\*\*\*\*. The
\*\*\*\*profile.html\*\*\*\* template expects to get a `user_id`, a song
library, and the playlist owned by a user with the `user_id`. We already
provided some queries for you.

Write a query that fetches the playlist of a user with `user_id` and
assigns the result of the query to the `my_playlist` variable: currently
you have `my_playlist = None`. Note, you can get the user’s playlist
`id` through the `playlist_id` column of the `User` model. If your query
succeeded, you should see a blue `Add` link next to each song in the
song library.

## Adding, updating and removing

18\.

Now that you see the blue `Add` links next to each song in the library,
users can click on `Add` if they wish to add the song to their playlist.
In **routes.py** we have provided the `add_item()` view function as a
route for adding these songs. We also provided some initial queries for
you within the route.

You need to complete the part within the `if` condition that adds the
selected song with `song_id` to a playlist with `playlist_id` belonging
to a user with `user_id`. The `if` condition checks if the song is
already in the user’s playlist. Use `db.session` to add `new_item` to
the database `db`.

19\.

Before committing the new item, you first need to increase the counter
of the song being added to the playlist. Remember, this number can tell
us how popular a song is.

Write code to increment the `n` property of `song` with `song_id` by
one. After you do that, commit the changes using `db.session`.

20\.

Commit database changes.

21\.

If your previous code worked, whenever you click on `Add` you see the
associated song appearing in a user’s playlist. What you should also
observe is the appearance of the `Remove` link next to each song in a
user’s playlist. This allows users to remove songs from their playlists
if they wish. We already provided the route for this functionality. In
`routes.py` find the `remove_item()` function. The function takes an
`item_id`, the primary key of the item being removed.

Using `db.session` remove the item with `item_id`. Commit the changes.
If your code works you should see the songs removed from a user’s
playlist each time `Remove` is clicked. Cool, ha?

## Dashboard: order songs by popularity and add new songs

22\.

Let us go to the Dashboard view (click the Dashboard link in the
navigation bar). Normally users should not see the Dashboard link unless
they are site administrators, but we are simplifying things here. In the
Dashboard page, you can see a form with which administrators can add new
songs to the song library. We created the form functionality for you,
and you need to just create a new song to be added to the database. For
this task, you will modify the `dashboard()` function in
\*\*\*\*routes.py\*\*\*\*.

Create a `new_song` variable with its `title` set to the value of
`form.title.data`, its `artist` property set to the value of
`form.artist.data`, and `n` set to the value `1`.

23\.

Add the `new_song` entry to the session and commit. If done correctly,
with each new song you type in you should see it listed in the Songs
list.

24\.

You want to order the songs by popularity, that is, by how many times
they were added to playlists. You can list them all ordered, or you can
pick bottom-N songs using Python’s slicing.

Write a query that will use `.order_by()` to order songs in the `Song`
table in the increasing order (from least time added to most time
added).



# Flask Database Setup

[Setting Up a Flask App with a
Database](https://www.youtube.com/watch?v=O-eiYcMWD30)
