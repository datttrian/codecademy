# Revisiting Views

You’ve created your first view before, now it’s time for a deeper dive.

Templates show information to the user and models are the source of that
information. This means we need something to determine **what** we
should take from the source to present to our users. This is the purpose
of views to act as the middleman coordinating this flow of information.

<img
src="https://static-assets.codecademy.com/skillpaths/django/first_app/django_mtv_diagram_bg.svg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Django&#39;s MTV design pattern showing how models supply the data, views determine what data to show, and templates displaying the data" />

By setting up a view for templates, our data can be much more dynamic
and render more relevant info to our users giving them a customized
experience. You’ve already seen how a basic view works, now let’s learn
more advanced ways of Django!

# Views

## What are Views?

*Views* play an important role in the MTV (Model-Template-View)
architectural pattern and essentially act as a link between the Model
data and the Templates. A view is a function that takes in an HTTP
request and returns an HTTP response.

In Django, a response can deliver webpage content in the form of HTML
and templates, however, it can also respond with an image, an XML
document, etc. We can handle what kind of information will be displayed
on the browser for users. We’ve already touched lightly on views in the
previous lessons, but now we’re going to go in-depth and explore some of
its functionalities and tools!

It’s important to understand that a view describes **which** data you
see, not **how** you see it. You can think of a view as the middleman
between the model and the template. The view will execute the business
logic and interact with the model to carry data and delegate the
information to the template which determines **how** information is
displayed.

### Solution

<img alt="GIF showcasing how information from the template gets passed into the views (class or function) and then gets puts into the template for users to see. " src="https://static-assets.codecademy.com/skillpaths/django/view/views_nobg_v2.gif" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Refresher

At this stage, we’ve learned a lot about the ins and outs of Django.
When working with frameworks like Django, there are a lot of moving
pieces involved and the flow of how data is passed can be a bit
confusing. However, do not fret, some of the following topics will look
familiar so let’s recap and go a little more in-depth.

There are a few steps that go into accessing a view via a URL:

1.  A user visits a URL which sends a request for a resource to Django
    (e.g. navigating to a specific endpoint).
2.  Django looks into the framework for that URL path.
3.  If it finds a match and the path is linked to a particular view, its
    view function is called.
4.  The logic in that view function will be executed, usually
    communicating with the model and retrieving the requested data.
5.  The view then renders a template along with all the data to display
    it to the user.

In order to access a view via a URL, Django has its own way for URL
mapping and it’s done by editing the project’s **url.py** file. As we
create functions in different applications’ **views.py** files, we must
also make sure to import said functions in the apps’ **url.py** file!

Within the **url.py** file, the most important thing is the
`urlpatterns` list which looks like the following:

```python
# urls.py
 
from myapp.views import home_view
 
urlpatterns = [
  path("home/", home_view),
]
```

In the example above, a request to `http://example.com/home` would point
to that URL pattern and make a call to the function `home_view()` which
is found in the application’s **views.py** file. The logic in
`home_view()` would be executed and send back a response to the client.

Consider the `home_view()` containing the following logic:

```python
# views.py
 
def home_view(request):
  return render(request, "template.html")
```

Within `home_view()` we’re also making use of the function `render()`.
As we saw prior, `render()` is a shortcut function that takes in an
`HttpRequest` object and a template in order to display it back to the
client.

### Instructions

**1.**

Navigate through the updated code in **url.py** and **views.py** in
order to see how information is being passed around through the `home()`
function in **vetoffice/views**.





### Solution

```python
from django.urls import path

from . import views

urlpatterns = [
   path("", views.home, name="home")
]
```

```python
from django.shortcuts import render

pets = [
   { "petname": "Fido", "animal_type": "dog"},
   { "petname": "Clementine", "animal_type": "cat"},
   { "petname": "Cleo", "animal_type": "cat"},
   { "petname": "Oreo", "animal_type": "dog"},
]

def home(request):
   context = {"name": "Djangoer", "pets": pets}
   return render(request, "vetoffice/home.html", context)
```

```html
{% extends "./base.html" %}
{% block content %}
    {% for pet in pets %}<p>{{ pet.petname }}, {{ pet.animal_type }}</p>{% endfor %}
{% endblock %}
```

## Class Based Views

We’ve explored how to write view functions in order to render templates
and return them to the browser. In this exercise, we’ll look into how to
use *class-based views* and implement <a
href="https://docs.djangoproject.com/en/3.1/topics/class-based-views/generic-display/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">generic views</a> in order to keep our
code clean and
<a href="https://en.wikipedia.org/wiki/Don%27t_repeat_yourself"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">DRY</a>.

Django provides us with base views that are inherited from the class
`view`. A number of these existing generic view functions include
built-in logic and provide utilities — better yet, we can combine these
generics with our own written code!

Consider an application that keeps track of students in a classroom.
We’ll make use of a model, `Student`, which holds the following fields:

```python
# models.py
 
class Student(models.Model):
  first_name = models.CharField(max_length=30)
  last_name = models.CharField(max_length=30)
  grade = models.CharField(max_length=30)
```

Let’s say we want to create a view that displays all of the students in
a table. We could do this manually by writing a query to retrieve all
the students and then pass the list to a template. Alternatively, we
could make use of a generic view called <a
href="https://docs.djangoproject.com/en/3.1/topics/class-based-views/generic-display/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">Listview</code></a>. This view does
exactly what we need and takes care of the logic in order to display
multiple instances of a table in the database.

If we want to use some of these generic views we must first import them
from `django.views.generic` at the top of our file, along with our
`Student` model:

```python
# views.py
 
from .models import Student
from django.views.generic import ListView
```

Once imported we can specify what model we’ll be using the `ListView`
for:

```python
# views.py
 
class StudentList(ListView):
  model = Student
  template_name = "schoolapp/student.html"
```

Notice how we changed the view from function to a class now — we even
provided properties! These properties allow us to modify our view class
to incorporate other information. Upon specifying the `model` we’re
using Django will automatically try to find a template in
**\<the_app_name\>/\<chosen_model_name\>.html**. Alternatively, we could
explicitly tell the view which template to use by adding a
`template_name` attribute to the view, as well as specifying the model
with the `model` attribute. In this case, we specified the `model` as
`Student` and explicitly set `template_name` as the
`"schoolapp/student.html"` template.

Let’s now implement the `ListView` for both `Owner` and `Patient`!

### Instructions

**1.**

