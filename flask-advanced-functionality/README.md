# Welcome to Accounts and Authentication

Learn how to add security and customization to your Flask apps with
Accounts and Authentication.

Welcome to the section of the course focused on accounts and
authentication in Flask apps. In this section, you will learn how to add
user account functionality to allow for members-only access to parts of
your app and personalized experiences.

Then learn how to add security features to your user accounts to ensure
your users’ data is kept safe from hackers.

Let’s get started!

# Learn

Introduction to Accounts

Intro to Accounts with Flask

Accounts are the end result of gathering data necessary to create a user
for a website. They also allow you to keep logging in to use the
application.

Ever wonder what the process would be to create a site that featured
user accounts? Well wonder no further! By the end of this lesson you
will be familiar with the concepts and code necessary to create a web
application with user account functionality.

Remember Flask is a micro-framework with web server functionality and
built in tools to make web development simple and enjoyable. Along the
way we will use other Flask tools to address our development needs.

We will be using Flask’s Flask-Login, SQLAlchemy and WTForms Python
packages to build our application. The application will allow you to
invite your friends to a dinner party, and users will have the power to
login and RSVP for the fun evening. We’ll call it \**drumroll\*\\* :
DinnerParty! The sooner we start, the sooner us and our friends will be
enjoying dessert!

### Solution

# Learn

Introduction to Accounts

Introduction to Hashing

An important rule of application development is to never store sensitive
user data as plain text. Plain text data is a security risk, as a data
breach or hack would allow sensitive data to fall into the wrong hands.

How can we store sensitive user data, such as passwords, in a more
secure format? Step in hashing! *Hashing* is the process of taking text
input and creating a new sequence of characters out of it that cannot be
easily reverse-engineered.

When we hash user passwords, we can store the hashed format rather than
the original plain text passwords. If a hack were to occur, the hackers
would not be able to exploit the stolen information without knowing the
hashing function that was used to encrypt the data.

We can add hashing functionality to a Flask application using the
security module of the Werkzeug package.

To hash a password:

``` pre__3_SOs7YT7NaHjnNunEArSM
hashed_password = generate_password_hash("noONEwillEVERguessTHIS")
```

-   `generate_password_hash()` takes a string as an argument and returns
    a hash of the string

We can also check a user-entered password against our hashed password to
check for a match:

``` pre__3_SOs7YT7NaHjnNunEArSM
hash_match = check_password_hash(hashed_password, "IloveTHEcolorPURPLE123")
print(hash_match) # will print False 
hash_match = check_password_hash(hashed_password, "noONEwillEVERguessTHIS")
print(hash_match) # will print True 
```

-   `check_password_hash()` takes two arguments: the hashed string and a
    new string which we are checking the hash against. It returns a
    boolean indicating if the string was a match to the hash.

While we are hardcoding our passwords here, in later exercises we will
see how to collect this information using a Form.

### Instructions

**1.**

Import `generate_password_hash` and `check_password_hash` from
`werkzeug.security`.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

A (not so great) password `hardcoded_password_string`, representing a
user-entered password upon signing up for your application, is provided
in **app.py**.

Hash `hardcoded_password_string` with the `generate_password_hash()`
function, and save the result to a variable `hashed_password`. Print
`hashed_password` to the terminal.

Checkpoint 3 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**3.**

The same user returns to your application and enters a password
`password_attempt_one`, provided in **app.py**. Check the hash
`hashed_password` against `password_attempt_one` with the
`check_password_hash()` function.

Save the result to a variable `hash_match_one`, and print it to the
terminal.

Checkpoint 4 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**4.**

Looks like the user entered their password for a different site
accidentally. They took a second attempt with a different password
`password_attempt_two`, also provided in **app.py**.

Check the hash `hashed_password` against `password_attempt_two` with the
`check_password_hash()` function.

Save the result to a variable `hash_match_two`, and print it to the
terminal. Did the user get the password right this time?

Checkpoint 5 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Introduction to Accounts

Modeling Accounts w/ SQLAlchemy

When creating a user account in an application, there are a variety of
data that needs to be stored for each user, as well as associated
methods. The best way to store this data for a Flask application is as a
model in a database managed by Flask-SQLAlchemy.

There are some fields we might want to store for each of our users no
matter what kind of application we are creating. For example, these
fields can include: `id`, `username`, `email`, `password_hash`, and
`joined_at_date`. A good way to store this data is in a `User` model
within your database. For example, given some database `db`:

``` pre__3_SOs7YT7NaHjnNunEArSM
class User (db.Model):
  id = db.Column(db.Integer, primary_key=True)
  username = db.Column(db.String(64), index=True, unique=True)
  email = db.Column(db.String(120), index=True, unique=True)
  password_hash = db.Column(db.String(128))
  joined_at_date = db.Column(db.DateTime(), index=True, default=datetime.utcnow)
```

-   here we instantiate a model `User`
-   that stores primary key `id` as an `Integer`
-   `username`, `email` and `password_hash` as `String`s, and
-   `joined_at_date` as a `DateTime`

