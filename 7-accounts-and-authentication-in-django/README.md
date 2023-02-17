# Django's Accounts for Admins and Users

What hasn’t Django thought of? Learn how Django lets you create users
and admins and implements a signup and login process.

You’ve set up your site for your users but what about those who need to
maintain the site? You have to think about the super users who need
extra permissions to protect your site and make sure it’s running
smoothly!

Well, Django’s thought about this too and offers you the ability to
create an admin account and access through the `/admin` route. As an
admin, you can perform all CRUD functionalities on your data!

Additionally, to safeguard your site, you might want users to make their
own accounts. Authenticating users gives you the peace of mind that
actual users are interacting with your site.

Let’s see how Django provides these core components for us.

# Learn

Admin and Authentication

What is Authentication? What's Django Admin?

Authentication is used in applications in order to verify who is
attempting to access information from the server. The process of
authenticating a user involves associating an incoming request with a
set of credentials (username, email, password) and comparing them
against what’s on file in the app’s database.

Let’s consider an e-commerce site that we visit frequently and want to
create an account on. When we register an account the first time, we
fill out a form with all of our information (email, username, password,
etc.) and click on a button, “Sign Up”. Once the button is clicked, the
information from the form is captured and sent as a request to the
server. From there, the server checks if we’re a new user and if it
needs to create a new record in the database with our information.

After we’re registered, the next time we visit the site and “Log In”, a
request is sent back to the server to check if a user with the same
information already exists in the database, and if so, grants us
permission to the site.

In this lesson, we’ll learn:

-   How to create a `User` object.
-   How an authenticated user stays authenticated.
-   How to make use of the “superuser” object.
-   How to use the Admin interface.

Django allows us to handle and manage user authentication very
seamlessly by using numerous built-in functions. We also have the option
of accessing the Admin interface by visiting the route: `/admin` in
order to manage all the records in our database.

### Solution

# Learn

Admin and Authentication

Admin Account

In an earlier lesson, we explored one of Django’s most powerful
features, the *admin interface*. The admin interface is a management
tool that gives us control of creating, updating, reading, and deleting
records from our database. This makes it very easy to test our models
and ensure that we’re retrieving or creating data correctly.

In order to access the Admin interface, we must first programmatically
create a superuser. In Django, a *superuser* has the permissions to
freely control data. To create a superuser, we can type the following
command in our terminal:

``` pre__3_SOs7YT7NaHjnNunEArSM
python3 manage.py createsuperuser
```

The shell will prompt us to type in a username, email, and password.
Once completed, we can navigate to the `/admin` route and log in with
the credentials we just used to create our superuser. If we get
redirected to the index page, that means our login was successful!

It’s imperative to not share this information with anyone since the
admin account has complete control of all your records in the database.
In case you forget your admin username you can always reset through the
<a href="https://docs.djangoproject.com/en/3.1/ref/contrib/auth/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">User</code> object</a>.

### Instructions

**1.**

Let’s start by creating a superuser!

In the terminal, type the command to create a superuser. Use the
following credentials:

-   Username: `admin`
-   Email: `admin@vetoffice.com`
-   Password: `admin123`

Once you run the command and create a new superuser, click on “Check
Work” to make sure you added the correct input.

**NOTE**: When entering the password, you will be warned that the
password and username are too similar. Bypass this warning by typing
`y`.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Run the application and navigate to the admin interface. Log in with
your created credentials.

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

Admin and Authentication

Registering Tables in Admin

Now that we have access to the admin interface, let’s explore how we can
use it to interact with our database records.

Consider an application that keeps track of all the books we’ve read.
Within our application, we have a model called `Book` that holds
information about each book (title, author, date of publication, etc).

In order to be able to interact with a database table through the admin
interface, we first need to register the model. Registering and
configuring a model is done by adding the models into the app’s
**admin.py** file.

``` pre__3_SOs7YT7NaHjnNunEArSM
# myapp_root/book_catalog/admin.py
 
from .models import Book
 
admin.site.register(Book)
```

