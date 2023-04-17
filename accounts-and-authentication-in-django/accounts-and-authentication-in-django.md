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

# Admin and Authentication

## What is Authentication? What's Django Admin?

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



## Admin Account

In an earlier lesson, we explored one of Django’s most powerful
features, the *admin interface*. The admin interface is a management
tool that gives us control of creating, updating, reading, and deleting
records from our database. This makes it very easy to test our models
and ensure that we’re retrieving or creating data correctly.

In order to access the Admin interface, we must first programmatically
create a superuser. In Django, a *superuser* has the permissions to
freely control data. To create a superuser, we can type the following
command in our terminal:

```python
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






**2.**

Run the application and navigate to the admin interface. Log in with
your created credentials.








## Registering Tables in Admin

Now that we have access to the admin interface, let’s explore how we can
use it to interact with our database records.

Consider an application that keeps track of all the books we’ve read.
Within our application, we have a model called `Book` that holds
information about each book (title, author, date of publication, etc).

In order to be able to interact with a database table through the admin
interface, we first need to register the model. Registering and
configuring a model is done by adding the models into the app’s
**admin.py** file.

```python
# myapp_root/book_catalog/admin.py
 
from .models import Book
 
admin.site.register(Book)
```

Notice that we’ve first imported the `Book` model. Then we called the <a
href="https://developer.mozilla.org/en-US/docs/Learn/Server-side/Django/Admin_site#registering_models"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">register()</code> method</a>:

```python
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



**1.**

Let’s make sure we can interact with our `Owner` and `Patient` models
within the Admin interface!

Start by importing the models `Owner` and `Patient` in
**/vetoffice/admin.py**.






**2.**

Once imported register both models to the admin interface using the
`register()` method.






**3.**

In the admin interface, login with the admin user credentials (username:
`admin`, password: `admin123`) and make sure the tables are populated.

Using the admin interface, you can manipulate the model instances using
any CRUD functionality!





## User Objects

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

```python
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



**1.**

In the terminal, open the Python shell and import the `User` object.






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








## Authenticating Users

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

```python
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

```python
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



**1.**

We’ve provided you with a login method, however, the logic to log in
users is incomplete.

Add the `authenticate()` method with `username` and `password` as
arguments.

Make sure to store the result in a variable called `user`.






**2.**

Within the mini-browser attempt to log in with the user credentials from
the previous lesson:

-   Username: `tom100`
-   Password: `codec@demy123`








## Log In

After a user object is created, they can use those credentials to log in
to gain access to the site. In order to log in a user, we can make use
of the `login()` function provided by Django:

```python
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

```python
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



**1.**

Our code block to sign in users is currently incomplete, add the
`login()` function in order to log in a user after they’re
authenticated.






**2.**

In the mini-browser, navigate to `account/login` and attempt to log in
with valid credentials:

-   Username: `tom100`
-   Password: `codec@demy123`

Notice that `tom100` is displayed in the browser! Look over the `home()`
view function to see what change was needed to make this display happen.








## Login Mixin and Decorator

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

```python
# views.py
from django.contrib.auth.mixins import LoginRequiredMixin
```

When using class-based views, we can pass a mixin as an argument. It’s
important to note that mixins are called in order from left to right so
we’ll want to add the login mixin before the view:

```python
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

```python
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



**1.**

In its current state, any user can navigate through the site without
logging in.

Let’s change that by first importing the `login_required` decorator at
the top of **views.py**






**2.**

Add the `login_required` decorator to the `home()` view function.

Once implemented, attempt to navigate through the home page, you should
now be required to log in to access it.






**3.**

Let’s add a little more security and make use of the
`LoginRequiredMixin`. Start by importing the mixin at the top of your
**views.py** file.






**4.**

Now we can make use of the `LoginRequiredMixin`!

In each of your class-based views, add the mixin as the first argument.






**5.**

Now when you try to view any of the pages, you’ll need to log in.

Log in with the credentials to view the pages again:

-   Username: `tom100`
-   Password: `codec@demy123`





## Logging Out

Django’s built-in functions make logging out a user a painless process.

The `logout()` function takes in a `request`and returns `None`:

```python
# views.py
 