In addition to this informational data, we want to add methods that
represent different user needs. We could write these methods ourselves,
but Flask-Login does that work for us with the help of mixins. Mixins
help us inject some standard code into a class to make life easier. In
this case, we will inherit the methods and properties of the `UserMixin`
class.

``` pre__3_SOs7YT7NaHjnNunEArSM
from flask_login import UserMixin
 
class User(UserMixin, db.Model)
```

-   when we inherit from `UserMixin`, we inherit some of the following
    functions: `is_active()`, `is_authenticated()`, `is_anonymous()`
-   these functions will be helpful later on for understanding the state
    of our users

### Instructions

**1.**

Let’s take it back to our dinner party application! We want to create
user accounts that will allow us to store the information we need for
each user interested in attending a party.

Included in **app.py** is the code to create a Flask application,
instantiate a database `db`, and begin creating a `User` model.

Add the following additional attributes to the `User` class:

-   `email`, stored as a type `String` with a maximum length of 120. The
    column is indexable and unique.
-   `password_hash`, stored as a type `String` with a maximum length of
    128.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Add one last column to the `User` model `joined_at` representing the
date the user joined the site. The attribute should be of type
`DateTime`, indexable, and have a default value of `datetime.utcnow`

Checkpoint 3 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**3.**

Lastly, let’s add additional functionality to our `User` class by
providing it the methods of the `UserMixin` class.

Update `User` to inherit from `UserMixin`.

Checkpoint 4 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Introduction to Accounts

Signing up with WTForms

Now that we’ve got a database setup, our dinner application is starting
to take shape. We’re going to need to get some data from our friends in
order to make their dinner party accounts.

We could get all kinds of juicy information from them like their
favorite dish or favorite chef, but for now, we’ll just grab their email
address, username, and password. To get this information we’ll need to
provide the user with an interface that has input areas for the
respective fields that need to be filled out. An HTML form is a perfect
way to gather this data!

We will use WTForms to create forms that make it easy for us to grab the
data we need.

``` pre__3_SOs7YT7NaHjnNunEArSM
class RegistrationForm(FlaskForm):
  username = StringField('Username', validators=[DataRequired()])
  email = StringField('Email', validators=[DataRequired(), Email()])
  password = PasswordField('Password', validators=[DataRequired()])
  password2 = PasswordField('Repeat Password', validators=[DataRequired(), EqualTo('password')])
  submit = SubmitField('Register')
```

-   a class `RegistrationForm` is defined and inherits from `FlaskForm`
-   `StringField`s `username` and `email` are defined with the
    appropriate validators
-   `PasswordField`s `password` and `password2` are defined with the
    appropriate validators to ensure the same password is entered twice
-   a `SubmitField` named `submit` is defined

And we will have a route that allows the users to create an account.

``` pre__3_SOs7YT7NaHjnNunEArSM
@app.route('/register', methods=['GET', 'POST'])
def register():
  form = RegistrationForm()
  if form.validate_on_submit():
    user = User(username=form.username.data, email=form.email.data)
    user.set_password(form.password.data)
    db.session.add(user)
    db.session.commit()
  return render_template('register.html', form=form)
```

-   a `RegistrationForm` named `form` is created
-   if the form is validated upon submission, a `User` named `user` is
    created with a `username` and `email` from the form data
-   the `user`‘s password is set and hashed using the `set_password`
    method
-   the `user` is added to the database session and the session is
    committed

Lastly, we need to make sure to update our template file to make sure
the form is displayed properly to our users.

### Instructions

**1.**

A registration form for users of our dinner party application has been
started as the class `RegistrationForm` in **app.py**. Add a class
attribute named `email` and assign it as a `StringField` with label
“Email”. Include the `DataRequired()` and `Email()` validators as well.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Add two more class attributes to `RegistrationForm` for recording
password information as described below:

-   an attribute named `password`, assigned as a `PasswordField` with
    label “Password”. Include the `DataRequired()` validator.
-   an attribute named `password2`, assigned as a `PasswordField` with
    label “Repeat Password”. Include the `DataRequired()` and
    `EqualTo('password')` validators.

Checkpoint 3 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**3.**

In the registration route, define a new `User` named `user` with a
username and email pulled from the registration form named `form`.

Checkpoint 4 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**4.**

Set the password of `user` with its `set_password()` method.

Once completed, try using the registration form and visiting the index
route to see the users currently registered for the dinner party!

Checkpoint 5 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Introduction to Accounts

Login in with Flask

We currently have a working form grabbing user data and signing them up
to our application. Good work! Next, let’s allow users to login by using
a Flask-Login object called `LoginManager()`.

``` pre__3_SOs7YT7NaHjnNunEArSM
login_manager = LoginManager()
login_manager.init_app(app)
```

-   here we create a `LoginManager` object and initialize it with the
    `init_app()` method and our application object `app`

Flask-Login provides us with a helpful decorator that we’ll place on
endpoints we want to be protected. Remember, decorators allow us to run
bits of code before ultimately running a function or in this case our
flask endpoint.