Notice that we’ve first imported the `Book` model. Then we called the <a
href="https://developer.mozilla.org/en-US/docs/Learn/Server-side/Django/Admin_site#registering_models"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">register()</code> method</a>:

``` pre__3_SOs7YT7NaHjnNunEArSM
admin.site.register(Book)
```

After we save our **admin.py** file, the `/admin` route will display our
registered model, `Book`. If we registered more models, they would be
grouped by the installed application.

From the `/admin` page, we can click on the collection of `Books` and
we’ll be directed to a table that shows us all the information and
records held in this database table. Now we’re able to manually create,
update, read, or delete any record using the admin interface!

**Note**: It’s important to remember that the admin interface is not
something to be shared with any user. We wouldn’t want all of our users
to have access to the interface and manipulate records as they wish!

### Instructions

**1.**

Let’s make sure we can interact with our `Owner` and `Patient` models
within the Admin interface!

Start by importing the models `Owner` and `Patient` in
**/vetoffice/admin.py**.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Once imported register both models to the admin interface using the
`register()` method.

Checkpoint 3 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**3.**

In the admin interface, login with the admin user credentials (username:
`admin`, password: `admin123`) and make sure the tables are populated.

Using the admin interface, you can manipulate the model instances using
any CRUD functionality!

Checkpoint 4 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Admin and Authentication

User Objects

We’ve seen how powerful Django’s admin interface is in order to
manipulate records in our database. However, this is not the only way!

In the shell, we can manage our users programmatically using one of the
core objects in Django’s authentication system, the <a
href="https://docs.djangoproject.com/en/3.1/topics/auth/default/#user-objects"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">User</code> object</a>. The object
can be imported from `django.contrib.auth.models` and comes with a
number of helper methods including one to create users, <a
href="https://docs.djangoproject.com/en/3.1/ref/contrib/auth/#django.contrib.auth.models.UserManager.create_user"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.create_user()</code></a>. This
method can take a username, email, and password as arguments:

``` pre__3_SOs7YT7NaHjnNunEArSM
user = User.objects.create_user(username="myusername", email="myemail@crazymail.com", password="mypassword")
```

The `.create_user()` method will automatically create and save the user
to the database. We also gain a security feature because this method
also automatically
<a href="https://en.wikipedia.org/wiki/Cryptographic_hash_function"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">hashes</a> the password so it’s not
stored as a plain string value in the database. Moreover, we can call
the <a
href="https://docs.djangoproject.com/en/3.1/ref/models/instances/#saving-objects"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.save()</code></a> method in order
to save the user object back to the database if we make any further
changes.

Moreover, the `User` object also contains other primary attributes such
as: `first_name`, `last_name`, `email`, `username`, and `password`.
Additionally, we can handle a wide range of tasks from updating a user’s
email address, to changing their password or even deleting a user.

**Note:** When working with the Python shell, if you want to exit at any
time you can type
<span class="kbd">Ctrl</span>+<span class="kbd">Z</span> on Windows,
<span class="kbd">Ctrl</span>+<span class="kbd">D</span> on Mac or type
and run `exit()`.

### Instructions

**1.**

In the terminal, open the Python shell and import the `User` object.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Create a new user object with the following attributes:

-   Username: `"tom100"`
-   Email: `"tom@codecademy.com"`
-   Password: `"codec@demy123"`

Store the user in a variable called `user`. Once created, make sure to
save the user variable in the database.

> Note: If your screen size doesn’t allow for the commands to fit on a
> single line, the tests in this exercise may fail. To ensure that tests
> are working properly, please stretch out the length of the Terminal to
> fit any commands into a single line.

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

Admin and Authentication

Authenticating Users

We know that authenticating a user entails matching credentials sent
from the client against the server’s stored data. If the information
matches, then access will be granted.

The process of authenticating a user is all done on the server-side of
our applications. To be more specific, we can add this logic in a view
function that will accept credentials and make use of the <a
href="https://docs.djangoproject.com/en/3.1/topics/auth/default/#django.contrib.auth.authenticate"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">authenticate()</code> function</a>
to verify a user.