def logout_view(request):
  # ... Other logic
  logout(request)
  return redirect("home")
```

By calling the `logout()` function we completely delete the session data
that was associated with the logged in user. It is important to note
that calling the`logout()` function doesn’t throw any errors if the user
is not logged in. Once the `logout` function is called, we can then
redirect the user to a different view page by using <a
href="https://docs.djangoproject.com/en/3.1/topics/http/shortcuts/#redirect"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">redirect()</code></a>.

We can then add a new path to logout our users in our app’s **urls.py**:

```python
urlpatterns = [
  path("/logout", logout, name="logout")
]
```

Once a user is directed to that route, they will be logged out and their
session will be destroyed.



**1.**

In **views.py**, let’s start by importing the `logout` function from
`django.contrib.auth`.



**2.**

We’ve learned how to log in users, let’s allow them log out!

Create a new logout view function, `logout_view()`.

Inside the function block, make a call to `logout(request)`.

Once a user logs out, let’s use the `redirect()` function to send the
user to the `"home"` template!






**3.**

Now we need to access the logout view within our home page.

-   Add the created `logout_view` function into your **urls.py** file.
-   Set the path to `"logout/"`.
-   Assign `"logout"` to the `name` attribute.






**4.**

Attempt to log in and then log out within the mini-browser.

Here are the credentials:

-   Username: `tom100`
-   Password: `codec@demy123`





## Login Template

We’ve made great progress writing functions to log users in and out of
our site, let’s now explore how to make use of these functions in our
view pages.

By default, the `login()` view function provided by Django will try to
render the **registration/login.html** template. So the basic
configuration would be creating a folder named **registration/** and
placing a **login.html** template inside:

```python
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



**1.**

Let’s see how the fields are automatically rendered for us using
Django’s built-in methods.

Add the `form.as_p` method within **registration/login.html**.






**2.**

In the mini-browser, you’re already on the `/account/login` page.
Attempt to log in with invalid credentials to see the warnings rendered
on the page.








## Sign Up Template and View

Now that we can log users in and out, let’s see how we can register new
users using a signup form. A straightforward way of creating a signup
page is by using `UserCreationForm` and the `CreateView` class-based
view which are both provided by Django.

Here’s how a sign up class-based view could look like:

```python
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

```python
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






**2.**

Let’s add a new path for users to signup.

-   Create a new path in **urls.py**, set the path name to `"signup/"`.
-   Add your newly created `SignUp` class-based view as the second
    argument.
-   Assign `"signup"` to the `name` attribute.






**3.**

Refresh your mini-browser and navigate to `/signup` in order to see your
new signup form.

Attempt to sign up a new user and then log in with the new credentials.








## Review

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



# Weekly Dessert



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



Mark the tasks as complete by checking them off

## Admin Interface


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





2\.

Let’s provide our client with a user to create, read, update and delete
data in the Django admin.

Within the Python terminal, create a `superuser` with your own
credentials. Make sure to remember these credentials since you’ll be
using them in the next following steps.

**NOTE**: When entering the password, you might be warned that the
password and username are too similar. Bypass this warning by typing
`y`.





3\.

Now that we have a superuser created, let’s navigate into the admin
interface and log in.

In the mini-browser, go to `/admin` and type in the admin credentials.





4\.

Through the admin interface, we’re able to see our authentication and
authorization table. But we’re missing our other table holding our two
other models.

Let’s start by importing the models `Week` and `Choice` in **admin.py**.





5\.

For the models to appear on the `/admin` page, we still need to register
them.

Using the `register()` function, register both the `Week` and `Choice`
models in our **admin.py** file.





6\.

Let’s test that the models are registered. In the admin interface,
create a new dessert from the `Choice` model.




## Login and Registration


7\.

We’re able to use the admin interface to handle our data and users, but
let’s practice creating users from the Python shell.

Start by opening the Python shell and importing the `User` model.





8\.

Create a new user object with your credentials (username, email, and
password), and store it in a variable called `user`. Make sure to save
`user`.





9\.

We’ve learned what happens behind the scenes when a user logs in and how
to authenticate existing users. Instead of writing all the logic for
this, let’s take advantage of Django’s built-in authentication views.