Please note that for this exercise, we’ve updated the application by
adding templates in **vetoffice/templates/**. This way you can focus on
adding in `ListView`.

Before you can use `ListView`, you have to import it from
`django.views.generic`. So let’s import that near the top of our
**views.py** file.





**2.**

We can now implement a `ListView` for `Owner`.

Create a class named `OwnerList`:

-   Provide an argument of `ListView`
-   Set the `model` as `Owner`
-   Set the `template_name` as `"vetoffice/owner_list.html"`





**3.**

Practice makes perfect, use what you learned for `OwnerList` and
implement a `ListView` for `Patient`!





### Solution

```python
from django.db import models

# Create your models here.
class Owner(models.Model):
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    phone = models.CharField(max_length=30)

class Patient(models.Model):
    DOG = 'DO'
    CAT = 'CA'
    BIRD = 'BI'
    REPTILE = 'RE'
    OTHER = 'OT'
    ANIMAL_TYPE_CHOICES = [
        (DOG, 'Dog'),
        (CAT, 'Cat'),
        (BIRD, 'Bird'),
        (REPTILE, 'Reptile'),
        (OTHER, 'Other'),
    ]
    animal_type = models.CharField(max_length=2, choices=ANIMAL_TYPE_CHOICES, default=OTHER)
    breed = models.CharField(max_length=200)
    pet_name = models.CharField(max_length=30)
    age = models.IntegerField(default=0)
    owner = models.ForeignKey(Owner, on_delete=models.CASCADE)
```

```python
from django.shortcuts import render
from .models import Owner, Patient
# Import ListView below:
from django.views.generic import ListView


def home(request):
  context = {"name": "Djangoer"}
  return render(request, "vetoffice/home.html", context)

# Create your ListView classes below:
class OwnerList(ListView):
  model = Owner
  template_name = "vetoffice/owner_list.html"

class PatientList(ListView):
  model = Patient
  template_name = "vetoffice/patient_list.html"
```

```html
{% extends './base.html' %}
{% block content %}
    <h2>Owner List</h2>
    <a href="{% url 'ownercreate' %}">
        <button class="btn">Add Owner</button>
    </a>
    <table id="owners">
        <tr>
            <th>First</th>
            <th>Last</th>
            <th>Phone</th>
            <th></th>
            <th></th>
        </tr>
        <tr>
            {% for owner in owner_list %}
            </tr>
            <tr>
                <td>{{ owner.first_name }}</td>
                <td>{{ owner.last_name }}</td>
                <td>{{ owner.phone }}</td>
                <td>
                    <a href="{% url 'ownerupdate' owner.id %}">
                        <button>Edit</button>
                    </a>
                </td>
                <td>
                    <a href="{% url 'ownerdelete' owner.id %}">
                        <button>Delete</button>
                    </a>
                </td>
            </tr>
            Woul
        </table>
    {% endblock %}
```

```html
{% extends './base.html' %}
{% block content %}
    <h2>Patient List</h2>
    <a href="{% url 'patientcreate' %}">
        <button class="btn">Add Patient</button>
    </a>
    <table id="patients">
        <tr>
            <th>Pet Name</th>
            <th>Animal Type</th>
            <th>Breed</th>
            <th>Age</th>
            <th>Owner</th>
            <th></th>
            <th></th>
        </tr>
        {% for patient in patient_list %}
            <tr>
                <td>{{ patient.pet_name }}</td>
                <td>{{ patient.animal_type }}</td>
                <td>{{ patient.breed }}</td>
                <td>{{ patient.age }}</td>
                <td>{{ patient.owner.first_name }} {{ patient.owner.last_name }}</td>
                <td>
                    <a href="{% url 'patientupdate' patient.id %}">
                        <button>Edit</button>
                    </a>
                </td>
                <td>
                    <a href="{% url 'patientdelete' patient.id %}">
                        <button>Delete</button>
                    </a>
                </td>
            </tr>
        {% endfor %}
    </table>
{% endblock %}
```

## CRUD through Class Based Views

Class-based views set up a lot of functionality automatically for us. In
the previous exercise, we were able to list out (i.e. **R**ead)
instances. This time around let’s add in the rest of the **CRUD**
functionality using <a
href="https://docs.djangoproject.com/en/3.1/topics/class-based-views/generic-display/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">generic views</a>.

The same general syntax patterns exist for all 4 generic views, however,
there are some slight differences. For example, if we go back to
thinking about a `Student` model, here’s how we could add a view to
create a `Student` instance:

```python
# views.py
 
from .models import Student
from django.views.generic import ListView
from django.views.generic.edit import CreateView
 
class StudentCreate(CreateView):
  model = Student
  template_name = "schoolapp/student_create_form.html"
  fields = ["first_name", "last_name", "grade"]
```

The syntax looks very similar, but let’s go over some key differences:

-   Notice that we first have also import `CreateView` from another
    module, `django.views.generic.edit`.
-   In the new class’s name, we append `Create` to the model name to get
    `StudentCreate`.
-   The argument is also different and is now `CreateView`.
-   The `model` remains the same, we still need to set the model we want
    this view to reference.
-   The template (`template_name`) is also different. That is because to
    create a `Student` instance, we’ll need to get some user input which
    means we should create a form template!
-   Speaking of input, to know what should go in the form, we have to
    provide a `fields` property. This is an array that contains a list
    of the model’s fields as strings.
    -   In this case, we’re supplying our form template will include the
        options to fill in information about a student’s “first_name”,
        “last_name”, and “grade”.

**Note**: We’ll cover more on forms later, for now, we’ll focus on
setting up the views.

Both the `UpdateView` and `DeleteView` resemble `CreateView` very
closely — so let’s learn how to implement both by writing them
ourselves!

### Instructions

**1.**

As mentioned in the previous exercise we’ve already added the necessary
templates in **vetoffice/templates/** for you!

Therefore, let’s start by importing all of our generic views at the top
of our file.

From `django.views.generic.edit`, import the three generic views:
`CreateView`, `UpdateView`, and `DeleteView`.





**2.**

Now, let’s create a different type of generic view with `CreateView` for
`Owner`.

Create a class named `OwnerCreate` with `CreateView` as an argument. In
its properties, set:

-   `model` as `Owner`
-   `template_name` as `"vetoffice/owner_create_form.html"`
-   `fields` as `["first_name", "last_name", "phone"]`





**3.**

Using the same convention that you used to set up `CreateView` for
`Owner`, now set up the `CreateView` for `Patient`.

Remember:

-   Provide the same naming convention (but for a different model)
-   Assign the correct argument
-   Provide the correct properties, set:
    -   The `model` property
    -   The correct `template_name`
    -   The `fields` containing: `"animal_type"`, `"breed"`,
        `"pet_name"`, `"age"`, `"owner"`





**4.**

The `UpdateView` for both `Owner` and `Patient` will look very similar
to what you’ve already done for `CreateView`.

First, start with the `UpdateView` for `Owner`:

-   Create a class named `OwnerUpdate` with an argument of `UpdateView`
-   Set `model` as `Owner`
-   Set `template_name` as `"vetoffice/owner_update_form.html"`
-   Set `fields` as a list containing the same values as the
    `CreateView`

Then, repeat the same general steps but for `Patient`.





**5.**

Almost done! The only thing left is `DeleteView`.

Using what you’ve learned, create new `DeleteView` classes for `Owner`
and `Patient`.

With `DeleteView`, there’s no need to add in `fields` since if we’re
deleting an instance, we’ll delete everything associated with that
instance.





### Solution

```python
from django.shortcuts import render
from .models import Owner, Patient
from django.views.generic import ListView
# Import the generic views below:
from django.views.generic.edit import CreateView, UpdateView, DeleteView

def home(request):
  context = {"name": "Djangoer"}
  return render(request, "vetoffice/home.html", context)

class OwnerList(ListView):
  model = Owner
  template_name = "vetoffice/owner_list.html"

class PatientList(ListView):
  model = Patient
  template_name = "vetoffice/patient_list.html"

# Create your other generic views below:
class OwnerCreate(CreateView):
  model = Owner
  template_name = "vetoffice/owner_create_form.html"
  fields = ["first_name", "last_name", "phone"]

class PatientCreate(CreateView):
  model = Patient
  template_name = "vetoffice/patient_create_form.html"
  fields = ["animal_type", "breed", "pet_name", "age", "owner"]

class OwnerUpdate(UpdateView):
  model = Owner
  template_name = "vetoffice/owner_update_form.html"
  fields = ["first_name", "last_name", "phone"]

class PatientUpdate(UpdateView):
  model = Patient
  template_name = "vetoffice/patient_update_form.html"
  fields = ["animal_type", "breed", "pet_name", "age", "owner"]

class OwnerDelete(DeleteView):
  model = Owner
  template_name = "vetoffice/owner_delete_form.html"

class PatientDelete(DeleteView):
  model = Patient
  template_name = "vetoffice/patient_delete_form.html"
```

## Adding Views to urls.py

Now that we have completed the logic to work with class-based views, we
can implement them into our <a
href="https://docs.djangoproject.com/en/3.1/topics/http/urls/#overview"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">URLconf</a> so that they’re accessible
when navigating to specific endpoints.

However, there’s a problem because Django’s URL resolver is expecting to
send a request to a callable function, not a class! Therefore,
class-based views have a <a
href="https://docs.djangoproject.com/en/3.1/ref/class-based-views/base/#django.views.generic.base.view.as_view"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.as_view()</code> method</a>, which
works its magic in order to render the appropriate logic:

```python
# urls.py
 
urlpatterns = [
  path("students/", views.StudentList.as_view(), name="studentlist")
]
```

In the code above, we’re making a call to `.as_view()` which is a class
method for our generic view, `StudentList`. We’re also adding the `name`
attribute here. By assigning a name, we can quickly reference this URL
using its `name` value in our views and templates instead of the entire
lengthy URL. Now, if we make any future changes made to the URL path,
Django automatically updates the URL definitions in view methods and
templates. Therefore, even if the URL path changes, the `name` remains
the same and Django will know from the `name` what the updated URL path
is. We’ll see this behavior in later lessons when we reference a URL
path in templates or redirections.

Once implemented, we can access the path `students/` and our template
will be rendered along with the data from our database regarding all the
students.

Let’s add some paths to list out instances and also write a new path
that will help create instances! In the next exercise, we’ll make our
list route fully functionally by adding the rest of CRUD.

### Instructions

**1.**

You’ll now get to create these new paths for both `Owner` and `Patient`.
Let’s start first with the `Owner` list:

-   In `urlpatterns` add a `path()` for `"owner/list"`
-   Add `views.OwnerList` as the second argument.
    -   Make the view callable by using the `.as_view()` method.
-   Assign `"ownerlist"` as the `name` attribute.





**2.**

Now it’s time for `Patient`!

Let’s create a new `path()` for `"patient/list"` in `urlpatterns`. For
the second argument, use `views.PatientList` and make it a callable view
as well. Lastly, give it a `name` of `"patientlist"`.





**3.**

A path for creation follows a similar syntax as listing instances. Let’s
make one for `Owner`.

-   Add a path for `"owner/create"`
-   This path should use the `OwnerCreate` view
-   Provide a `name` of `"ownercreate"`.





**4.**

Great job! The creation path for `Owner` is set up, now it’s time for
`Patient`.

-   Create another path of `"patient/create"`
-   Use the `PatientCreate` view
-   Set `name` as `"patientcreate"`

**Note**: Because of how we set up our provided templates, we’ll need to
set up the update view and delete view before we can see the actual
page. This will happen in the next exercise!





### Solution

```python
from django.urls import path

from . import views

# Add your path()s inside of urlpatterns:
urlpatterns = [
  path("", views.home, name="home"),
  path('owner/list', views.OwnerList.as_view(), name="ownerlist"),
  path('patient/list', views.PatientList.as_view(), name="patientlist"),
  path('owner/create', views.OwnerCreate.as_view(), name="ownercreate"),
  path('patient/create', views.PatientCreate.as_view(), name="patientcreate"),
]
```

```python
from django.shortcuts import render
from .models import Owner, Patient
from django.views.generic import ListView
from django.views.generic.edit import CreateView, DeleteView, UpdateView

def home(request):
  context = {"name": "Djangoer"}
  return render(request, "vetoffice/home.html", context)

class OwnerList(ListView):
  model = Owner

class PatientList(ListView):
  model = Patient

class OwnerCreate(CreateView):
  model = Owner
  template_name = "vetoffice/owner_create_form.html"
  fields = ["first_name", "last_name", "phone"]

class PatientCreate(CreateView):
  model = Patient
  template_name = "vetoffice/patient_create_form.html"
  fields = ["animal_type", "breed", "pet_name", "age", "owner"]

class OwnerUpdate(UpdateView):
   model = Owner
   template_name = "vetoffice/owner_update_form.html"

class PatientUpdate(UpdateView):
   model = Patient
   template_name = "vetoffice/patient_update_form.html"

class OwnerDelete(DeleteView):
  model = Owner
  template_name = "vetoffice/owner_delete_form.html"

class PatientDelete(DeleteView):
  model = Patient
  template_name = "vetoffice/patient_delete_form.html"
```

## Using Primary Keys in URLs

We just saw how we can view an entire list of models and create new
models. But what if we want to access existing individual instances by
updating or deleting them?

In this case, we can make use of our model’s primary key (also known as
the ID). To navigate to a specific record of an instance, a primary key
will be attached to our path. Let’s say we land on our `Student` list
page and we’ve displayed a table of students. We click on the 10th
student on the list and we’re directed to the path: `student/10`. In our
URLconf, we can capture this primary key by using angle brackets:

```python
# urls.py
 
urlpatterns = [
  # ... Other paths
  path("students/", views.StudentList.as_view(), name="studentlist"),
  path("students/<pk>", views.StudentUpdate.as_view(), name="studentupdate")
]
```

In this case, Django knows to look for the primary key (the value is
replaced by the placeholder: `<pk>`) in our database and render that
specific record.

If we navigate to `students/4`, Django would grab the value, `4`, as the
primary key and access the database in order to retrieve that record.

Notice that the other than the `<pk>` portion, we’re using the same
syntax. Again, `views.StudentUpdate.as_view()` is the second argument —
the intention is for this view to allow users to change/update specific
students’ information. We’ve also given a `name` value so we can
reference it in the future. This way, we’ll be able to access any
student and render their information dynamically!

### Instructions

**1.**

Previously, we added paths to view all the owners and patients and
create them, let’s add the rest of CRUD — starting with update.

In **urls.py** add a path for `"owner/update/<pk>"`:

-   Use the `OwnerUpdate` view
-   Set `name` as `"ownerupdate"`





**2.**

Now, you’ll need an update path for `Patient`!

Create a path for `"patient/update/<pk>"` using what you know about
paths.





**3.**

Lastly, we need to be able to delete owners and patients.

Create two paths, one for `"owner/delete/<pk>"` and another for
`"patient/delete/<pk>"`. Remember to pass in the `OwnerDelete` and
`PatientDelete` views give them the names `"ownerdelete"` and
`"patientdelete"`, respectively.





**4.**

Great job! You’ve now set up your `path()`s so check out
`http://localhost:8000/vetoffice/owner/list` and
`http://localhost:8000/vetoffice/patient/list` in the mini-browser to
see all the `Owner` and `Patient` objects! You can also see the CRUD
paths as well.

See what happens when you comment out, or remove, a `path()` in
`urlpatterns`! Once you’re done exploring the code, click “Run” to move
on to the next exercise.





### Solution

```python
from django.shortcuts import render
from .models import Owner, Patient
from django.views.generic import ListView
from django.views.generic.edit import CreateView, DeleteView, UpdateView

def home(request):
  context = {"name": "Djangoer"}
  return render(request, "vetoffice/home.html", context)

class OwnerList(ListView):
  model = Owner

class PatientList(ListView):
  model = Patient

class OwnerCreate(CreateView):
  model = Owner
  template_name = "vetoffice/owner_create_form.html"
  fields = ["first_name", "last_name", "phone"]

class PatientCreate(CreateView):
  model = Patient
  template_name = "vetoffice/patient_create_form.html"
  fields = ["animal_type", "breed", "pet_name", "age", "owner"]

class OwnerUpdate(UpdateView):
  model = Owner
  template_name = "vetoffice/owner_update_form.html"
  fields = ["first_name", "last_name", "phone"]

class PatientUpdate(UpdateView):
  model = Patient
  template_name = "vetoffice/patient_update_form.html"
  fields = ["animal_type", "breed", "pet_name", "age", "owner"]

class OwnerDelete(DeleteView):
  model = Owner
  template_name = "vetoffice/owner_delete_form.html"

class PatientDelete(DeleteView):
  model = Patient
  template_name = "vetoffice/patient_delete_form.html"
```

```python
from django.urls import path

from . import views

# Add your path()s inside of urlpatterns:
urlpatterns = [
  path("", views.home, name="home"),
  path("owner/list", views.OwnerList.as_view(), name="ownerlist"),
  path("patient/list", views.PatientList.as_view(), name="patientlist"),
  path("owner/create", views.OwnerCreate.as_view(), name="ownercreate"),
  path("patient/create", views.PatientCreate.as_view(), name="patientcreate"),
  path("owner/update/<pk>", views.OwnerUpdate.as_view(), name="ownerupdate"),
  path("patient/update/<pk>", views.PatientUpdate.as_view(), name="patientupdate"),
  path("owner/delete/<pk>", views.OwnerDelete.as_view(), name="ownerdelete"),
  path("patient/delete/<pk>", views.PatientDelete.as_view(), name="patientdelete"),
]
```

```html
{% extends './base.html' %}
{% block content %}

{% for pet in pets %}
<p>{{ pet.petname }}, {{ pet.animal_type}}</p>
{% endfor %}

{% endblock %}
```

```html
{% extends './base.html' %}
{% block content %}
<h2>Owner List</h2>
<a href="{% url 'ownercreate' %}"><button class="btn">Add Owner</button></a>
<table id="owners">
  <tr>
    <th>First</th>
    <th>Last</th>
    <th>Phone</th>
      <th> </th>
      <th> </th>
  </tr> 
	<tr>
  {% for owner in owner_list %}
  </tr>
  <tr>
      <td>{{ owner.first_name }}</td>
      <td>{{ owner.last_name }}</td>
      <td>{{ owner.phone }}</td>
      <td><a href="{% url 'ownerupdate' owner.id %}"><button>Edit</button></a></td>
      <td><a href="{% url 'ownerdelete' owner.id %}"><button>Delete</button></a></td>
  </tr>
  {% endfor %}
</table>
{% endblock %}
```

```html
{% extends './base.html' %}
{% block content %}
<h2>Patient List</h2>
<a href="{% url 'patientcreate' %}"><button class="btn">Add Patient</button></a>
<table id="patients">
  <tr>
    <th>Pet Name</th>
    <th>Animal Type</th>
      <th>Breed</th>
      <th>Age</th>
      <th>Owner</th>
      <th> </th>
      <th> </th>
  </tr>
  {% for patient in patient_list %}
  <tr>
      <td>{{ patient.pet_name }}</td>
      <td>{{ patient.animal_type }}</td>
      <td>{{ patient.breed }}</td>
      <td>{{ patient.age }}</td>
      <td>{{ patient.owner.first_name }} {{ patient.owner.last_name}}</td>
      <td><a href="{% url 'patientupdate' patient.id %}"><button>Edit</button></a></td>
      <td><a href="{% url 'patientdelete' patient.id %}"><button>Delete</button></a></td>
  </tr>
  {% endfor %}
</table>
{% endblock %}
```

```html
{% extends './base.html' %}
{% block content %}
<h2>Create Owner</h2>
<form method="post">
<div>
  {% csrf_token %} {{ form.as_p }}
  <input type="submit" value="Submit" />
</div>
</form>
{% endblock %}
```

```html
{% extends './base.html' %}
{% block content %}
<h2>Create Patient</h2>
<form method="post">
<div>
  {% csrf_token %} {{ form.as_p }}
  <input type="submit" value="Submit" />
</div>
</form>
{% endblock %}
```

```html
{% extends './base.html' %}
{% block content %}
<h2>Update Owner</h2>
<form method="post">
<div>
  {% csrf_token %} {{ form.as_p }}
  <input type="submit" value="Submit" />
</div>
</form>
{% endblock %}
```

```html
{% extends './base.html' %}
{% block content %}
<h2>Update Patient</h2>
<form method="post">
<div>
  {% csrf_token %} {{ form.as_p }}
  <input type="submit" value="Submit" />
</div>
</form>
{% endblock %}
```

```html
{% extends './base.html' %}
{% block content %}
<h2>Delete Owner</h2>
<form method="post">
<div>
  {% csrf_token %}
  <p>Are you sure you want to delete "{{ object.first_name }} {{ object.last_name }}"?</p>
  <input type="submit" value="Confirm" />
</div>
</form>
{% endblock %}
```

```html
{% extends './base.html' %}
{% block content %}
<h2>Delete Patient</h2>
<form method="post">
<div>
  {% csrf_token %}
  <p>Are you sure you want to delete "{{ object.pet_name }}"?</p>
  <input type="submit" value="Confirm" />
</div>
</form>
{% endblock %}
```

## Rendering a 404

We’ve seen how to make use of views and templates by delegating data and
rendering different content. However, what if a user tries to navigate
to a non-existing page? In that case, it would be useful to return a
<a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/404"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">404 page</a> that tells our users that
such a page doesn’t exist!

This behavior is so common that Django even provides a built-in view to
serve a `404` page! We need to import the <a
href="https://docs.djangoproject.com/en/3.1/topics/http/views/#django.http.Http404"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">Http404</code>class</a> — which is
an *exception class*, meaning it’ll return an error.

It’s important to write out code that takes into account any potential
errors. So we have to figure out what conditions might lead to a 404
error being raised and make sure we handle that exception. We can do
this by adding a `try` /`except` statement. The `try` block lets us test
a block of code for errors and if an error is found, the `except` block
will be executed. For example:

```python
from django.http import Http404
 
def product_detail_view(request, id):
  try:
    obj = Products.objects.get(pk=id)
  except Products.DoesNotExist:
    raise Http404()
 
  return render(request, "products/detail.html", {"object": obj})
```

In the example above we’re looking for a specific product by `id` within
the `try` block. If we’re unable to find the product, the `except` block
is executed. The `except` block is using the <a
href="https://docs.djangoproject.com/en/3.1/ref/models/class/#django.db.models.Model.DoesNotExist"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">DoesNotExist</code></a> exception
which is raised when an object is not found for the given arguments of a
query. However, if the object is found, we return the page that the user
is looking for.

Generally, Django handles a lot of 404 errors for us, but it’s good to
know how to implement logic when the need arises!

### Instructions

**1.**

Let’s first by importing the `Http404` class from `django.http` near the
top of **views.py**.



**2.**

For practice, let’s force a `404` page in our `home()` view function!

Notice that we’re trying to retrieve a specific pet from our database in
the line:

```python
found_pet = Patient.objects.get(pk=1)
```

Create a `try`/`except` block that has:

-   Move the `found_pet = Patient.objects.get(pk=1)` inside the `try`
    block
-   The `except` condition being `Patient.DoesNotExist`
-   Inside the `except` block, raise the `Http404()` exception





**3.**

You can now force the error by changing the `Patient.objects.get()`
argument from `pk=1` to `pk=4` (or higher), since there are only 3
`Patient` instances currently in the database.





**4.**

So far the page doesn’t look any different from the other pages you
might have seen when you’ve encountered an error! That’s because
**settings.py** has a variable `DEBUG` set as `True`. This setting
really helps give detailed errors you can use to debug your app — but
it’s not good for <a
href="https://docs.djangoproject.com/en/3.1/howto/deployment/checklist/#debug"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">use in production</a>.

However, to see how your page will look like to a user, open up
**settings.py** and set `DEBUG` to `False`. Refresh the page to see the
default 404 page for Django.





### Solution

```python
from django.shortcuts import render
from .models import Owner, Patient
from django.views.generic import ListView
from django.views.generic.edit import CreateView, DeleteView, UpdateView
# Import Http404 below:
from django.http import Http404

def home(request):
  # Add your code below:
  try:
    found_pet = Patient.objects.get(pk=6)
  except Patient.DoesNotExist:
    raise Http404()
  context = {"name": "Djangoer", "pet": found_pet}
  return render(request, "vetoffice/home.html", context)

class OwnerList(ListView):
  model = Owner
  template_name = "vetoffice/owner_list.html"

class PatientList(ListView):
  model = Patient
  template_name = "vetoffice/patient_list.html"

class OwnerCreate(CreateView):
  model = Owner
  template_name = "vetoffice/owner_create_form.html"
  fields = ["first_name", "last_name", "phone"]

class PatientCreate(CreateView):
  model = Patient
  template_name = "vetoffice/patient_create_form.html"
  fields = ["animal_type", "breed", "pet_name", "age", "owner"]

class OwnerUpdate(UpdateView):
  model = Owner
  template_name = "vetoffice/owner_update_form.html"
  fields = ["first_name", "last_name", "phone"]

class PatientUpdate(UpdateView):
  model = Patient
  template_name = "vetoffice/patient_update_form.html"
  fields = ["animal_type", "breed", "pet_name", "age", "owner"]

class OwnerDelete(DeleteView):
  model = Owner
  template_name = "vetoffice/owner_delete_form.html"

class PatientDelete(DeleteView):
  model = Patient
  template_name = "vetoffice/patient_delete_form.html"
```

## Updating URLs in Templates

When writing out paths in our URLConf, we looked into how to add a
class-based view to be used in our paths. Consider the following piece
of code:

```python
urlpatterns = [
  path("books/", views.BookList.as_view(), name="booklist"),
  path("books/update/<pk>", views.BookUpdate.as_view(), name="bookupdate")
]
```

In the example above, we have a class-based view called `BookList` with
the name attribute: `"booklist"`. When using class-based views, Django
is smart enough to look into our **template/** folder for an HTML file
of the snake-case version of the same name (i.e **book_list.html**
instead of **BookList.html**). We know that this template is given
information from the view, but how do we access this information?

Within our template, we’ll be able to retrieve all of the records in our
database through the `BookList` class:

```html
<!-- /templates/book_list.html -->
 
{% for book in book_list %}
<tr>
  <td>{{ book.title }} </td>
  <td>{{ book.author }} </td>
</tr>
{% endfor %}
```

In the example above, we’re looping over all our book objects in our
database, and by using interpolation we can access attributes from each
book such as `author` and `title`.

We also looked in a previous exercise how we can make use of the primary
key in dynamic URLs. Let’s assume we want to have a link attached to
each book in order to delete it from the list and our database. In this
case, we can make use of the `name` attribute from our book update path.

```html
<!-- /templates/book_list.html -->
 
{% for book in book_list %}
<tr>
  <td>{{ book.title }} </td>
  <td>{{ book.author }} </td>
  <td><a href="{% url 'bookupdate' book.id %}"><button>Update</button></a></td>
</tr>
{% endfor %}
```

Notice the `<a>` element is using Python’s template for the `href`
attribute. In this case, we’re adding the value used for the `name`
attribute in our URLConf: `bookupdate`. Moreover, we’re able to specify
which book we want to update by accessing its `id` attribute.

### Instructions

**1.**

You’ve seen how the `owner/list` page should look like in a previous
exercise. But to practice updating URLs in links, let’s try implementing
the update and delete from scratch.

In **owner_list.html**, there is a loop going over all the `Owner`
instances. Currently, the page contains rows of basic information.
Inside the `<tr>` that displays information, you now have to:

-   Add another `<td>`
-   Inside the `<td>` add a `<a>` element
-   The `<a>`‘s `href` should use the `{% url %}` tag
    -   Provide the tag with the `'ownerupdate'` template
    -   Use `owner.id` as the argument
-   The `<a>`‘s text should say `Edit`





**2.**

The update link set up, now do the same to set up a delete link! The
text in this new link should display `Delete`.

Once you’re done, try clicking on the links to see how you’ve used
dynamic links in your URLs!





### Solution

```html
{% extends "./base.html" %}

{% block content %}
<h2>Owner List</h2>
<table id="owners">
  <tr>
    <th>First</th>
    <th>Last</th>
    <th>Phone</th>
      <th> </th>
      <th> </th>
  </tr>
	<tr>
  {% for owner in owner_list %}
  </tr>
  <tr>
    <td>{{ owner.first_name }}</td>
    <td>{{ owner.last_name }}</td>
    <td>{{ owner.phone }}</td>
    <!-- Add your code below -->
    <td><a href="{% url 'ownerupdate' owner.id %}">Edit</a></td>
    <td><a href="{% url 'ownerdelete' owner.id %}">Delete</a></td>
    
  </tr>
  {% endfor %}
</table>
{% endblock %}
```

## Review

Way to go! We’ve explored tools and built-in functionalities that Django
provides when working with views. So far we’ve learned how to:

-   Create view functions within the appropriate `views.py` file:

```python
def home_view(request):
  name = "Tom"
  text = f"<h1>My name is {name}</h1>"
  return HttpResponse(text)
```

-   Explored how to use class-based views:

```python
class OwnerList(Listview):
  model = Owner
```

-   Attach the view function to a route **urls.py** file:

```python
urlpatterns = [
  path("catalogue/", views.Catalogue.as_view(), name="catalogue"),
]
```

-   How to access data rendered into a template:

```html
<!-- /templates/book_list.html -->
 
{% for book in book_list %}
<tr>
  <td>{{ book.title }} </td>
  <td>{{ book.author }} </td>
</tr>
```

-   Make use of Django’s default 404 page with `Http404`.
-   Used dynamic URLs in templates and made use of specific views.

Django’s is a swiss army of tools, so if you’d like to learn more about
what can be done with Django feel free to look at the main
<a href="https://docs.djangoproject.com/en/3.1/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a>.

### Instructions

We provided you with a sandbox in order to experiment with different
toolsets that Django can provide. Explore what other <a
href="https://docs.djangoproject.com/en/3.1/topics/class-based-views/generic-display/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">generic views</a> you can use, and
challenge yourself further by adding other templates that you might find
useful!

# The Django Djitney

The Codes-ville Official Department of Transportation needs your help!
They recently finished building the routes for their new commuter train,
the Django Djitney, and need someone to create an easy-to-use site for
commuters to be able to see the train routes. They’ve supplied the train
routes in a database, but they need your help to create a site that they
can use to show the different routes across all the stations, as well as
update them when there are changes in the routes.

Each jitney line takes different routes through the stations. You can
take a look through **models.py** to see how each model relates to each
other. But the basic breakdown is that a “stop” consists of a “line”, a
“station”, and a “stop number”.

The town wishes to have the ability to view, edit, update, and delete
lines, stops, and stations. They’ve outsourced the creation of the
templates, and they’ve supplied the models on their own. All you’ll need
to do is create the views and link them up to the templates.

## Instructions

## Understand the Context

1.

The project has been pre-populated with everything required to run the
application except the views and the URLs.

Take a look at the models for the **routes** app. There should be three:
`Line`, `Station`, and `Stop`.

Examine their fields, and take a look at the comments to understand what
each field represents and how the models are connected to one another.





2.

Take a look at the templates that have been provided. All of the
templates already exist for all of the views that you will need to
create. The templates also help to indicate what paths you will need to
make in **routes/urls.py**, and what objects will need to be available
for each page.





3.

The forms for the **routes** app will come in handy when you need to
implement your “Create” and “Update” views. Look over **forms.py** to
see how this file will be used in the overall project.





4.

Now navigate to **views.py** to see what’s imported for you and the
provided class. After you’ve taken a look at the setup that’s been
provided, let’s try to run the provided code and see what happens in the
browser! As you add your own code, run it so that you can see the
application update while you work on it.





## Implement the views for Lines

5.

The town has named each of their jitney **lines** after different
species of python! The town currently has three lines in its database.
We’ll create a `ListView` that can display the different lines using the
**routes/lines.html** template. Then we’ll add a `CreateView`,
`UpdateView`, and `DeleteView` to allow the town to edit the lines as
they please.

Let’s start by importing all of the generics we’ll require. You should
have opened **routes/views.py**, import the `ListView`, `CreateView`,
`UpdateView`, and `DeleteView`.





6.

The `Line` model is already imported in **routes/views.py**, from
`.models`.

Create a new `LinesView` class that inherits from the `ListView` you
imported. Populate the `template_name` and `model` attributes of your
class to bind the **routes/lines.html** template and `Line` model to
your class.





7.

Notice that your code didn’t do anything just yet – that’s because you
need a `path`.

In **routes/urls.py**, add a `path` that calls the `LinesView` we made
as a function. Your path should ensure that your page is visible at
`lines/`. Use the **routes/base.html** template (with the `<nav>` inside
linking to each of the pages) to infer what the `name` attribute for
that `path` should be.





8.

Now that you’ve got your `ListView`, you need to add the functionality
to be able to **create** a new jitney line. You’ll need to:

-   Add a `CreateLineView` class that uses the `CreateView` generic.
    -   Make sure it uses the `Line` model!
-   Add fields to `CreateLineView` that specify:
    -   `form_class` as `LineForm` (this is already imported for you and
        you can see the forms in **routes/forms.py**).
    -   `template_name` as `"routes/add_line.html"`.
-   Add a new `path` for this view in **routes/urls.py**.
    -   For the `name` argument, look over **routes/lines.html** to find
        the `name` that the template expects for the `CreateLineView`.
    -   Ensure that the page is available at `"lines/new/"`.





9.

Create an `UpdateLineView` to help Codes-ville change the name of their
jitney lines at their leisure. You’ll need to:

-   Add an `UpdateLineView` class to **routes/views.py** that inherits
    from the `UpdateView` generic to update the `Line` model
    -   Add a field that tells the view to use the
        **routes/update_line.html** template.
    -   Add another field tells the view to use the `LineForm` that you
        imported in the previous step.
-   Add a new `path` for this view in **routes/urls.py**.
    -   For the `name` argument, look over **routes/lines.html** to find
        the `name` that the template expects for the `UpdateLineView`.
    -   Ensure that the page is available at `"lines/<pk>/update/"`.





10.

The town should also be able to delete any lines that have to be
decommissioned.

Create a `DeleteLineView` that they can use for this. Follow the general
pattern for adding a new View, and specifically for `DeleteLineView`,
add a `success_url` property with a value of `"/lines"`.

Then, add a `path` so that the view is accessible at
`"lines/<pk>/delete/"` with `name="delete_line"`.





11.

Before you can test the functionality you’ve built for viewing,
creating, updating, and deleting lines, you’ll have to edit the **base**
template to uncomment the link corresponding to `lines` in the navbar.

Navigate to **routes/base.html** and find the `<nav>` element. You’ll
notice that the links for the `lines`, `stations`, and `stops` pages are
commented out. Uncomment only the `lines` link in the `<nav>`, and then
refresh the application in the browser pane on the right.

You can check if your `LinesView` worked by navigating to
`localhost:8000/lines` in the web browser, or clicking that link in the
navbar. You should see the three jitney lines that have been installed
by the town and you have a `+` button to add new `Line`s!





12.

Test your `CreateLineView` by adding some new lines. Hit the add button
below the lines table, and add a new line called
<a href="https://en.wikipedia.org/wiki/Morelia_spilota"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">“Carpet”</a>, and another called
<a href="https://en.wikipedia.org/wiki/Green_tree_python"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">“Green Tree”</a>. These should show up in
the lines table now, thanks to the `LinesView` we created earlier.

Now, the town wishes to be more specific with the name of the “Carpet”
line, and rename it to the
**<a href="https://en.wikipedia.org/wiki/Morelia_spilota_cheynei"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">“Jungle Carpet”</a>** line to indicate
the correct subspecies. Click on the **Carpet** line in your lines table
to be taken to your update page and validate that you can rename it to
**Jungle Carpet**.

Lastly, validate your `DeleteLineView` by clicking the ❌ next to the
“Green Tree” route. Codes-ville has agreed that four lines is more than
enough to service their commuters for now. After you’ve confirmed the
delete, “Green Tree” should no longer appear in the lines table.





## Implement the views for Stations

13.

Now that your lines are all set up, you’ll need to be able to view,
create, update, and delete the **stations** that these lines will visit.
You should already have seen these stations populated on the **home**
page and **lines** page, but now you’ll give them their own table on
their own page. Similar to what we did for **lines**:

-   Start by creating a `ListView`. Create a new view called
    `StationsView`.
-   Bind it to the `Station` model, and use the **routes/stations.html**
    template.
-   Add a `path` to **routes/urls.py** so that we can access our
    `StationsView` at `"stations/"`





14.

Implement the `CreateStationView`, so that the town will be able to add
new stations as they come into operation.

The `CreateStationView` should:

-   inherit from the `CreateView` generic
-   use the `Station` model
-   use the **routes/add_station.html** template
-   use the `StationForm` (imported from `.forms` like you did with
    `LineForm`)
-   have a `path` so that you can use it at `"stations/new/"`, with the
    `name` as specified by the **routes/stations.html** template on the
    “add” button





15.

The `Station` model has an additional field: `accessible`. The town uses
this to indicate whether or not the station has accessibility features
for their commuters, such as elevators or wheelchair-accessible
entryways to the jitney platforms.

Implement an `UpdateStationView`, so that as the town of Codes-ville
adds accessible accommodations to their older stations, they’re able to
update the database to reflect the improvements.

The `UpdateStationView` should:

-   inherit from the `UpdateView` generic
-   use the `Station` model
-   use the **routes/update_station.html** template
-   use the `StationForm` like you did for the `CreateStationView`
-   have a `path` at `"stations/<pk>/update/"`, with the `name` as
    specified in **routes/stations.html** on each entry of the station
    table.





16.

Implement a `DeleteStationView`, so that the town can delete the
stations that are just too out-of-date to be renovated and must be
demolished.

The `DeleteStationView` should:

-   inherit from the `DeleteView` generic
-   use the `Station` model
-   use the **routes/delete_station.html** template
-   have a `success_url` of `"/stations/"`
-   have a `path` at `"stations/<pk>/delete/"` with the `name` that’s
    used on the ❌ button in the **routes/stations.html** template





17.

The functionality for viewing, creating, updating, and deleting stations
for the Django Djitney rail system should be complete! Time to test out
your functionality.

Like we did for **lines**, update the **routes/base.html** template to
uncomment the link in the `<nav>` for `stations`. Then, when you
refresh, you should be able to see the new link in your app’s navbar to
test out the functionality you’ve implemented for stations!

If your views were correct, you should see a new entry in the app’s
navbar now, **Stations** that you can click to view all the stations
that the town currently has in place. This is your `StationsView` at
work!





18.

Let’s try adding a new station. Use the “add” button under the table to
test out your `CreateStationView`, by adding a new *accessible* station,
<a href="https://en.wikipedia.org/wiki/Basuto_pony"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><strong>Basuto</strong></a> station.





19.

The town of Codes-ville has done some renovations! The
<a href="https://en.wikipedia.org/wiki/Exmoor_pony"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><strong>Exmoor</strong></a> station is
now accessible.

Use your `UpdateStationView` to update the **Exmoor** station so that it
is marked in the stations table as accessible.





20.

The **Exmoor** station is remarkably close to the worn-down
<a href="https://en.wikipedia.org/wiki/Kerry_Bog_Pony"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><strong>Kerry Bog</strong></a> station.
Since the town’s new **Exmoor** station is newer and accessible, they’ve
decided to demolish the **Kerry Bog** station.

Use your `DeleteStationView` to delete the **Kerry Bog** station.

After this, you’ll have tested all the functionality you’ve implemented
for stations!





## Implement the views for Stops

21.

**Stops** are used to create a route for a jitney **line** through the
different **stations**. As you did for lines and stations, you’ll need
to create the views and add URLs so that the town can manage the stops
for the jitney line. Like before, start with the `ListView`. You should:

-   Create a `StopsView` that inherits from the `ListView` generic
-   Set the `model` as `Stop`
-   Use the template at **routes/stops.html** for your `StopsView`
-   Make the page available at `"stops/"` using a `path` with
    `name="stops"`





22.

Implement a `CreateStopView`, so that the town can add stations to
different jitney routes.

Your view should:

-   inherit from the `CreateView` generic
-   use the `Stop` model
-   use the `StopForm`, imported from `.forms`
-   use the template at **routes/add_stop.html**
-   be used in a `path` available at `"stops/new/"`, with
    `name="create_stop"`





23.

Now, add an `UpdateStopView`, so that the town can change stop numbers
around to make routes more convenient for commuters during rush hour.

The `UpdateStopView` should:

-   inherit from the `UpdateView` generic
-   use the `Stop` model
-   use the `StopForm`, imported from `.forms`
-   use the template at **routes/update_stop.html**
-   be available in a `path` at `"stops/<pk>/update/"`, with
    `name="update_stop"`





24.

Lastly, you’ll need to add a `DeleteStopView`. Using what you’ve
learned, set the:

-   generic this class will inherit from
-   the model
-   the template
-   a `success_url`
-   the correct `path()`






25.

Time to test out your functionality! Like you did before, you’ll have to
uncomment the link in the `<nav>` for **stops**.

Once you do that and refresh the browser, you’ll see a new link,
**Stops**, in the navbar. Click it to see what your stops page looks
like!

Check for any errors, and try to view your stops. After that, try to
insert a stop at **Basuto** station on the **Monty** line, between
**Cob** and **Anadolu** station.

To do this:

-   Update stop number **6** on the Monty line at Anadolu station to
    have stop number **7** instead.
-   Add a new stop, with:
    -   the line set to **Monty**
    -   the station set to **Basuto**
    -   the stop number set to **6**





## Djazz It Up!

26.

Congratulations! You’ve completed your app for The Django Djitney. The
town of Codes-ville owes you a sincere thanks!

Now that you’ve implemented the base functionality for the app, here are
some things you can try to enhance the app:

-   Add a `color` field to lines, like you may have seen on your local
    public transportation lines. Update the templates so that the text
    of each line in the **Lines** table is colored according to the
    line’s color.
-   Add more fields to a station, such as **age** or
    **last_cleaned_date**, to help the town manage the maintenance for
    the stations. Update the templates so that these fields are shown on
    the **Stations** table
-   Update the models and views to add a **schedule** to the jitney
    lines. Show the times that each train will stop at a given station.





## Solution

```python

```

[Django Project The Django Djitney](https://www.youtube.com/watch?v=YVeCwpAb2ic&list=LL&index=1)

hey everyone this is rob with codecademy i'm a software developer based out of seattle washington in this video we're going to walk through the django project the django jitney we're going to take what we have learned about views in django 

to complete this project to complete this project you'll need to be familiar with how to use class-based views how to attach the view function to a route how to access data rendered into a template and finally how to use dynamic urls and templates and make use of specific views alright let's get started okay  

you've been hired by the codesville official department of transportation they need someone to create an easy to use site for commuters to be able to see the train routes and are asking you to help create a site that they can show the different routes across all the stations as well as update them when there are changes to the routes the models have all been provided for you which we'll take a look at in a moment but the basic breakdown is that a stop consists of a line a station and a stop number what they need from you is the ability to view edit update and delete line stops and stations now the good news is that the models and the templates have already been outsourced and taken care of all we need to do is focus on creating the views to link up those models and templates so let's get started 

okay in this first section we're going to take a few moments to understand the context as we shared in the intro the models and the templates have all been created for you so we'll go ahead and start by taking a look at the models.pi file it should already be open for you but if it isn't you can go to the file explorer the name of our app routes and then you can find the models.pi file you'll see that three models have already been created line station and stop it'll be important for you to take a moment look at the fields that have already been created such as name methods such as get absolute url that will take you back to the lines page and we can see where we have overridden the string method next we have the station model we see a name field and an accessible field which we'll talk about in a later step a get absolute url function which will take a user back to stations and where we override the string method and then finally our stop model we can see that this snippet of code ensures that no line can have two stops with the same stop number we've also provided a get absolute url as well taken user back to stops and then finally every stop will consist of a line that it belongs to and a station that it belongs to and we can see what will happen upon the deletion of our line or a station to our stop as well as a field for stop number and like the previous two models we override the string method okay let's mark step one as complete we have an idea of what the model's context is 

now let's go ahead and take a look at the templates have been provided in your file explorer we'll go to templates and routes if we take a look at lines for instance we can see that we have addline delete line lines and update line taking a deeper look at the templates will indicate what paths you're going to need to make in our routes urls.pi file as well as what objects need to be available for each page 

and while we're here let's go ahead and take a look at formstop pi for step three the forms will come in handy whenever we need to implement a create or update views so we can see that we have imported forms in and from models we've imported in our stop line and station model and we have classes for stop form line form and station form which we'll take advantage of in our views when we create and update views 

alright the next step in taking a look at the context of our project will be to go to our views.pi file it should already be open for you if it's not again just go to the file explorer and we should see it at the root of our project views.pi we can take a look from forms we've imported stock form line form and station form that we just looked at as well as importing in template view from our django views generic module and as we add code through this project we'll go ahead and run it from time to time to see our application update while we work on it okay step four is complete as we've gained a good context of our project 

let's get started with implementing the views for lines each of the lines is named after a different species of python and there are currently three in the database now our first step in views.pi is to create a list view that can display the different lines using our routes lines.html template after that we'll go ahead and add the create view update view and delete view which will allow the town to edit these lines as they desire so let's begin by importing in list view from django views generic so to import in create view update view and delete view we'll need to get this from django.views.generic.edit that module we will import in create view update view and then finally delete view all right let's go ahead and save our code and mark step 5 is complete and again at any point if you do get stuck you can always click on get a hint for instance if you didn't know how to import in the create view update or delete view from the hint we can see that we import those other generic views from django views generic edit awesome 

okay let's get started with step six our line model has already been imported in you can see that up above on line two so let's go ahead and create a lines view class class lines view and this is going to take in the argument of list view which we imported in on line five and now we're going to populate the template name and the model for the template name we can see that we're supposed to use routes lines.html and then for the model we'll set it to line and i'll continue to save my code along the way and sometimes when you save it if you do encounter a blank screen like i just did i'll hit the refresh in the browser and we should see that everything's returned to how we would expect so mark step 6 is complete 

now in step 7 we want to go to our urls.pi file and add a path that calls the lines view so path lines now our view is going to be views dot lines view this is our class so now we need to call the as view method and then we're going to set the name value equal to what we find in our base.html file we can find this in the file explorer and when we scroll down to our nav we'll see some text that says lines and the name we want to use is the name lines as well so i'll close that up and in urls.pi for our name we'll go ahead and use the string lines perfect now let's save our code everything looks like how we would expect in the browser lessmark step 7 is complete 

and we'll move on to step 8. with our list view created now we're going to add some functionality to be able to create a new jitney line so we'll go ahead and add a class create line view and this is going to take in a create view argument our template name is going to be routes add line.html our model is going to be set equal to line and our form class is going to be set to line form that we imported in at the top of our file with our fields complete let's go ahead and add a new path for this view and routes urls.pi our page is going to be available at lines new our view is create line view and on our class we're going to call that as view method and then for our name argument we'll go ahead and take a look at the routes lines.html file so routes line.html and we can scroll down to see where something is being created we can see that within this anchor tag we have create underscore line as our name argument let's go ahead and save our code and mark step 8 as complete 

now on to step 9. we'll return to our views.pi file and work on our update line view so class update line view is going to take an argument of update view again that we imported in at the top of our file the template name that we see we should use is going to be set equal to routes the name of our app update line.html our model is going to be line and our form class will be line form and now we need to add a path for this view in our urls.pi file so path and we want to make sure that this is available at lines and then the primary key value update so this will be our update line view class where we call the as view method on it and the name argument will come from our lines.html file we can see our href with the name update line so that's the value we're going to use in our urls.pi file update line and we can save our code and everything's still appearing as we would expect all right let's go ahead and mark step nine is complete 

now for our crud functionality we've accomplished create read and update now all we have to do is work on delete so in step 10 we want to be able to delete any lines that have been decommissioned so we're going to create a delete line view so let's go to our views.pi file and we're going to go ahead and follow the general pattern of adding a new view specifically the delete line view so let's do that class delete line view and we'll go ahead and pass in the generic delete view we'll set our model equal to line and our template name we'll go ahead and set equal to routes delete underscore line.html and in this case we don't need a form class but we will use a success url and we'll go ahead and set that equal to slash lines perfect now the final part for step 10 will be to go to our urls.pi file and we want to add a path so that our view is accessible at lines pk delete then we'll use our views dot delete line view and we'll call it the as of view method and then finally our name is provided for us name is delete line okay let's mark step 10 as complete 

and we'll move on to step 11. we're going to start to test the functionality of what we built for viewing creating updating and deleting lines now to do that we're going to need to uncomment out the link corresponding to lines and then have bar so we can go to our routes slash base.html file and we're going to go to the nav element and we can see where lines is commented out so i'm going to delete the comment surrounding our lines anchor tag and save our code and you may need to refresh your browser and we should see our lines link now on our index page okay so we should be able to go to localhost 8000 lines or click on our lines link and that's going to take us to where we want to be and we should see at the bottom of our page a plus button for adding lines so let's make sure we mark step 11 as complete 

and we'll move on to step 12. we'll go ahead and test our create line view by adding some new lines we'll add the carpet line and we can see that it has appeared and we'll go ahead and add green tree and there are both of our lines now these lines both show up thanks to our lines view that we created earlier now we can see the town wants to be more specific with the name of our carpet line and rename it jungle carpet so let's go ahead and click on carpet and we'll change the name we'll update the name actually to jungle carpet and we hit update we see that is no longer carpet but jungle carpet perfect we know our update view is working correctly now lastly we want to validate our delete line view so next to our green tree route so you can scroll over to the side of your page or you can expand the browser here next to green tree i'm going to hit the red x and we're going to confirm that we want to delete our green tree line and we have successfully removed green tree from our lines table awesome let's go ahead and mark step 12 as complete 

and move on to step 13. we're going to implement views for stations in our browser i'll go ahead and just return to our home page now we'll dive into creating cred functionality for stations we'll begin with our list view so class stations view and this will take an argument of list view our template name that we're going to use will be set equal to routes stations.html and our model will be station that we imported in at the top of our file now let's go to urls.pi and we want to access our station views at stations we'll name our views dot stations view and we'll call that as view method on this class and we could go to the base.html file to see that the name argument should be all right when mark step 13 is complete 

and move on to step 14 we want to implement the create station view now all right so under the class create line view we'll add a class create station view this will accept the create view argument our template name is going to be routes add station.html our model is going to be station and our form class is going to be set equal to station form okay we want to account for this path in our urls.pi file so under lines new we want to be able to use this at stations new views dot create station view we'll call the as view function for the name argument we can find this in routes stations.html so let's go there routes stations.html and in this anchor tag we can see that the name argument we want to use is create station create underscore station now we'll save our code make sure step 14 is marked as complete 

and move on to step 15. now our station model as we looked at earlier has a field accessible and this is going to be used by the town to indicate whether station has accessibility features for commuters things like elevators and wheelchair accessible entryways for the platforms so we'll go to our views and we want to class update station view class update station view and we'll pass in update view our template name is going to be routes updatestation.html our model will be station of course and then our form class will be station form just like our create station view class up above now let's go to our urls.pi file and we want to add a path that accounts for this view so underneath our path to lines primary key update we'll have a path for stations our primary key update views update station view class where we call the as view method and our name is specified in our routes stations.html file you can go ahead and revisit that if you want but the name argument will be update station we'll save our code and mark step 15 is complete 

and on to step 16. so far for our crud functionality we have create read update completed now we're going to work on our delete station view so we'll return to our views and under delete line view we're going to create a class delete station view so take an argument of delete view and a template name set equal to routes delete station dot html a model of station and we'll add a success url of stations this is where we'll go when we successfully delete a station now let's account for this in our urls underneath where we delete our line we'll create a path at stations then pk primary key delete views dot delete station view as view method and if we go to our stations.html we'll find that the name argument on the x button is going to be delete station let's save our code and mark step 16 as complete 

and before we test our cred functionality let's go to our base.html file and in our nav we'll go ahead and find the text that says stations within the anchor tag and we'll remove this comment now upon doing that if we save our code we can see that stations now appears so let's click on stations and we can see all of our stations which means that our station's view view is working as we would expect so let's make sure step 17 is marked as complete 

and move on to step 18. let's test out our create functionality so we'll use the add button at the bottom of the screen and we'll add a new accessible station vasuto and make sure that you've clicked accessible and we'll press submit and there it is and we see the accessibility sign next to it perfect we'll mark step 18 is complete 

and move on to step 19. now we're going to test out our crud update functionality we'll find our exmor station which is now accessible so let's go ahead and click on it and then we'll click on the accessible checkbox and press update and there it is we see the accessible symbol next to it perfect 

now we're in our situation where our carry bog station is actually close to our exmor station and because our exmor station is already enhanced with accessibility we decide that we're going to get rid of our carry bog station so we'll click on the x in actions and we'll confirm we want to delete our station and it's no longer there and we were redirected to our stations page perfect all right well mark step 20 is complete 

and we're going to work on implementing our stops in the browser i'm going to return to our home i'll close the base.html file and in our views.pi underneath our lines view and stations view will work on our stop cue so class stops view we'll check the argument list view template name of routes stops.html and a model of stop that we imported in at the top of our file now let's account for this in our urls.pi file and under lines we'll have a path for stops views our stops view class that we call the as view method on and the name argument is going to be stops now we'll save our code 

and move on to step 22. we're going to implement the create functionality of crud so in our views we'll go under where we have the create line view and create station view and we'll add a class create stop view which will take an argument create view and a template name which will be routes add stop.html our model will be stop and our form class will be stop form that we imported at the top of our file now let's account for this in our urls.pi and underneath the path where we create new stations i'm going to add a path for stops new and our view is create stop view and our name argument is going to be create stop all right let's save this code 

and move on to step 23. let's work on our update functionality so in reviews.pi under our update line view class and updatestationview class we'll add a class update stop view this will take update view as an argument template name will be set to routes update stop dot html our model will be stop of course and our form class will be stop form now let's account for this in our urls.pi file we'll add our path at stops primary key update views update stop view dot as view and our name argument is going to be update stop now we'll save our code and create read and update functionality has been established we've completed our create read and update functionality 

now let's finally work on our delete functionality in our views we'll go to the bottom of our file and we'll create a class delete stop view our argument will be delete view our template name will be set equal to routes delete stop dot html our model is going to be stop and we're going to need a success url for when a stop is deleted so success url is going to be stops so let's account for this view in our urls.pi file and underneath our path for lines pk delete and stations pk delete we want to account for the path stops the primary key of our stop and delete views will be delete stop view and the name argument is going to be delete stop so let's make sure that we've saved our code 

and let's test our crud functionality for our stop views to do that we'll go to our base.html file so let's go ahead and uncomment out our stops line we'll save our code and we see that it now appears let's go ahead and click it and see what happens all right we now have our stops page now we'll go ahead and check for any errors by trying to view our stops so i can click on our line articulated and i could even update it if i would like okay now that we've done that let's go ahead and insert a stop at basuto station on the monty line between cobb and on a doulo so to do this we're going to go ahead and update stop number six we'll go ahead and find that monty this is our monty line at the anode station and we want to list this stop as seven instead of six so we'll change that to seven and we'll hit update and we can now see that it is stop number seven okay now let's go ahead and add a new stop so we'll click the add button the line is going to be monty the station will be basuto and the stop will be set to six and there it is we can now see it listed within our stops perfect let's mark the step as complete and move on to our next step 

all right congratulations in step 26 we've given you some ideas for how you can further enhance your app and we've given you a few suggestions below on how you might do that in this project we got a lot of practice with using class-based views and how to attach those to a route allowing our app to access specific data to be rendered in the template we also got plenty of practice using dynamic urls and making use of specific views great job this is rob with codecademy happy coding 