``` pre__3_SOs7YT7NaHjnNunEArSM
@app.route('/user/<username>')
@login_required
def user(username):
  user = User.query.filter_by(username=username).first_or_404()
  return render_template('user.html', user=user)
```

-   the `@login_required` decorator is used to protect the `user` route
-   the `User` table is queried for a user that matches the provided
    username

We will use this decorator on every Flask endpoint that we want only
accessible by logged in users. This will check to make sure the user
login is still stored in memory. So long as the user memory has not been
cleared with a logout or browser refreshing clear, the `LoginManager()`
will be able to retrieve the identity of the user before allowing them
to access the information on that page.

We also need an additional helper function to load our individual user
when trying to access protected routes.

``` pre__3_SOs7YT7NaHjnNunEArSM
@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))
```

-   the `load_user()` function loads a user with a given `user_id`

We can then login a user with a login route, paired with a login form,
as shown below:

``` pre__3_SOs7YT7NaHjnNunEArSM
@app.route('/login', methods=['GET','POST'])
def login():
  form = LoginForm(csrf_enabled=False)
  if form.validate_on_submit():
    user = User.query.filter_by(email=form.email.data).first()
    if user and user.check_password(form.password.data):
      login_user(user, remember=form.remember.data)
      next_page = request.args.get('next')
      return redirect(next_page) if next_page else redirect(url_for('index', _external=True, _scheme='https'))
    else:
      return redirect(url_for('login', _external=True, _scheme='https'))
  return render_template('login.html', form=form)
```

-   initialize a `LoginForm` `form`
-   if the form validates, query the `User` table for the user with an
    email that matches the provided email
-   if a user is found `user.check_password(form.password.data)` checks
    the form entered password against the user’s password
-   if there is a match, `login_user()` logs `user` in and redirects to
    either `next_page` or the index route
-   if no user is found or the password does not match, we redirect to
    the login route

### Instructions

**1.**

A `LoginManager()` has been initialized and a `load_user()` function has
been defined for you in **app.py**. Let’s focus on the login route,
which is partly defined.

Query the `User` table for the user with an email that matches the login
form’s email field. Save the user to a variable named `user`.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Within the login route there is an `if` statement that we want to use to
check two conditions:

1.  if a user with a matching email was found and
2.  if the user entered the correct password for that account

Replace the `True` in the `if` statement to check for both of the above
conditions.

Checkpoint 3 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**3.**

Now that you have found a matching user and confirmed they entered the
correct password, log them in!

Use the `login_user` function to log `user` into the site.

Checkpoint 4 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Introduction to Accounts

Associating User Actions

Our users are now able to create accounts and log in. You may be
curious, and ask yourself, “How can I make sure that they manipulate
only their data and not someone else’s?”

We solve this association problem by making every dinner party an
instance of a `DinnerParty` model, where each party is created by an
instance of the `User` model. We can then use the unique identifying
attributes of each object to ensure functionality like creating new
dinner parties hosted by a specific user and letting users RSVP to a
specific dinner party.

We can update our user endpoint with functionality to check for existing
dinner parties and create a new dinner party using a form:

``` pre__3_SOs7YT7NaHjnNunEArSM
def user(username):
  user = User.query.filter_by(username=username).first_or_404()
  dinner_parties = DinnerParty.query.filter_by(party_host_id=user.id)
  if dinner_parties is None:
    dinner_parties = []
  form = DinnerPartyForm(csrf_enabled=False)
```

-   query the `DinnerParty` model for all dinner parties where the party
    host is our logged-in user, and store the parties in
    `dinner_parties`
-   if there is no dinner party hosted by the logged-in user, set
    `dinner_parties` to an empty list
-   create a `DinnerPartyForm` named `form`

Once the user submits the form for a new dinner party, we can use the
form data to create a new `DinnerParty` instance:

``` pre__3_SOs7YT7NaHjnNunEArSM
  # user route continued
  if form.validate_on_submit():
    new_dinner_party = DinnerParty(
      date=form.date.data,
      venue=form.venue.data,
      main_dish=form.main_dish.data,
      number_seats=int(form.number_seats.data), 
      party_host_id=user.id,
      attendees=username)
    db.session.add(new_dinner_party)
    db.session.commit()
  return render_template('user.html', user=user, dinner_parties=dinner_parties, form=form)
```

-   if `form` validates, create a new `DinnerParty` object
    `new_dinner_party`
-   the `DinnerParty` attributes (`date`, `venue`, …, `attendees`) are
    assigned values from their accompanying form field data
-   the `attendees` attribute is initialized with the logged-in user’s
    `username`
-   `new_dinner_party` is added to the session and committed

We can create a new route that will allow users to see all the dinner
parties that are happening and provide a form for RSVPing to a specific
party:

``` pre__3_SOs7YT7NaHjnNunEArSM
def rsvp(username):
  user = User.query.filter_by(username=username).first_or_404()
  dinner_parties = DinnerParty.query.all()
  if dinner_parties is None:
    dinner_parties = []
  form = RsvpForm(csrf_enabled=False)
  if form.validate_on_submit():
    dinner_party = DinnerParty.query.filter_by(id=int(form.party_id.data)).first()
    dinner_party.attendees += f", {username}"
    db.session.commit()
  return render_template('rsvp.html', user=user, dinner_parties=dinner_parties, form=form)
```

-   set `user` to the logged-in user
-   query all dinner parties in the `DinnerParty` model and save them to
    `dinner_parties` for display on the page
-   create an RSVP form named `form`
-   if `form` validates, query the `DinnerParty` model for the dinner
    party with an `id` that matches the `id` entered in the form
-   update the attendee list with the logged-in user’s `username` and
    commit the change

### Instructions

**1.**

Let’s start by adding dinner party creation functionality to our
application! In order to make the code easier to navigate in the
workspace, we’ve split the code into multiple files: **routes.py**,
**models.py**, **forms.py**, and **app.py**.

Review the code in **models.py**, where a `DinnerParty` class has been
implemented with the following attributes: `id`, `date`, `venue`,
`main_dish`, `number_seats`, `party_host_id`, and `attendees`.

Then navigate to **forms.py**, where a `DinnerPartyForm` form has been
implemented with the following fields: `date`, `venue`, `main_dish` and
`number_seats`.

When you have reviewed the class and the form, run the code to proceed
to the next checkpoint. View the hint for more detailed information
about the class and form!

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Navigate back to **routes.py**. The user route has been updated to
include much of the code necessary for creating a new dinner party, but
the code for creating a new `DinnerParty` instance is incomplete.

Update the values of each attribute in the definition of the
`DinnerParty` instance `new_dinner_party`.

Set the values as follows:

-   `date` as the date set in `form`
-   `venue` as the venue set in `form`
-   `main_dish` as the main dish set in `form`
-   `number_seats` as an integer of the number of seats set in the form
-   `party_host_id` as `user`‘s `id` attribute
-   `attendees` as the `username` of the current user

Checkpoint 3 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**3.**

In **routes.py** we’ve added a new route, `rsvp()`, that allows
logged-in users to RSVP to a dinner party. In order for a user to RSVP,
you need a simple RSVP form. Navigate to **forms.py** and review the
provided `RsvpForm`, with its one field, `party_id`.

Now you can query the `DinnerParty` model to find the specific dinner
party the user wants to RSVP for. Query `DinnerParty` and `filter_by()`
the `party_id` as entered on the form. Select the `first()` value from
the query, and save the result to a variable `dinner_party`.

Checkpoint 4 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**4.**

Now that you have the dinner party the user wants to RSVP for, you can
add them to the attendee list! Update `dinner_party`‘s `attendees`
attribute as follows:

``` pre__3_SOs7YT7NaHjnNunEArSM
dinner_party.attendees += f", {username}"
```

Checkpoint 5 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Introduction to Accounts

Success and Error Handling

As we round things up, it’s a good idea to make sure the user experience
is thoughtful by implementing a way to notify the user when an RSVP
succeeds or if they need to try again in case an error occurs.

Flask provides us with the `flash()` method to communicate messages
powered by the backend. With flash, Flask can record a message at the
end of a request and access it on the next request only. We can thus use
flash to notify users whether their important actions succeed or fail.

Consider the second half of the RSVP route from the previous exercise.
We can update our code to better notify users of what occurs as follows:

``` pre__3_SOs7YT7NaHjnNunEArSM
# second half of rsvp route
  if form.validate_on_submit():
    dinner_party = DinnerParty.query.filter_by(id=int(form.party_id.data)).first()
    # new try block
    try:
      dinner_party.attendees += f", {username}"
      db.session.commit()
      # find the host of dinner_party
      host = User.query.filter_by(id=int(dinner_party.party_host_id)).first()
      flash(f"You successfully RSVP'd to {host.username}'s dinner party on {dinner_party.date}!")
    # new except block
    except:
      flash("Please enter a valid Party ID to RSVP!")
  return render_template('rsvp.html', user=user, dinner_parties=dinner_parties, form=form)
```

-   the update to `dinner_party.attendees` and the commit now occur
    inside a `try` block
-   the `User` model is queried for the user hosting `dinner_party` and
    stored in `host`
-   inside the `try` block, `flash()` is given a string message as an
    argument to notify the user that an RSVP successfully occurred
-   an `except` block is called when there is an error RSVP’ing
-   inside the `except` block, `flash()` is given a string message as an
    argument to notify the user that they were not able to RSVP
    successfully

With the route updated, we can access our flashed messages in a template
file and display them on our page as follows:

``` pre__3_SOs7YT7NaHjnNunEArSM
{% with messages = get_flashed_messages() %}
  {% if messages %}
    {% for message in messages %}
      {{ message }}
    {% endfor %}
  {% endif %}
{% endwith %}
```

-   the `get_flashed_messages()` function returns all flashed messages
    in the last session and saves the messages to `messages`
-   `if` there are any messages, we `for` loop through each `message` in
    `messages` and display the message `{{ message }}`