`authenticate()` takes credentials as keyword arguments, with `username`
and `password` for the default case. If the credentials are valid, a
`User` object will be returned, otherwise, a <a
href="https://docs.djangoproject.com/en/3.1/ref/exceptions/#permissiondenied"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">PermissionDenied</code>
exception</a> is raised which returns `None`.

We can capture the fields from a log in form with `request.POST`, which
is a dictionary-like object that lets you access submitted data by key
name. If we have a field for `username`, we can retrieve that value with
`request.POST["username"]`.

Let’s break down how this function would work:

``` pre__3_SOs7YT7NaHjnNunEArSM
from django.contrib.auth import authenticate
 
def login_view(request):
  # Both username and password are captured from the submitted log in form
  username = request.POST["username"]
  password = request.POST["password"]
 
  # Both username and password are passed into the authenticate() method to verify the user
  user = authenticate(request, username=username, password=password)
 
  # If the user is valid, then a user object is returned.
  if user is not None:
    # Log in user and redirect them
    return redirect("home.html")
  else:
    return HttpResponse("Invalid credentials!")
```

In the code above we first import `authenticate` from the `auth` library
provided by Django. We then store the values of our username and
password provided from the log in form with `request.POST` into
variables, `username` and `password` respectively.

Once those values are stored in variables, we can then pass them as
arguments into the `authenticate` function:

``` pre__3_SOs7YT7NaHjnNunEArSM
authenticate(request, username=username, password=password)
```

For best practices, we make use of an `if`/`else` statement to check if
the user was authenticated successfully. This allows us to handle any
exceptions in case an unauthenticated user tries to log in. If the
credentials were valid, and a `User` object is returned, we can log them
in (we’ll look into this in the next lesson) and redirect them to a new
page.

Notice how we’re making use of a handy function provided by Django, <a
href="https://docs.djangoproject.com/en/3.1/topics/http/shortcuts/#redirect"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">redirect()</code></a>. This
function is imported from `django.shortcuts` and allows us to redirect a
user to a specific view by passing in the name of a view.

Otherwise, the `else` code block is executed and sends an
`HttpResponse with the text`“Invalid credentials!”\`.

With just a few lines of code, Django allows us to authenticate users
seamlessly!

### Instructions

**1.**

We’ve provided you with a login method, however, the logic to log in
users is incomplete.

Add the `authenticate()` method with `username` and `password` as
arguments.

Make sure to store the result in a variable called `user`.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Within the mini-browser attempt to log in with the user credentials from
the previous lesson:

-   Username: `tom100`
-   Password: `codec@demy123`

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

Admin and Authentication

Log In

After a user object is created, they can use those credentials to log in
to gain access to the site. In order to log in a user, we can make use
of the `login()` function provided by Django:

``` pre__3_SOs7YT7NaHjnNunEArSM
# views.py
From django.contrib.auth import login
 
def login_view(request):
  # ... Other code
  login(request, user)
```

In order to make use of `login()`, we must first import it from
`django.contrib.auth`. The function takes in a `request` object followed
by a `user` object. If a user is successfully logged in, a *session*
will be created. But what exactly is a session?

In Django, once the user has been logged in to their account, and until
they log out on that device, they are having a session. With Django’s
session framework, sessions are used to abstract the receiving and
sending of <a href="https://en.wikipedia.org/wiki/HTTP_cookie"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">cookies</a>. While data is saved on the
server-side, the session created uses a cookie containing a special
*session id* to identify each browser and its associated session with
the site. This allows us to keep track of the user as they navigate
around the site without constantly needing them to log in.

Using our example from the previous lesson, we can see what the proper
flow is of logging in a user:

``` pre__3_SOs7YT7NaHjnNunEArSM
from django.contrib.auth import authenticate, login
from django.shortcuts import redirect
 
def login_view(request):
  username = request.POST["username"]
  password = request.POST["password"]
 
  user =  authenticate(request, username=username, password=password)
 
  # Check if a user is verified and authenticated
  if user is not None:
    # Use the returned user object in login()
    login(request, user)
 
    # Redirect to home page after logging in
    return redirect("home.html")
  else:
    render(request, "registration/login.html", context)