In **urls.py** add the path `"account/"` followed by
`include("django.contrib.auth.urls")` as the second argument. Remember
to add a `,` after the `path()`!

Note that we don’t need to add the `name` attribute since Django’s
built-in auth views will provide the `name` attribute for us.





10\.

If we navigate to `account/login` our login form will be missing! This
is because our form fields are not being rendered in our login template.

In **templates/registration/login.html**. Let’s add some form rendering
tags to display a `username` and `password` field.

Once rendered, attempt to log in!





11\.

Now let’s allow other users to sign up. In **views.py**, create a new
class-based view called `SignUp`.

Add the generic `CreateView` as the argument and give it the following
properties:

-   Assign the `UserCreationForm` to the `form_class` property
-   Add the right property to redirect users to `reverse_lazy("login")`
    upon a successful registration.
-   Set the template to `"registration/signup.html"`.





12\.

We need a path for users to access the sign up page.

In **urls.py** add the path, `"signup/"`, using our class-based view as
the second argument. Let’s also assign `"signup"` to the `name`
attribute. Remember to add the `,` after the `path()` element!





13\.

Let’s attempt to sign up a new user. Navigate to `/signup` to make sure
our form is being rendered. Try out the form by signing up a new user.

Once redirected to the login page, log in with the newly created user.




## Logging Out


14\.

We can now register new users, and log them in. However, we need the
ability to log out as well.

In **views.py**, import the function `logout` function.





15\.

In `views.py`, create a logout view function called `logout_request` and
make use of Django’s built-in function `logout`.

Once a user logs out, redirect them to the `"index"` page.





16\.

Let’s add the `logout` path. In **urls.py**, create a new path,
`"logout/"`, and use our newly created view for the second argument.
Let’s also assign `"logout"` to the `name` attribute. Remember to add
the `,` after the `path()` element.





17\.

Let’s add a logout button in our header for users to log out.

In **header.html** create an anchor tag with the class name
`"logout-button"`.

Using Django’s templating language, add the `href` attribute and direct
the user to the `logout` view. Add text that also says `Log Out`.

Save the page and in the app, vote for a new dessert. After landing on
the results page, click on the “Log Out” link to make sure logging out
can happen successfully.




## Securing Your Paths


18\.

We have successfully added authentication to our app! However, our paths
are not entirely secure.

Currently, anyone can navigate to our app and vote for desserts. But we
only want to allow authenticated users to do so.

Let’s secure our home page and voting page with the `login_required`
decorator.

Start by importing the `login_required` decorator in **views.py** from
`django.contrib.auth.decorators`.





19\.

Remember decorators are used for view functions.

Add your decorator to the `index` and the `vote` views.





20\.

The home page and voting page are now secured, let’s secure our other
paths using a mixin.

Still in **views.py**, import the `LoginRequiredMixin`.





21\.

Mixins are used for class-based views. Add the `LoginRequiredMixin` to
your `DetailsView` and `ResultsView` to ensure a user is logged in in
order to access those pages.

Once implemented our app should be secured and only authenticated and
logged in users will be allowed to use it!




## Review


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