It’s best practice to look at your code and evaluate areas where things
can go wrong. When you identify these points, you can utilize `flash()`
to provide feedback to the user on what exactly happened and how they
can proceed.

### Instructions

**1.**

The `flash` function has been imported at the top of **routes.py**.
Additionally, we have added `try` and `except` blocks to the `rsvp()`
route at the bottom of **routes.py** to prepare for the use of `flash()`
messages.

Add a `flash()` message inside the `try` block of the `rsvp()` route
with the following f-string as an argument:

``` pre__3_SOs7YT7NaHjnNunEArSM
f"You successfully RSVP'd to {host.username}'s dinner party on {dinner_party.date}!"
```

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Staying inside **routes.py**, replace the `pass` inside the `except`
block of the `rsvp()` route with a `flash()` message containing the
following string:

``` pre__3_SOs7YT7NaHjnNunEArSM
"Please enter a valid Party ID to RSVP!"
```

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**3.**

Navigate over to **rsvp.html**. We have added some code at the top of
the file to display all flashed messages near the top of the page.

Replace the empty list with the Flask function that returns all flashed
messages from the last session.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Introduction to Authentication with Flask

Intro to Authentication

Authentication is the process of verifying that an individual has
permission to perform an action. Without authentication, there would be
no way of knowing or enforcing access control on our browser for our
applications.

Our strategy of authenticating users depends on discerning whether a
password is valid or not in order to allow the user to perform further
actions in the application.

In the next lesson we’ll get to know some of the tools that we can use
to authenticate in Python Flask applications by building a web
application that allows authenticated users to view an awesome secret
recipe.

Click Next to get started!

### Solution

# Learn

Introduction to Authentication with Flask

Meet Flask-Login

When building a web application we might first start with the base of
our application serving an endpoint saying “Hello World”.

``` pre__3_SOs7YT7NaHjnNunEArSM
from flask import Flask
app = Flask(__name__)
 
@app.route('/')
def hello_world():
    return 'Hello Authentication World!'
```

The application we will be building will show how to use tools in Flask
to authenticate users. The primary tool we can use to achieve our
purposes of authenticating in Flask is
<a href="https://flask-login.readthedocs.io/en/latest/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Flask-Login</a>.

Flask-Login is a third-party package that allows us to use pieces of
code that enable us to perform authentication actions in our
application.

We can manage user logins with the `LoginManager` object from within
Flask-Login, as shown below:

``` pre__3_SOs7YT7NaHjnNunEArSM
from flask_login import LoginManager
 
login_manager = LoginManager()
```

-   `LoginManager` is imported from the `flask_login` package
-   a new `LoginManager` object named `login_manager` is created

Once a `LoginManager` object is defined, we need to initialize the
manager with our application. This can be done with the `init_app()`
method of a `LoginManager`:

``` pre__3_SOs7YT7NaHjnNunEArSM
login_manager.init_app(app)  
```

-   our instance of `LoginManager`, `login_manager`, calls its
    `init_app()` method with `app`, an initialized Flask app, as an
    argument

### Instructions

**1.**

Import `LoginManager` from `flask_login` in **app.py**

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Create an instance of `LoginManager` named `app_login_manager`.

Checkpoint 3 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**3.**

Initialize your `login_manager` with the app provided in **app.py**.

Checkpoint 4 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Introduction to Authentication with Flask

Protecting Pages

Protecting pages is the primary objective of authentication. We can
leverage some very useful functions from Flask-Login to ensure our
different pages or routes are protected.

One of the key pieces of code that we previously added is the
`LoginManager` object that we initialized with our instance of the Flask
application. `LoginManagers` have a method `user_loader` that needs to
be defined in order to load and verify a user from our database.

``` pre__3_SOs7YT7NaHjnNunEArSM
@login_manager.user_loader
def load_user(id):
    return User.query.get(int(id))
```

-   this method retrieves our `User` with an id value `id` from our
    database
-   without this function, we won’t be able to verify users on our
    protected routes!

Next we need to import the `login_required` function from `flask_login`
at the top of our file:

``` pre__3_SOs7YT7NaHjnNunEArSM
from flask_login import login_required
```

We can now add the `@login_required` function as a decorator to
different routes to make logging in necessary.

``` pre__3_SOs7YT7NaHjnNunEArSM
@app.route('/home')
@login_required
def home():
    return render_template('logged_in.html')
```

The `@login_required` decorator will force the user to login before
being able to view the page

### Instructions

**1.**

Import the `login_required` function from `flask_login`.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Add the `@login_required` decorator to the home endpoint so that it is
only accessible when logged in.

Checkpoint 3 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Introduction to Authentication with Flask

Error Handling

We’ve all experienced a time when we thought we were logged into a site
and tried to access a protected page. Some sites handle this better than
others, by letting the user know that the requested page is only for
authenticated users.

When our user tries to access protected pages without logging in or
encounters an error upon login, its best we communicate this somehow to
the user.

We can catch authorization issues by adding a new route or endpoint with
the `@login_manager.unauthorized_handler` decorator:

``` pre__3_SOs7YT7NaHjnNunEArSM
@login_manager.unauthorized_handler
def unauthorized():
  # do stuff
  return "Sorry you must be logged in to view this page"
```

-   the `@login_manager.unauthorized_handler` decorator ensures that any
    time there is an authorization issue, the `unauthorized()` route is
    called
-   the message in the `return` statement is HTML that is served to
    non-authenticated users. We can replace this with a template that
    users who fail to login see.

### Instructions

**1.**

Use the `@login_manager.unauthorized_handler` decorator to handle access
errors.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Introduction to Authentication with Flask

Logging in a User

Best practices for user authentication using Flask is to make it hard
for someone to use a stolen credential.

To achieve this in Flask use the Flask’s Werkzeug library which has
`generate_password_hash` method to generate a hash, and
`check_password_hash` method to compare login input with the value
returned from the `check_password_hash` method.

Our login code will check whether the value passed in is the same as the
hardcoded user we are using to emulate a database.

We create a `User` class to represent a user. This object takes
advantage of `UserMixin` (Mixins are prepackaged code of common code
needs). In this case we use `UserMixin` because it allows us to take
advantage of common user account functions without having to write it
all ourselves from scratch.

The code below is the logic we use to log a user in if their password is
correct.

``` pre__3_SOs7YT7NaHjnNunEArSM
@app.route('/', methods=['GET', 'POST'])
def index():
  if flask.request.method == 'GET':
    return '''
    <p>Your credentials:
    username: TheCodeLearner
    password: !aehashf0qr324*&#W)*E!
    </p>
               <form action='/' method='POST'>
                <input type='text' name='email' id='email' placeholder='email'/>
                <input type='password' name='password' id='password' placeholder='password'/>
                <input type='submit' name='submit'/>
               </form>
               '''
  email = "TheCodeLearner"
  if flask.request.form['password'] == "!aehashf0qr324*&#W)*E!":
    user = User(email="TheCodeLearner@gmail.com", username="TheCodeLearner",password="!aehashf0qr324*&#W)*E!")
    login_user(user)
    return render_template("logged_in.html", current_user=user )
  return login_manager.unauthorized()
```

Take a look at the second conditional:

``` pre__3_SOs7YT7NaHjnNunEArSM
if flask.request.form['password'] == "!aehashf0qr324*&#W)*E!":
```

Here, we’re checking that the form was submitted with a password that
has the value `"!aehashf0qr324*&#W)*E!"`. If the password matches
`"!aehashf0qr324*&#W)*E!"` exactly, then we can create a new `User`
instance with the properties specified above and save the object to
`user`. We then use the `login_user(user)` to load the newly created
`User` instance. Once logged in, we can load the proper page using
`render_template("logged_in.html", current_user=user)`. If the password
isn’t correct, we return `login_manager.unauthorized()`.

### Instructions

**1.**

Write the code so that the user is logged in when the password check
succeeds.

Inside the conditional that checks if the password matches
`"!aehashf0qr324*&#W)*E!"` and under the `user` instance:

1.  Log in the `user` using the `login_user()` function.
2.  Return the result of calling `render_template()` with the page
    `"logged_in.html"`, and setting `current_user` as `user`.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Introduction to Authentication with Flask

Show Logged in user

In the previous exercise, we were able to write the login code. Now in
this section, we will show the information related to the logged-in
user.

Let’s zoom into this code: Notice how we pass in user into the
current_user object. We will be using that current_user object in our
HTML.

``` pre__3_SOs7YT7NaHjnNunEArSM
  user = User(email="TheCodeLearner@gmail.com", username="TheCodeLearner",password="!aehashf0qr324*&#W)*E!")
    login_user(user)
    return render_template("logged_in.html", current_user=user )
  return 'Bad login'
```

Now when a user logs in successfully they are sent to a page showing our
logged-in info. Most likely in our application, we will be serving
dynamic pages of HTML. We can use Jinja templates to render the data
from the backend. To display the user, pass it in from the endpoint and
access that variable in our HTML.

``` pre__3_SOs7YT7NaHjnNunEArSM
<h1>Welcome to Our Home Page</h1>
 
<p>Welcome back {{current_user.username}}</p>
 
<a class="blue pull-left" href="{{ url_for('index') }}">back</a>
```

This will enable our users to see their data when they log in!

### Instructions

**1.**

Use the `login_manager` decorator in our code so that we have a valid
endpoint.

In **logged_in.html**, add a `<p>` element with a Jinja template to
display the logged-in user’s username.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Nice work, now log in with the provided credentials to view the
displayed username.

Checkpoint 3 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Introduction to Authentication with Flask

Logout

You’ve successfully authenticated, Nice. Now only logged in users can
see our zesty recipe! But now that you’re done you don’t want to remain
logged in. Let’s enable the logout feature to protect the recipe.

Flask-login provides us with a `logout_user` method to facilitate this.

``` pre__3_SOs7YT7NaHjnNunEArSM
@app.route("/logout")
@login_required
def logout():
    logout_user()
    return redirect(url_for('index'))
```