```

The main difference is that in our `if` statement, we’re now able to
create a session by calling `login()` using `request` and our created
`user` object.

### Instructions

**1.**

Our code block to sign in users is currently incomplete, add the
`login()` function in order to log in a user after they’re
authenticated.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

In the mini-browser, navigate to `account/login` and attempt to log in
with valid credentials:

-   Username: `tom100`
-   Password: `codec@demy123`

Notice that `tom100` is displayed in the browser! Look over the `home()`
view function to see what change was needed to make this display happen.

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

Admin and Authentication

Login Mixin and Decorator

We have looked at how to implement the logic to authorize and log in
users to give them access to our site. But, the truth is Django actually
handles a lot of this logic for us! That’s right, we took the hard route
implementing that logic ourselves. Now, let’s take the easy route by
getting acquainted with Django’s “batteries included” means of
authenticating and *authorizing* users to access specific pages.
Introducing *mixins*, a type of class that is used to “mix in” extra
properties and methods into another class. One mixin that Django
provides is the `LoginRequiredMixin`.

In order to use the `LoginRequiredMixin` we need to import it from
`django.contrib.auth.mixins`:

``` pre__3_SOs7YT7NaHjnNunEArSM
# views.py
from django.contrib.auth.mixins import LoginRequiredMixin
```

When using class-based views, we can pass a mixin as an argument. It’s
important to note that mixins are called in order from left to right so
we’ll want to add the login mixin before the view:

``` pre__3_SOs7YT7NaHjnNunEArSM
# views.py
class SomeView(LoginRequiredMixin, ListView):
  model = ModelExample
```

By implementing the `LoginRequiredMixin`, Django takes care of the whole
process of authenticating users and making sure they’re verified before
rendering a specific page.

Aside from the mixin, Django also provides us with *decorators*. A
decorator is a function that takes another function and extends the
behavior of the latter function without explicitly modifying it. In
order to use it, we must first import it into our file and add the line
`@login_required` on top of the function we want to extend:

``` pre__3_SOs7YT7NaHjnNunEArSM
# views.py
from django.contrib.auth.decorators import login_required
 
@login_required
def profile(request):
  return render(request, "app/profile.html", name="profile")
```

Using the decorator, we’re able to deny access to a view if the user is
not logged in. With just one line, Django is able to take care of all
the logic required to deny/allow access to specific pages!

Both the login mixin and decorator do roughly the same thing. The main
difference lies in the syntax and implementation — mixins are used for
classes, while decorators are used for functions.

### Instructions

**1.**

In its current state, any user can navigate through the site without
logging in.

Let’s change that by first importing the `login_required` decorator at
the top of **views.py**

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Add the `login_required` decorator to the `home()` view function.

Once implemented, attempt to navigate through the home page, you should
now be required to log in to access it.

Checkpoint 3 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**3.**

Let’s add a little more security and make use of the
`LoginRequiredMixin`. Start by importing the mixin at the top of your
**views.py** file.

Checkpoint 4 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**4.**

Now we can make use of the `LoginRequiredMixin`!

In each of your class-based views, add the mixin as the first argument.

Checkpoint 5 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**5.**

Now when you try to view any of the pages, you’ll need to log in.

Log in with the credentials to view the pages again:

-   Username: `tom100`
-   Password: `codec@demy123`

Checkpoint 6 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Admin and Authentication

Login Mixin and Decorator

We have looked at how to implement the logic to authorize and log in
users to give them access to our site. But, the truth is Django actually
handles a lot of this logic for us! That’s right, we took the hard route
implementing that logic ourselves. Now, let’s take the easy route by
getting acquainted with Django’s “batteries included” means of
authenticating and *authorizing* users to access specific pages.
Introducing *mixins*, a type of class that is used to “mix in” extra
properties and methods into another class. One mixin that Django
provides is the `LoginRequiredMixin`.

In order to use the `LoginRequiredMixin` we need to import it from
`django.contrib.auth.mixins`:

``` pre__3_SOs7YT7NaHjnNunEArSM
# views.py
from django.contrib.auth.mixins import LoginRequiredMixin
```

When using class-based views, we can pass a mixin as an argument. It’s
important to note that mixins are called in order from left to right so
we’ll want to add the login mixin before the view:

``` pre__3_SOs7YT7NaHjnNunEArSM
# views.py
class SomeView(LoginRequiredMixin, ListView):
  model = ModelExample