[Django Project Weekly Dessert](https://www.youtube.com/watch?v=4Abe5jCjgh0)

```bash
#!/bin/bash
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
echo "${red}>>> Initiate the Django project ...${reset}"
project_name='cafeteria'
app_name="weeklydessert"
templates_path="$app_name"\/templates
echo "${green}>>> Remove project directory if exists${reset}"
rm -rf $project_name
rm -rf env
echo "${green}>>> Creating virtualenv${reset}"
echo "${green}>>> venv is created${reset}"
python3 -m venv env
echo "${green}>>> Activate the venv${reset}"
source env/bin/activate
echo "${green}>>> Upgrading pip version${reset}"
pip install -U  --upgrade pip
echo "${green}>>> Installing Django${reset}"
pip install django
echo "${green}>>> Creating the project '$project_name' ${reset}"
django-admin startproject $project_name && cd $project_name
echo "${green}>>> Creating the app '$app_name' ${reset}"
python manage.py startapp $app_name
echo "${red}>>> Creating the main skeleton of the $app_name application ...${reset}"
echo "${green}>>> Adding app to settings.py${reset}"
sed -i '' "s,INSTALLED_APPS = \[,INSTALLED_APPS = \[\n    \'$app_name\'\,,g"  $project_name/settings.py
echo "${green}>>> Applying the locale-dictated format to settings.py${reset}"
sed -i '' "s,USE_I18N = True,USE_I18N = True\n\nUSE_L10N = True,g"  $project_name/settings.py
echo "${green}>>> Disabling auto-incrementing primary key in settings.py${reset}"
sed -i '' '123,$d' $project_name/settings.py
echo "${green}>>> Adding Week and Choice models in models.py${reset}"
cat << 'EOF' > $app_name/models.py
import datetime
from django.utils import timezone
from django.db import models

class Week(models.Model):
  pub_date = models.DateTimeField("date published")

  # When creating a new instance, we want to inform students of the menu for the following week starting on Monday:
  def start_of_week(self):
		# Using the module `datetime`, we can take todays date:
    today = datetime.date.today()
		# Subtract the number of days which already passed this week (this gets you 'last' monday).
		# And add one week
    start_of_week = today + datetime.timedelta(days=-today.weekday(), weeks=1)
    return start_of_week

  def was_published_recently(self):
    return self.pub_date >= timezone.now() - datetime.timedelta(days=1)


class Choice(models.Model):
  week = models.ForeignKey(Week, on_delete=models.CASCADE)
  dessert_choice = models.CharField(max_length=200)
  dessert_details = models.CharField(max_length=200)
  votes = models.IntegerField(default=0)
  def __str__(self):
    return self.dessert_choice
EOF
echo "${green}>>> Editing admin.py${reset}"
cat << 'EOF' > $app_name/admin.py
from django.contrib import admin
# Import your Week and Choice models below:

# Register your Week and Choice models below:


EOF
echo "${green}>>> Creating index, details, results and vote in views.py${reset}"
cat << 'EOF' > $app_name/views.py
from django.shortcuts import render, redirect
from django.http import Http404
from django.urls import reverse
from .models import Week, Choice
# import the login_required decorator and the LoginRequiredMixin mixin below


# Import the logout function from django.contrib.auth below

from django.urls import reverse_lazy
from django.contrib.auth.forms import UserCreationForm
from django.views.generic import ListView, DetailView
from django.views.generic.edit import CreateView

# Add login_required decorator:
def index(request):
  latest_week_poll = Week.objects.get(pk=1)
  context = {
    "name": request.user,
    "week_poll": latest_week_poll
  }
  return render(request, "index.html", context)

# Create your class-based Signup view below:

class DetailsView(DetailView):
  model = Week
  template_name = "detail.html"

class ResultsView(DetailView):
  model = Week
  template_name = "results.html"

# Create your logout function, logout_request, below:

# Add login_required decorator:
def vote(request, week_id):
  try:
    week = Week.objects.get(pk=week_id)
    selected_choice = week.choice_set.get(pk=request.POST["choice"])
  except Week.DoesNotExist:
    raise Http404("Poll for said week does not exists")
  else:
    selected_choice.votes += 1
    selected_choice.save()
    return redirect("results", week_id)
EOF
echo "${green}>>> Adding path to home, details, results and vote links in app urls.py${reset}"
cat << 'EOF' > $app_name/urls.py
from django.urls import path, include

from . import views

urlpatterns = [
	path("", views.index, name="index"),
	# Add a path to your auth links below:
  
	# Add a path to your signup request below:

	# Add a path to your logout request below:

	path("polls/<int:pk>/", views.DetailsView.as_view(), name="detail"),
	path("polls/<int:pk>/results/", views.ResultsView.as_view(), name="results"),
	path("polls/<int:week_id>/vote/", views.vote, name="vote"),
]
EOF
echo "${green}>>> Adding app paths to project urls.py${reset}"
sed -i ''  "s,from django.urls import,from django.urls import include\,,g; s,urlpatterns = \[,urlpatterns = \[\n    path\(\'\'\, include\(\'$app_name\.urls\'\)\)\,,g" $project_name/urls.py
echo "${red}>>> Creating templates${reset}"
echo "${green}>>> Creating templates directory${reset}"
mkdir -p $templates_path
echo "${green}>>> Creating templates/registration directory${reset}"
mkdir -p $templates_path/registration
echo "${green}>>> Creating header.html${reset}"
cat << 'EOF' > $templates_path/header.html
{% load static %}

<link rel="stylesheet" type="text/css" href="{% static 'weeklydessert/header.css' %}">

<div class="header">
  <img src="{% static 'weeklydessert/Dessert.png' %}" >
	{% if user.username %}
	  {% comment %} Add your logout link below {% endcomment %}
    
  {% endif %}
  <div class="header-content">
    <h1 class="header-title">Dessert Island</h1>
    {% if user.username %}
    <h4 class="header-greet">Welcome {{ user.username }}!</h4>
    {% endif %}
  </div>
</div>

{% block content%}
{% endblock %}
EOF
echo "${green}>>> Creating index.html${reset}"
cat << 'EOF' > $templates_path/index.html
{% extends "header.html"%}

{% block content %}
{% load static %}
<link rel="stylesheet" type="text/css" href="{% static 'weeklydessert/styles.css' %}">

<div class="vote-block">
  {% if week_poll %}
    <h2>Vote below for the next desert of the week!<h1>
    <a class="poll-link" href="/polls/{{ week_poll.id }}/">Week of: {{ week_poll.start_of_week }}</a>
  {% else %}
    <p>No polls are available.</p>
  {% endif %}
<div>

{% endblock %}
EOF
echo "${green}>>> Creating registration/login.html${reset}"
cat << 'EOF' > $templates_path/registration/login.html
{% extends "header.html" %}

{% block content %}
{% load static %}
<link rel="stylesheet" type="text/css" href="{% static 'weeklydessert/login.css' %}">

<div class="login-form">
<h2>Please login</h2>
  <form class="login" method="post">
      <div>
        {% csrf_token %}
          {% comment %} Add your form rendering tags below {% endcomment %}
          
        <input type="submit" value="Login"/>
      </div>
  </form>
</div>
{% endblock %}
EOF
echo "${green}>>> Creating registration/signup.html${reset}"
cat << 'EOF' > $templates_path/registration/signup.html
{% extends "header.html" %}

{% block content %}
{% load static %}
<link rel="stylesheet" type="text/css" href="{% static 'weeklydessert/signup.css' %}">
<div class="signup-form">
<h2>Sign Up</h2>
	<form class="signup" method="POST">
			<div>
				{% csrf_token %}
				{{ form.as_p }}
				<input type="submit" value="Signup"/>
			</div>
	</form>
</div>
{% endblock %}
EOF
echo "${green}>>> Creating detail.html${reset}"
cat << 'EOF' > $templates_path/detail.html
{% extends "header.html" %}

{% block content %}

{% load static %}
<link rel="stylesheet" type="text/css" href="{% static 'weeklydessert/detail.css' %}">

<h1>Week of: {{ week.start_of_week }}</h1>

{% if error_message %}<p><strong>{{ error_message }}</strong></p>{% endif %}

<form action="{% url 'vote' week.id %}" method="post">
{% csrf_token %}
{% for choice in week.choice_set.all %}
    <input type="radio" name="choice" id="choice{{ forloop.counter }}" value="{{ choice.id }}">
    <label for="choice{{ forloop.counter }}">{{ choice.dessert_choice }}</label><br>
		<p>{{ choice.dessert_details }}</p>
{% endfor %}
<input type="submit" value="Vote">
</form>

{% endblock %}
EOF
echo "${green}>>> Creating results.html${reset}"
cat << 'EOF' > $templates_path/results.html
{% extends "header.html" %}

{% block content %}
<h1>Week of: {{ week.start_of_week }}</h1>

<ul>
{% for choice in week.choice_set.all %}
  <li>{{ choice.dessert_choice }} -- {{ choice.votes }} vote{{ choice.votes|pluralize }}</li>
{% endfor %}
</ul>

<a href="{% url 'detail' week.id %}">Vote again?</a>
<a href="{% url 'index' %}">Home</a>
{% endblock %}
EOF
echo "${red}>>> Creating static${reset}"
echo "${green}>>> Creating static directory${reset}"
mkdir -p $app_name/static/$app_name
echo "${green}>>> Downloading Dessert.png${reset}"
IMAGE_URL="https://raw.githubusercontent.com/catiemo/Weekly-Dessert/main/cafeteria/weeklydessert/static/weeklydessert/Dessert.png"
curl -o "$app_name/static/$app_name/Dessert.png" "$IMAGE_URL"
echo "${green}>>> Creating header.css${reset}"
cat << 'EOF' > $app_name/static/$app_name/header.css
body {
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  display: flex;
  flex-direction: row;
  background-color: #FFF5FF;
  margin-left: 10px;
}

.header-title {
  margin-bottom: 0;
}

.header-content {
  display: flex;
  flex-direction: column;
  margin-left: 30px;
  align-items: center;
  justify-content: center;
}

.header-greet {
  width: 100%;
}

.logout-button {
  position: absolute;
  top: 100px;
  right: 15px;
  display: block;
  width: 80px;
  height: 15px;
  background: #3A10E5;
  padding: 10px;
  text-align: center;
  border-radius: 5px;
  color: white;
  font-weight: bold;
  line-height: 15px;
  text-decoration: none;
}
EOF
echo "${green}>>> Creating style.css${reset}"
cat << 'EOF' > $app_name/static/$app_name/styles.css
body {
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  display: flex;
  flex-direction: row;
  background-color: #FFF5FF;
  margin-left: 10px;
}

.header-title {
  margin-bottom: 0;
}

.header-content {
  display: flex;
  flex-direction: column;
  margin-left: 30px;
  align-items: center;
  justify-content: center;
}

.header-greet {
  width: 100%;
}

.poll-link {
  text-decoration: none;
}

.vote-block {
  margin-left: 20px;
  width: 100%;
}
EOF
echo "${green}>>> Creating login.css${reset}"
cat << 'EOF' > $app_name/static/$app_name/login.css
body {
	font-family: Arial;
}

.login-form {
	display: flex;
	width: 420px;
	flex-direction: column;
	margin: auto;
}

input[type=submit]{
	background-color: #3A10E5;
	color: white;
	padding: 10px 14px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
}

input[type=text],
input[type=password]{
	margin: 10px 0;
	padding: 5px;
	width: 100%;
	border-radius: 4px;
}
EOF
echo "${green}>>> Creating signup.css${reset}"
cat << 'EOF' > $app_name/static/$app_name/signup.css
body {
	font-family: Arial;
}

.signup-form {
	display: flex;
	width: 420px;
	flex-direction: column;
	margin: auto;
}

input[type=submit]{
	background-color: #3A10E5;
	color: white;
	padding: 10px 14px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
}

input[type=text],
input[type=password]{
	margin: 10px 0;
	padding: 5px;
	width: 100%;
	border-radius: 4px;
}
EOF
echo "${green}>>> Creating detail.css${reset}"
cat << 'EOF' > $app_name/static/$app_name/detail.css
body {
  font-family: Arial, Helvetica, sans-serif;
}

input[type=radio] {
	-ms-transform: scale(1.5); /* IE 9 */
	-webkit-transform: scale(1.5); /* Chrome, Safari, Opera */
	transform: scale(1.5);
}

label {
	font-weight: bold;
}

input[type=submit]{
	background-color: #3A10E5;
	color: white;
	padding: 10px 14px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 25%;
	font-size: 18px;
}
EOF
# python3 manage.py createsuperuser
# admin
# admin@codecademy.com
# admin123
# admin123
# y
echo "${red}>>> Adding a layer of authentication ...${reset}"
echo "${red}>>> Login${reset}"
echo "${green}>>> Importing the models Week and Choice in admin.py${reset}"
sed -i '' '3s/^/from .models import Week\, Choice/' $app_name/admin.py
echo "${green}>>> Registering the Week model in admin.py${reset}"
sed -i '' '5s/^/admin.site.register(Week)/' $app_name/admin.py
echo "${green}>>> Registering the Choice model in admin.py${reset}"
sed -i '' '6s/^/admin.site.register(Choice)/' $app_name/admin.py
# source env/bin/activate
# cd cafeteria
# python manage.py makemigrations && python manage.py migrate
# python3 manage.py shell
# import datetime
# from django.utils import timezone
# from weeklydessert.models import Week, Choice
# week1 = Week(pub_date=timezone.now() - datetime.timedelta(days=7))
# week1.save()
# choice1 = Choice(week=week1, dessert_choice='Apple', dessert_details='A delicious apple')
# choice1.save()
# choice2 = Choice(week=week1, dessert_choice='Banana', dessert_details='A delicious banana')
# choice2.save()
# from django.contrib.auth.models import User
# user = User.objects.create_user(username="Anthony",email="tony@email.com",password="tony90941")
# user.save()
# exit()
# python manage.py runserver
echo "${green}>>> Adding Django’s built-in authentication views in app urls.py${reset}"
sed -i '' "8s/^/	path(\'account\/\'\, include(\'django.contrib.auth.urls\'))\,/" $app_name/urls.py
echo "${green}>>> Configuring authentication in settings.py${reset}"
echo "$(cat <<-END
LOGIN_URL = '/account/login'
LOGIN_REDIRECT_URL = 'index'
LOGOUT_REDIRECT_URL = 'index'

CSRF_COOKIE_SAMESITE = 'None'
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SAMESITE = 'None'
SESSION_COOKIE_SECURE = True
END
)"  >> $project_name/settings.py
echo "${green}>>> Adding form rendering tags to display a username and password field in login.html${reset}"
sed -i '' '13s/^/          {{ form.as_p }}/' $templates_path/registration/login.html
echo "${red}>>> Registration${reset}"
echo "${green}>>> Creating a SignUp class in views.py${reset}"
sed -i '' 's/# Create your class-based Signup view below:/# Create your class-based Signup view below:\
class SignUp(CreateView):\
  form_class = UserCreationForm\
  success_url = reverse_lazy(\"login\")\
  template_name = \"registration\/signup.html\"/g' $app_name/views.py
echo "${green}>>> Adding signup views in app urls.py${reset}"
sed -i '' "10s/^/	path(\'signup\/\'\, views.SignUp.as_view()\, name='signup')\,/" $app_name/urls.py
echo "${red}>>> Logging Out${reset}"
echo "${green}>>> Importing the logout function in views.py${reset}"
sed -i '' '9s/^/from django.contrib.auth import logout/' $app_name/views.py
echo "${green}>>> Creating a logout view function in views.py${reset}"
sed -i '' 's/# Create your logout function, logout_request, below:/# Create your logout function, logout_request, below:\
def logout_request(request):\
  logout(request)\
  return redirect(\"index\")/g' $app_name/views.py
echo "${green}>>> Adding the logout path in app urls.py${reset}"
sed -i '' "12s/^/	path(\'logout\/\'\, views.logout_request\, name='logout')\,/" $app_name/urls.py
echo "${green}>>> Adding a logout button in header.html${reset}"
sed -i '' '9s/^/	  <a class=\"logout-button\" href=\"{% url '\''logout'\'' %}\">Log Out<\/a>/' $templates_path/header.html
echo "${red}>>> Securing Paths${reset}"
echo "${green}>>> Importing the login_required decorator in views.py${reset}"
sed -i '' '6s/^/from django.contrib.auth.decorators import login_required/' $app_name/views.py
echo "${green}>>> Adding decorators to the index and the vote views in views.py${reset}"
sed -i '' 's/# Add login_required decorator:/# Add login_required decorator:\
@login_required/g' $app_name/views.py
echo "${green}>>> Importing the LoginRequiredMixin in views.py${reset}"
sed -i '' '7s/^/from django.contrib.auth.mixins import LoginRequiredMixin/' $app_name/views.py
echo "${green}>>> Adding the LoginRequiredMixin to DetailsView in views.py${reset}"
sed -i '' 's/class DetailsView(/class DetailsView(LoginRequiredMixin, /g' $app_name/views.py
echo "${green}>>> Adding the LoginRequiredMixin to ResultsView in views.py${reset}"
sed -i '' 's/class ResultsView(/class ResultsView(LoginRequiredMixin, /g' $app_name/views.py
echo "${red}>>> Great job! Now the student will be able to sign up and vote for their favorite dessert!${reset}"
# List installed Python packages
pip freeze -l > requirements.txt
```