Awesome! We have our `logout()` function set up to call `flask-login`‘s
`logout_user()` function to log out the user. Then we redirect the user
to go back to the index page. Let’s implement a logout link in our HTML
to trigger the logout code to run.

in **logged_in.html** update the code with the logout link:

``` pre__3_SOs7YT7NaHjnNunEArSM
<!DOCTYPE>
<head>
</head>
<body>
<a href="{{ url_for('logout') }}">Logout</a>
</body>
```

When a user clicks the logout link, they’ll call the `logout()` function
we just created.

Congrats on learning authentication with Flask!

### Instructions

**1.**

Currently, we’re importing many functions from `flask_login`. We need to
import one more, `logout_user`.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

The logic for logging out a user is already provided, so it’s time to
create the logout link. First, navigate to the **logged_in.html** page.

Inside the HTML page, add an `<a>` element that contains the text
`Logout` and an `href` attribute with the value
`{{ url_for('logout') }}`.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Build Python Web Apps with Flask

Travel Sites

Travel is one of the great pleasures of life.

In this project you will create an application that gives visitors the
ability to create accounts and authenticate in order to post about and
view locations of travel and descriptions about them.

The application begins as a working “Hello World” endpoint built with
Flask and contains a SQLAlchemy database. The third party modules we’ll
use are:

-   Flask SQLAlchemy
-   Flask-Login
-   Flask-WTF

We will use these modules to create our application featuring the
ability for users to create accounts and authenticate in order to post
travel destinations.

### Instructions

Mark the tasks as complete by checking them off

## Setup the database

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

1\.

Our application starts with a few `import`s in **app.py**. A site that
allows users to create and access accounts - needs a database.

The first step is adding `SQLAlchemy` from the `flask_sqlalchemy` module
to our list of imports at the top of **app.py**.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

2\.

Assign a `'SQLALCHEMY_DATABASE_URI'` to the app configuration key
database URI (or path). SQLite uses this as our connection to the Flask
application. A good name for the database file is **my_database.db**

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

3\.

Create an SQLAlchemy object and assign it to a variable called `db` that
binds your database to the application instance `app` in ****app.py****.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

## Create the User Model

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

4\.

To create your database models use the ****models.py**** file in your
application folder. In this project, you need to create a Users and
Posts model. We already wrote the `Post` model for you in the
****models.py**** file, and you will create the rest of the models.

Import `db` from ****app.py**** into our ****models.py**** file and
uncomment the code from the `Posts` model in ****models.py****.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

5\.

Create a User Class with `db.Model` passed in as a subclass.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

6\.

We need to create the properties of our `User`, remove the `pass` and
add in the properties along with their appropriate arguments:

-   `id`
-   `username`
-   `email`
-   `password`
-   `password_hash`

And to our `User` with our posts, add the `posts` property as follows:

``` pre__3_SOs7YT7NaHjnNunEArSM
posts = db.relationship('Post', backref='author', lazy='dynamic')
```

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

## Creating Accounts and Authentication

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

7\.

In order for our users to create an account, we’ve imported two very
important methods from `werkzeug.security`

They are:

-   `generate_password_hash`
-   `check_password_hash`

Locate these imports at the top of **models.py**.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

8\.

Create a `set_password()` method in your `User` class that takes two
parameters : `self` and `password`.

As a class method, the first parameter will always be `self` or an
object representing the class.

The second parameter we’ll name `password`, as it will represent the
password string passed into the method to use the
`generate_password_hash()` method in order to create a unique hash for
the user.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

9\.

Create a `check_password_hash()` method in your `User` class that takes
two parameters : `self` and `password`.

Following the pattern of class methods, the first parameter will be
`self`.

The second parameter will represent the `password` passed into the
method. `check_password_hash()` is the method we use to authenticate in
our Flask application.

Behind the scenes a cryptographic function that compares the decoded
hash string in the database with the value passed into the method. If
there is a match, we return the Python value `True`, if the inputs do
not match `False` is returned.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

## Managing logged in state

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

10\.

One of the important third-party modules that we use is `flask_login`.
We will use `flask_login` to manage access to certain pages on our site,
based on whether or not a user is logged in.

To start we will import `LoginManager` from `flask_login` in our
****app.py**** file.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

11\.

Instantiate `LoginManager` by creating an instance of it and passing
`app` inside of it.

> Note: This login feature isn’t built out yet, so your app will throw
> an exception. Keep following the steps and you will fix this
> exception!

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

12\.

Assign an endpoint to `LoginManager` by using the newly created `login`
object (an instance of `LoginManager`) by passing in a redirect
destination via Flask an endpoint in string format. This will redirect
not logged in users to this page.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

13\.

To round out our `User` model we will want it to inherit `UserMixin`
from `flask_login`, in order to take advantage of those common user
functions.

Import `flask_login`‘s `UserMixin` object in ****models.py**** and pass
`UserMixin` into the `User` class.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

14\.