```

By implementing the `LoginRequiredMixin`, Django takes care of the whole
process of authenticating users and making sure they’re verified before
rendering a specific page.

Aside from the mixin, Django also provides us with *decorators*. A
decorator is a function that takes another function and extends the
behavior of the latter function without explicitly modifying it. In
order to use it, we must first import it into our file and add the line
`@login_required` on top of the function we want to extend:

``` pre__3_SOs7YT7NaHjnNunEArSM
# views.py
from django.contrib.auth.decorators import login_required
 
@login_required
def profile(request):
  return render(request, "app/profile.html", name="profile")
```

Using the decorator, we’re able to deny access to a view if the user is
not logged in. With just one line, Django is able to take care of all
the logic required to deny/allow access to specific pages!

Both the login mixin and decorator do roughly the same thing. The main
difference lies in the syntax and implementation — mixins are used for
classes, while decorators are used for functions.

### Instructions

**1.**

In its current state, any user can navigate through the site without
logging in.

Let’s change that by first importing the `login_required` decorator at
the top of **views.py**

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Add the `login_required` decorator to the `home()` view function.

Once implemented, attempt to navigate through the home page, you should
now be required to log in to access it.

Checkpoint 3 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**3.**

Let’s add a little more security and make use of the
`LoginRequiredMixin`. Start by importing the mixin at the top of your
**views.py** file.

Checkpoint 4 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**4.**

Now we can make use of the `LoginRequiredMixin`!

In each of your class-based views, add the mixin as the first argument.

Checkpoint 5 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**5.**

Now when you try to view any of the pages, you’ll need to log in.

Log in with the credentials to view the pages again:

-   Username: `tom100`
-   Password: `codec@demy123`

Checkpoint 6 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

### Solution

# Learn

Admin and Authentication

Login Template

We’ve made great progress writing functions to log users in and out of
our site, let’s now explore how to make use of these functions in our
view pages.

By default, the `login()` view function provided by Django will try to
render the **registration/login.html** template. So the basic
configuration would be creating a folder named **registration/** and
placing a **login.html** template inside:

``` pre__3_SOs7YT7NaHjnNunEArSM
<!-- registration/login.html -->
 
{% block title %}Login{% endblock %}
 
{% block content %}
  <h2>Login</h2>
    <form method="post">
      {% csrf_token %}
      <table>
        {{ form.as_p }}
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" value="Submit"></td>
        </tr>                
      </table>
    </form>
{% endblock %}
```

In the code above, we’re making sure that our form sends a `POST`
request to the server. The value of the `form` template variable will be
provided by the `login()` view which allows the form’s fields and their
attributes to be unpacked into HTML markup. We also use `form.as_p` in
order to wrap all the elements of our form in HTML `<p>` tags. By using
`form.as_p` we can avoid writing a loop in the template to explicitly
add HTML to surround each title and field. Django is able to know what
fields are required to create or log in a user and automatically renders
these fields for us. Not only that, but we also are provided with
validation errors in case a user logs in with invalid credentials!

For more rendering options using the `form` template, feel free to take
a look at the main <a
href="https://docs.djangoproject.com/en/3.1/topics/forms/#working-with-form-templates"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a>.

### Instructions

**1.**

Let’s see how the fields are automatically rendered for us using
Django’s built-in methods.

Add the `form.as_p` method within **registration/login.html**.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

In the mini-browser, you’re already on the `/account/login` page.
Attempt to log in with invalid credentials to see the warnings rendered
on the page.

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

Admin and Authentication

Sign Up Template and View

Now that we can log users in and out, let’s see how we can register new
users using a signup form. A straightforward way of creating a signup
page is by using `UserCreationForm` and the `CreateView` class-based
view which are both provided by Django.

Here’s how a sign up class-based view could look like:

``` pre__3_SOs7YT7NaHjnNunEArSM
# views.py
from django.contrib.auth.forms import UserCreationForm
from django.urls import reverse_lazy
 
class SignUp(CreateView):
  form_class = UserCreationForm
  success_url = reverse_lazy("login")
  template_name = "registration/signup.html"
```

Our `SignUp` class is using a `CreateView` class, in which we can
specify what information to include.

-   The first thing we’ll set is the `form_class` as a
    `UserCreationForm` which will generate the necessary fields for us
    (username and password).
    -   The `UserCreationForm` was imported from
        `django.contrib.auth.forms`
-   Afterward, we use the `success_url` attribute to assign a URL to
    redirect the signed up user
    -   We use the <a
        href="https://docs.djangoproject.com/en/3.1/ref/urlresolvers/#reverse-lazy"
        class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
        target="_blank" rel="noopener"><code
        class="code__2rdF32qjRVp7mMVBHuPwDS">reverse_lazy()</code> method</a>
        to generate a full URL from a name.
    -   We set the successful redirect to go to `"login"` path since we
        still want a user to login.
-   Lastly, we’ll assign `"registration/signup.html"` to `template_name`
    so we can render that specific template.

Having set up our view class, we need to add the view into **urls.py**.
Remember to call `.as_view()` whenever you work with class-based views:

``` pre__3_SOs7YT7NaHjnNunEArSM
# urls.py
 
path("signup/", views.SignUp.as_view(), name="signup"),
```

Since your signup template is making use of the `form.as_p` function,
whenever a user tries to register with invalid credentials Django is
versatile enough to provide any warnings or validation errors
automatically!

We can apply similar authentication views into our login and logout
process as well! For more information on these views, refer to the <a
href="https://docs.djangoproject.com/en/3.1/topics/auth/default/#all-authentication-views"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a>.

### Instructions

**1.**

Let’s allow new users to register to our app!

We’ve helped import the forms, the `reverse_lazy()` function, and
provided you with a `SignUp` class-based view. But it’s missing a few
key pieces.

-   Add the `form_class` attribute and assign it to `UserCreationForm`.
-   Add a `success_url` attribute and assign it to
    `reverse_lazy("login")`.
-   Add a `template_name` attribute and assign it to
    `"registration/signup.html"`.

Checkpoint 2 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**2.**

Let’s add a new path for users to signup.

-   Create a new path in **urls.py**, set the path name to `"signup/"`.
-   Add your newly created `SignUp` class-based view as the second
    argument.
-   Assign `"signup"` to the `name` attribute.

Checkpoint 3 Passed

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

**3.**

Refresh your mini-browser and navigate to `/signup` in order to see your
new signup form.

Attempt to sign up a new user and then log in with the new credentials.

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

Admin and Authentication

Review

Great job! We’ve covered a lot throughout this lesson! So far, we’ve
taken a look at a number of built-in functions that Django provides for
us straight out of the box. Not only that but we saw how powerful the
admin interface can be in order to manage our users and any other
records stored in our database. Let’s rehash once again what we’ve
learned so far:

-   The admin interface is accessible through the route `/admin`

-   We need to register our models to our **admin.py** file to access
    them as admin.

-   We can create a new superuser in the terminal using the
    `createsuperuser` command.

-   The `User` object can be used in order to create new users
    programmatically through the shell.

-   Authenticating users can be done by passing in a `User` object into
    the built-in function, `authenticate()`.

-   Django provides an easier and built-in way to login and authenticate
    users using mixins and decorators.

-   Logging out a user can be done by calling the `logout()` function.
    This will terminate the session created when the user logged in, and
    successfully log them out.

-   With the `UserCreationForm` function, we can automatically create a
    form that takes in a `username` and a `password` and pass that form
    into a view page in order to register new users.

Keep in mind that although we’ve looked into various functions and
utilities that Django comes with straight out of the box, there’s still
plenty of other methods to explore. If you’re curious about what other
functions are available, refer to
<a href="https://docs.djangoproject.com/en/3.1/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Django’s documentation</a>!

### Solution

# Learn

Build Python Web Apps with Django

Weekly Dessert

It’s time to choose some delicious desserts!

We’ve been hired by a school to work on an application for their
cafeteria’s dessert options. The principal of the school wants us to
build a voting app that allows students to choose their favorite dessert
for the upcoming week.

We have the skeleton of the application built but we want to add a layer
of authentication so that only authenticated users can vote for dessert
options, and only one admin can manage the app’s data.

We’ll end up working with the admin interface as well as implementing
the whole authentication flow and adding a security layer to our paths.

### Instructions

Mark the tasks as complete by checking them off

## Admin Interface

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

1\.

So far, we have created the main skeleton of our weekly dessert
application. In the code editor, we’ll find our **urls.py** file, along
with our view functions in **views.py** and our login and signup
templates.

Take a few minutes to explore the code provided. Take a look at the
models under the **models/** directory to see the structure of the
objects we’ll be working with. And feel free to open other files to
understand how the application is built and what are some of the missing
parts.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

2\.

Let’s provide our client with a user to create, read, update and delete
data in the Django admin.

Within the Python terminal, create a `superuser` with your own
credentials. Make sure to remember these credentials since you’ll be
using them in the next following steps.

**NOTE**: When entering the password, you might be warned that the
password and username are too similar. Bypass this warning by typing
`y`.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

3\.

Now that we have a superuser created, let’s navigate into the admin
interface and log in.

In the mini-browser, go to `/admin` and type in the admin credentials.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

4\.

Through the admin interface, we’re able to see our authentication and
authorization table. But we’re missing our other table holding our two
other models.

Let’s start by importing the models `Week` and `Choice` in **admin.py**.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

5\.

For the models to appear on the `/admin` page, we still need to register
them.

Using the `register()` function, register both the `Week` and `Choice`
models in our **admin.py** file.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

6\.

Let’s test that the models are registered. In the admin interface,
create a new dessert from the `Choice` model.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

## Login and Registration

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

7\.

We’re able to use the admin interface to handle our data and users, but
let’s practice creating users from the Python shell.

Start by opening the Python shell and importing the `User` model.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

8\.

Create a new user object with your credentials (username, email, and
password), and store it in a variable called `user`. Make sure to save
`user`.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

9\.

We’ve learned what happens behind the scenes when a user logs in and how
to authenticate existing users. Instead of writing all the logic for
this, let’s take advantage of Django’s built-in authentication views.

In **urls.py** add the path `"account/"` followed by
`include("django.contrib.auth.urls")` as the second argument. Remember
to add a `,` after the `path()`!

Note that we don’t need to add the `name` attribute since Django’s
built-in auth views will provide the `name` attribute for us.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

10\.

If we navigate to `account/login` our login form will be missing! This
is because our form fields are not being rendered in our login template.

In **templates/registration/login.html**. Let’s add some form rendering
tags to display a `username` and `password` field.

Once rendered, attempt to log in!

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

11\.

Now let’s allow other users to sign up. In **views.py**, create a new
class-based view called `SignUp`.

Add the generic `CreateView` as the argument and give it the following
properties:

-   Assign the `UserCreationForm` to the `form_class` property
-   Add the right property to redirect users to `reverse_lazy("login")`
    upon a successful registration.
-   Set the template to `"registration/signup.html"`.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

12\.

We need a path for users to access the sign up page.

In **urls.py** add the path, `"signup/"`, using our class-based view as
the second argument. Let’s also assign `"signup"` to the `name`
attribute. Remember to add the `,` after the `path()` element!

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

13\.

Let’s attempt to sign up a new user. Navigate to `/signup` to make sure
our form is being rendered. Try out the form by signing up a new user.

Once redirected to the login page, log in with the newly created user.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

## Logging Out

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

14\.

We can now register new users, and log them in. However, we need the
ability to log out as well.

In **views.py**, import the function `logout` function.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

15\.

In `views.py`, create a logout view function called `logout_request` and
make use of Django’s built-in function `logout`.

Once a user logs out, redirect them to the `"index"` page.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

16\.

Let’s add the `logout` path. In **urls.py**, create a new path,
`"logout/"`, and use our newly created view for the second argument.
Let’s also assign `"logout"` to the `name` attribute. Remember to add
the `,` after the `path()` element.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

17\.

Let’s add a logout button in our header for users to log out.

In **header.html** create an anchor tag with the class name
`"logout-button"`.

Using Django’s templating language, add the `href` attribute and direct
the user to the `logout` view. Add text that also says `Log Out`.

Save the page and in the app, vote for a new dessert. After landing on
the results page, click on the “Log Out” link to make sure logging out
can happen successfully.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

## Securing Your Paths

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

18\.

We have successfully added authentication to our app! However, our paths
are not entirely secure.

Currently, anyone can navigate to our app and vote for desserts. But we
only want to allow authenticated users to do so.

Let’s secure our home page and voting page with the `login_required`
decorator.

Start by importing the `login_required` decorator in **views.py** from
`django.contrib.auth.decorators`.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

19\.

Remember decorators are used for view functions.

Add your decorator to the `index` and the `vote` views.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

20\.

The home page and voting page are now secured, let’s secure our other
paths using a mixin.

Still in **views.py**, import the `LoginRequiredMixin`.

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

21\.

Mixins are used for class-based views. Add the `LoginRequiredMixin` to
your `DetailsView` and `ResultsView` to ensure a user is logged in in
order to access those pages.

Once implemented our app should be secured and only authenticated and
logged in users will be allowed to use it!

Stuck? Get a hint

<img
src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdib3g9IjAgMCAyNCAyNCIgZmlsbD0iY3VycmVudENvbG9yIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZXhwYW5zaW9uSWNvbl9fM0VBbHViUFI2VDMtTVBhZVZFd3lqbCBnYW11dC1zZDZrdTUtU3ZnIGVvbDJ6dm0wIj48dGl0bGU+QXJyb3cgQ2hldnJvbiBEb3duIEljb248L3RpdGxlPjxwYXRoIGQ9Ik0yMy4yNSA3LjMxMUwxMi41MyAxOC4wM2EuNzQ5Ljc0OSAwIDAxLTEuMDYgMEwuNzUgNy4zMTEiIGZpbGw9Im5vbmUiIHN0cm9rZT0iY3VycmVudENvbG9yIiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIHN0cm9rZS13aWR0aD0iMS41Ij48L3BhdGg+PC9zdmc+"
class="expansionIcon__3EAlubPR6T3-MPaeVEwyjl gamut-sd6ku5-Svg eol2zvm0" />

## Review

<img
src="data:image/svg+xml;base64,PHN2ZyB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiByb2xlPSJpbWciIGFyaWEtaGlkZGVuPSJ0cnVlIiBjbGFzcz0iZ2FtdXQtc2Q2a3U1LVN2ZyBlb2wyenZtMCI+PHRpdGxlPkNoZWNrIEljb248L3RpdGxlPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMjMuNTUyIDMuOTNhMS41IDEuNSAwIDAxLjAxNyAyLjEyMmwtMTMuNzc4IDE0YTEuNSAxLjUgMCAwMS0yLjA1Ni4wNzdMLjUxMyAxMy44MTNhMS41IDEuNSAwIDAxMS45NzQtMi4yNThsNi4xNTggNS4zODVMMjEuNDMxIDMuOTQ4YTEuNSAxLjUgMCAwMTIuMTIxLS4wMTd6IiBmaWxsPSJjdXJyZW50Q29sb3IiPjwvcGF0aD48L3N2Zz4="
class="gamut-sd6ku5-Svg eol2zvm0" />

22\.

Great job! Now the student will be able to sign up and vote for their
favorite dessert!

Optionally, you can continue to play around with the code and challenge
yourself.

-   Try experimenting with the rendered
    <a href="https://docs.djangoproject.com/en/3.1/topics/forms/"
    class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
    target="_blank" rel="noopener"><code
    class="code__2rdF32qjRVp7mMVBHuPwDS">forms</code></a> and rendering
    the user fields with different tags.
-   Use the admin interface to add another option on top of a dessert,
    perhaps a Friday snack?
-   Add a few more fields, such as `age` or `year`, within your `SignUp`
    view in order for a new user to sign up.

### Solution