We need to import our `login` object from ****app.py**** into our
****models.py**** file. We will use the `login` object to create a
method that loads our user into memory on every page we visit.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

15\.

We are going to implement a very crucial user method for loading our
user when navigating from page to page on our site.

The login object we get from `LoginManager` will be used as a Python
keyword, from which we can access its `user_loader()` method and assign
it a User from our database.

This method will run like a decorator so that the `user_loader()` method
from `LoginManager` will always be assigned a valid User from our
database, or the user is not logged in.

Save your code and your app should work again!

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

## Protecting our pages

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

16\.

`flask_login` provides us with several important objects we can use to
provide essential features to our site. Let’s start by importing
`current_user`, `login_user`, `logout_user`, and `login_required` from
`flask_login` into **routes.py**.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

17\.

Now that we have `login_required` imported, we can uncomment the login
portion of our provided code. Locate:

``` pre__3_SOs7YT7NaHjnNunEArSM
#@app.route('/user/<username>',methods=['GET', 'POST'])
#@login_required
#def user(username):
```

And uncomment that entire section. Remember to uncomment all of the
`user` method!

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

## Registering, Logging In, and Logging Out

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

18\.

Our application started with Flask-WTForms which is a third party
library we use to gather user information via python generated forms.
You will see the flask form classes we use in ****forms.py****

We are going to add the rest of the code needed to register and login
new users:

Start at the `def register()` method in **routes.py**

We will begin this method by using the `current_user` object from
`flask_login`. `current_user` has a method attached to this object
called `is_authenticated()`. With dot notation and the python `if`
statement, check if the user is authenticated. If the user is logged in
redirect them to the appropriate logged in landing page. In next task we
will complete our registration code.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

19\.

To complete our `def register()` endpoint:

instantiate an instance of `RegistrationForm` after checking if the user
is authenticated.

`RegistrationForm` is a Flask-WTF form from our **forms.py** file

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

20\.

We will use the Flask Forms’ `validate_on_submit()` method to check if
the input is valid, and subsequently create a valid user and save it in
our database.

To round out this endpoint, add a redirect after the user has been saved
in the database and make sure the **register.html** template renders
when the user lands at the `def register()` endpoint.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

21\.

Now that we have a working registration on our website, we can create
users that are stored in our database. Lets write the code to login to
our pages.

We start at the `def login()` endpoint and implement a redirect to our
`index` endpoint if the `current_user` is authenticated.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

22\.

The next step in getting a working login endpoint is instantiating an
instance of the `LoginForm` object from ****forms.py**** and first
writing code that leverages the forms method to see if the values passed
in are valid. If they are valid, the endpoint continues to the next
phase of logic:

Write code that queries our database for the user, based on the
credentials passed in. If the user is not valid: redirect them the login
endpoint for another attempt.

The next task will complete our login code.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

23\.

We will use the `login_user` object from `flask_login` to login the user
if they pass the password check. The first parameter takes the logged in
user object, while the second parameter takes the form’s `remember_me`
data.

Finally we redirect the user to the landing page as logged in and make
sure the template is accessible at the endpoint.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

24\.

Our application now allows users to sign up and login to the
application. The last step is being able to logout.

`flask_login` provides us with a `logout` object. Call this object in
our logout endpoint to clear the user from memory.

Finally, redirect the user to an appropriate page after logout.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

## Navigating the page

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

25\.

The last step we have to put in place is updating our **base.html** file
so that users see the data from our database and can navigate from page
to page.

Update the **base.html** file with the following code:

``` pre__3_SOs7YT7NaHjnNunEArSM
<html>
    <head>
 
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  background-color: #E8DCD9;
  font-family: cursive;
}
 
.blue{
    color:#187bcd
}
 
.glow {
  font-size: 30px;
  color: blue;
  text-align: center;
  -webkit-animation: glow 1s ease-in-out infinite alternate;
  -moz-animation: glow 1s ease-in-out infinite alternate;
  animation: glow 1s ease-in-out infinite alternate;
}
 
@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
  }
 
  to {
    text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
  }
}
</style>
 
        {% if title %}
        <title>{{ title }} - TriPlanned</title>
        {% else %}
        <title>Welcome to TriPlanned</title>
        {% endif %}
    </head>
    <body>
           <div>
      <center><h3 class="blue">TriPlanned</h3></center>
      <center class="glow">&#127796;</center>
      <a class="blue pull-left" href="{{ url_for('index') }}">Home</a>
      {% if current_user.is_anonymous %}
      <a class="blue pull-right" href="{{ url_for('login') }}">Login</a>
      {% else %}
      <a class="blue pull-right" href="{{ url_for('user', username=current_user.username) }}">Profile</a>
      <a class="blue pull-left" href="{{ url_for('logout') }}">Logout</a>
      {% endif %}
    </div>
        <hr>
        {% with messages = get_flashed_messages() %}
        {% if messages %}
        <ul>
            {% for message in messages %}
 
            {% endfor %}
        </ul>
        {% endif %}
        {% endwith %}
        {% block content %}{% endblock %}
    </body>
</html>
```

### Solution