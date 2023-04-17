# What is a database and SQL

Before we continue our Djourney into *models*, we need to get a sense of
*databases* — because databases are where we will ultimately store our
models’ information and provide the structure for our projects’ and
apps’ data.

As mentioned earlier in the introduction,
<a href="https://www.sqlite.org/index.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">SQLite</a> comes pre-installed with
Python. We’ve also configured this database to work on our site for your
convenience as you progress through Django lessons and projects.

The “Lite” part of SQLite’s name implies that it’s a lightweight
database perfect for small, personal applications. The other portion
“*SQL*“, pronounced like the word “sequel”, refers to the
<a href="https://en.wikipedia.org/wiki/SQL"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Structured Query Language</a> which is
used to interact with the database. But, as part of Django’s “swiss army
knife” approach, developers can still interact with their databases even
without knowing SQL because of Django’s <a
href="https://en.wikipedia.org/wiki/Object%E2%80%93relational_mapping"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Object-Relational Mapping</a>, or *ORM*.
Simply speaking, we’re able to write Python code to interact with our
SQLite database!

# What is SQLite

Learn about the SQLite database which comes pre-configured for Django.

In this article, we will be exploring the extremely prevalent database
engine called <a href="https://www.sqlite.org/index.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">SQLite</a>. We will describe what it does
and its main uses. While you don’t need to learn SQL for Django, it’s
helpful to get an overview of what it does and how it works with SQLite.

## What is SQLite?

SQLite is a database engine. It is software that allows users to
interact with a relational database. In SQLite, a database is stored in
a single file — a trait that distinguishes it from other database
engines. This fact allows for a great deal of accessibility: copying a
database is no more complicated than copying the file that stores the
data, sharing a database can mean sending an email attachment.

### Drawbacks to SQLite

SQLite’s signature portability unfortunately makes it a poor choice when
many different users are updating the table at the same time (to
maintain integrity of data, only one user can write to the file at a
time). It also may require some more work to ensure the security of
private data due to the same features that make SQLite accessible.
Furthermore, SQLite does not offer the same exact functionality as many
other database systems, limiting some advanced features other relational
database systems offer. Lastly, SQLite does not validate data types.
Many other database software would reject data that does not conform to
a table’s *schema*, how a table’s data is organized. However, SQLite
allows users to store data of any type into any column.

SQLite creates schemas, which constrain the type of data in each column,
but it does not enforce them. The example below shows that the id column
expects to store integers, the name column expects to store text, and
the age column expects to store integers:

```sql
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

### Uses for SQLite

Even considering the drawbacks, the benefits of being able to access and
manipulate a database without involving a server application are huge.
SQLite is used worldwide for testing, development, and in any other
scenario where it makes sense for the database to be on the same disk as
the application code. SQLite’s maintainers consider it to be among the
<a href="https://www.sqlite.org/mostdeployed.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">most replicated pieces of software in the
world</a>.

### Conclusion

You now know about the database software that comes pre-configured for
Django. Congratulations! For more info, check our article on other
<a href="https://www.codecademy.com/articles/what-is-rdbms-sql"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Relational Database Management Systems</a>.


# Modeling Real Life Objects

This module will showcase how Django uses models to represent real-life
data and how to set up a database.

One big reason we make apps is to solve real-life problems. To do so, we
need to use information that maps closely to real life as well!

Django addresses this issue by using *models*. Models are how real-life
objects get represented in a Django application. Then to store this
information, we need a database. Conveniently, Django recognizes how
common of an issue this is for developers and has a system set up for us
to use.

<img
src="https://static-assets.codecademy.com/skillpaths/django/first_app/django_mtv_diagram_bg.svg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Django&#39;s MTV design pattern showing how models supply the data, views determine what data to show, and templates displaying the data" />

Click next to see what Django offers!

#  Models and Databases

## What are Models

We’ve seen firsthand how Django uses the <a
href="https://static-assets.codecademy.com/skillpaths/django/first_app/django_mtv_diagram_bg.svg"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Model-Template-View (MTV)</a> pattern to
bring our apps to life. This time around, we’ll focus on the *model*
portion of this pattern which deals heavily with the data in our app —
this means we’ll also dive into the database!

We can think of models as representations of everyday objects. These
models maintain key characteristics/properties of the objects used in
our app. Consider these three objects: a rose, a daisy, and a tulip.
They are flowers. `Flower` could be our model name and correspond to the
table name in our database. The model might have characteristics like
`petal_number` and `petal_color` which correspond to field names (think
of them as column headings) in our database.

Now imagine if we were creating a model for our users — trying to
account for every single thing about a person would be almost
impossible! Instead, we have to focus on the really important properties
we want in our model that will later be stored as data in our database.
How data gets organized in the database is known as a *schema*.

Also, notice that we mentioned **models** (plural) — in our apps, we’ll
often work with more than just one. Therefore, we have to consider how
models interact with each other and what relationships exist. The
persistence of model data and how different models interact will drive
the flow of our app!

In this lesson, we’ll go through:

-   How to think through schemas
-   Creating and customizing models
-   Connecting the Models with the Database

With that information out of the way, let’s Djan**go**!



Review the GIF and see how everyday objects get translated into models.



<img alt="A GIF showing how real-life objects, like humans and dogs, can be converted into models used in a database by abstracting core characteristics and retaining that information in said database. " src="https://static-assets.codecademy.com/skillpaths/django/models-and-db/django_models_and_fields.gif" class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Creating a Schema

Before we start writing code and committing information to our database,
we need to take some time to consider the **shape** of the data that
goes in. Some key questions are:

-   What models do we want to create?
-   What model properties do we need to keep?
-   How do different models relate to each other?

As mentioned earlier, thinking through this process means that we’re
coming up with a *schema*, which is a layout of the structure of our
database represented by tables, similar to
<a href="https://en.wikipedia.org/wiki/Spreadsheet#Usage"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">spreadsheets</a>. Each table stores the
specific and crucial information about a model.

Let’s work through a concrete example. For our web app, we want to
create a Vet Office tool to help book appointments. So we have to ask
ourselves (and/or our developer friends) what information do we need to
make an “appointment”?

First, we need a table for appointments. And we know that an appointment
has a date and time, and also a patient (pet). We’d also want each
appointment to be unique, so each one should have their own ID. After
constructing our appointment table, we’d realize we need to also store
patient information! Like appointments, we’d have to figure out what
information is vital for storage.

This thought process continues until we’ve mapped out how our tables
should look like. By end of this process, we’ll have a completed schema
— take a glance over at the provided image.

In this schema, we can see how different models **relate** to each other
— an owner has patients (pets), and patients have appointments. These
relationships are maintained by our SQLite *relational database* by
connecting different tables together.

For this lesson, we’ll simplify the process and focus on the two models
`Owner` and `Patient` (`Appointment` will be created in a later lesson).



Look over the provided image to see the shape of our schema used in the
Vet Office project.



<img src="https://static-assets.codecademy.com/skillpaths/django/models-and-db/schema_table_transparent.svg" alt="Layout of the tables used in the Vetoffice app. There are three tables, Owner, Patient, and Appointment.
The Owner table has an ID, FirstName, LastName, Phone.
The Patient table has an ID, OwnerID, AnimalType, Breed, PetName, Age.
The Appointment table has an ID, PatientID, Date, Time, and User." class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Creating a Model

We’ve thought through the schema and our database was set up by default
when we first created our project. Time to create our models!

Every time we create a new app, Django provides us with a folder
structure for our work which includes a file called **models.py** with
the following starter code:

```python
from django.db import models
 
# Create your models here.
```

To create a model, we write a class, like so:

```python
class Flower(models.Model):
  ## Define attributes here
  pass
```

Notice that our model actually inherits from the `Model` parent class
`django.db.models.Model` module. These models will later inform the
database to use this schema to build its tables. In the example above,
our database will know that incoming data records will contain
attributes of our flowers, like perhaps, petal color, number of petals,
average height, etc. For now, we’ve added the `pass` keyword to avoid
any errors since Python doesn’t allow for empty classes.

Let’s now create our first models!



**1.**

The file **vetoffice/models.py** is opened in the code editor.

1.  Under the provided comment, create a model called `Owner`.
2.  In the body of the class, add in the `pass` keyword to avoid getting
    an error about missing fields.






**2.**

Add another model called `Patient` along with the `pass` keyword.






```python
from django.db import models

# Create your models here.
class Owner(models.Model):
  pass

class Patient(models.Model):
  pass
```

## Adding Model Fields

As we mentioned, models are used to represent real-life objects. We can
mimic and create object attributes in our models using *fields*. Fields
have names and are assigned a type. For example, a `Flower` model can
have a `petal_color` field that expects a string:

```python
class Flower(models.Model):
  petal_color = models.CharField()
```

Django uses specific *field types* to match the expected data with what
will go into the database. Above, we used the <a
href="https://docs.djangoproject.com/en/3.1/ref/models/fields/#charfield"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.CharField()</code> type</a> to
store a short string. We can continue to add to our model and include
other attributes, like `petal_number`.

```python
class Flower(models.Model):
  petal_color = models.CharField()
  petal_number = models.IntegerField()
  # More attributes… 
```

Since we want `petal_number` to be a number, we used the
`.IntegerField()` field type. Django provides a huge variety of field
types for us to specify the data types of our model attributes, check
out <a
href="https://docs.djangoproject.com/en/3.1/ref/models/fields/#model-field-types"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">theField Types Documentation</a> to
explore the entire list of possibilities!

We might also want to add constraints to our fields. For example, we
might want our `petal_color` field to have a max length of 20
characters. We can supply an argument like so:

```python
class Flower(models.Model):
  petal_color = models.CharField(max_length=20)
  petal_number = models.IntegerField(default=0)
```

These arguments give us finer control over what data we want to include
in our database. For `.CharField()` we used `max_length` to limit the
number of acceptable characters to `20`. We can even set default values,
like for `petal_number`, we set `default=0` meaning if we didn’t provide
a value for `petal_number` the value is automatically `0`.

Each field accepts different arguments, so make sure to check the <a
href="https://docs.djangoproject.com/en/3.1/ref/models/fields/#model-field-types"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a>.



**1.**

Let’s continue to build out our `Owner` and `Patient` models, starting
with `Owner`.

In the `Owner` model:

-   delete the `pass` keyword
-   add a `first_name` field that is a field type of `.CharField()`
-   add an argument so `first_name` can take up to `30` characters






**2.**

The `Owner` model still needs two more fields:

-   `last_name` that expects a string with a max of `30` characters.
-   `phone` that expects a string with a max of `30` characters.






**3.**

Great, you can turn your attention to the `Patient` model now. Add in:

-   `breed` as a character field with a max length of `200` characters.
-   `pet_name` as a character field with a max length of `200`
    characters.
-   `age` as an integer field that defaults to `0`.








```python
from django.db import models

class Owner(models.Model):
  # Delete pass and add the Owner fields
  first_name = models.CharField(max_length=30)
  last_name = models.CharField(max_length=30)
  phone = models.CharField(max_length=30)

class Patient(models.Model):
  # Delete pass and add the Patient fields
  breed = models.CharField(max_length=200)
  pet_name = models.CharField(max_length=200)
  age = models.IntegerField(default=0)
```

## Primary Key, Foreign Key, and Relationships

Later on, we’ll use these models to create *instances* (specific model
objects) in our database. With a `Flower` model, we could create
instances with characteristics of flowers like a rose, a sunflower, or a
daisy. Instances then correspond to rows, or records, in our database.

We’d also need our instances to have a unique ID to help us keep track
of each one. These IDs are called *primary keys* and Django helps us
automatically create these unique IDs by incrementing by `1` each time.
For example, if our first `Flower` instance is `rose`, it would have a
primary key/ID of `1`. The second instance, `sunflower`, a primary key
of `2` — then maybe a `daisy` with a primary key of `3`, and so forth:

| name        | ID  |
|-------------|-----|
| `rose`      | 1   |
| `sunflower` | 2   |
| `daisy`     | 3   |

In our apps, we often create multiple models that relate to each other
in some way. For our example `Flower` model, we could have a gardener
tend to flowers! This means we need to create another model called
`Gardener`:

```python
class Gardener(models.Model):
  first_name = models.CharField(max_length=20)
  years_experience = models.IntegerField()
```

Now the question is how do we show this relationship between `Flower`
and `Gardener`? Well, let’s say that a `Gardener` instance can tend to
multiple `Flower` instances, but a `Flower` instance can only have a
single `Gardener`. This means we have a
<a href="https://en.wikipedia.org/wiki/One-to-many_%28data_model%29"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">One to Many</a> relationship, one
`Gardener` for multiple `Flower`s. Conversely, `Flower`s have a Many to
One relationship with a `Gardener`.

To make this connection known, we need to supply `Flower` with a <a
href="https://docs.djangoproject.com/en/3.1/ref/models/fields/#foreignkey"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><em>foreign key</em></a> of a `Gardner`,
i.e. the `Flower` instances know which `Gardener` instance takes care of
it.

```python
# Garden has a one-to-many relationship with Flower
class Gardener(models.Model):
  first_name = models.CharField(max_length=20)
  years_experience = models.IntegerField()
 
# Flower has a many-to-one relationship with Gardener
class Flower(models.Model):
  petal_color = models.CharField(max_length=10)
  petal_number = models.IntegerField()
  gardener = models.ForeignKey(Gardener, on_delete=models.CASCADE) 
```

Notice that we added the `gardener` field using `models.ForeignKey()`
and with arguments. The first argument is `Gardener` because that’s the
model we want this foreign key to come from. Then we add
`on_delete=models.CASCADE` to let Django know to delete the `Flower`
instance if its connected `Gardener` instance is deleted. We’ll cover
more about `on_delete` in a later lesson — for more information check
out <a
href="https://docs.djangoproject.com/en/3.1/ref/models/fields/#arguments"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Django’s arguments documentation</a>.

Hypothetically, we could even supply `Gardener` with a foreign key as
well if we wanted to link `Gardener` to another model, like a `Garden`
for example! These foreign keys tell the database that a one-to-many
relationship exists and the direction of this relationship. There are
other
<a href="https://docs.djangoproject.com/en/3.1/topics/db/examples/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">types of relationships</a>, but let’s
implement a one-to-many relationship with our own models!



**1.**

Let’s consider the relationship between `Patient`s and `Owner`s. To keep
it simple, let’s say that an `Owner` instance can have multiple
`Patient`s — and `Patient`s can only have one `Owner`. In code, that
means the `Patient` needs a foreign key of an `Owner`.

Create an `owner` property for the `Patient` class that has a field type
of `.ForeignKey()` with the first argument of `Owner` and a second
argument of `on_delete=models.CASCADE`.








```python
from django.db import models

class Owner(models.Model):
  first_name = models.CharField(max_length=30)
  last_name = models.CharField(max_length=30)
  phone = models.CharField(max_length=30)

class Patient(models.Model):
  breed = models.CharField(max_length=200)
  pet_name = models.CharField(max_length=200)
  age = models.IntegerField(default=0)
  # Add your code below:
  owner = models.ForeignKey(Owner, on_delete=models.CASCADE)
```

## Field Type Optional Arguments

We can continue to customize our models by supplying fields with
*options*, that specify how data can be inserted into the database.
Django provides <a
href="https://docs.djangoproject.com/en/3.1/topics/db/models/#field-options"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">field option documentation</a>, which
shows a huge list of these options. Let’s go over some common ones
together!

One common option is `null` that can take on a value of `True` or
`False`. This `null` option tells the database if a `field` can be left
intentionally void of information. By default, Django sets `null=False`.
However, we can override the default and set `null=True`. Here’s an
example:

```python
class Flower(model.Model):
  petal_number = models.IntegerField(max_length=20, null=True)
  # Other fields 
```

With the code above, when we create a `Flower` instance, we can set
`petal_number` to `null`.

Another common option is `blank`, which is similar to `null`, but
setting `blank` to `True` means a field doesn’t have to take anything,
not even a `null` value. By default `blank` is `False`.

```python
class Flower(model.Model):
  nickname = models.CharField(max_length=20, blank=True)
  # Other fields
```

Now, when we create a `Flower` instance, we can leave the `nickname`
field blank.

The last one we’ll touch upon is `choices` which limits the input a
field can accept. We can set `choices` by creating a list of tuples that
contain 2 items: a key and a value. Take for example:

```python
class Flower(models.Model):
  COLOR_CHOICES = [
     ("R", "Red"),
     ("Y", "Yellow"),
     ("P", "Purple"),
     ("O", "Other"),
  ]
 
  color = models.CharField(max_length=1, choices=COLOR_CHOICES)
  # Other fields
```

For our `Flower` instance, we can specify its color with the limited
choices provided — meaning our `color` field can only be assigned `"R"`
(for `"Red"`), `"Y"` (for `"Yellow"`), or `"P"` (for `"Purple"`), or
`"O"` (for `"Other"` from the `COLOR_CHOICES` list. With `choices` we
know exactly what data we can accept from users.

We covered 3 options in this exercise, but remember, there are many more
<a
href="https://docs.djangoproject.com/en/3.1/topics/db/models/#field-options"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">field options</a> to explore!



**1.**

Let’s implement `choices` for our `Patient` model, starting with
creating the variables for our tuple’s key values. This implementation
will look slightly different from the provided examples, but it’s the
same underlying concept.

In the `Patient` class, create the variables with the associated values:

-   `DOG` with a value of `"DO"`
-   `CAT` with a value of `"CA"`
-   `BIRD` with a value of `"BI"`
-   `REPTILE` with a value of `"RE"`
-   `OTHER` with a value of `"OT"`

You’ll be using these values later in the list of tuples later.






**2.**

Below your newly created variables, you can create your list of tuples
now.

The list should have a name of `ANIMAL_TYPE_CHOICES` and contain the
values:

-   `(DOG, "Dog")`
-   `(CAT, "Cat")`
-   `(BIRD, "Bird")`
-   `(REPTILE, "Reptile")`
-   `(OTHER, "Other")`






**3.**

Your tuple’s good to go, so you can create the actual field named
`animal_type`. This field should:

-   be a character field
-   have a max length of `2` characters
-   `choices` of `ANIMAL_TYPE_CHOICES`
-   a `default` of `OTHER`








```python
from django.db import models

class Owner(models.Model):
  first_name = models.CharField(max_length=30)
  last_name = models.CharField(max_length=30)
  phone = models.CharField(max_length=30)

class Patient(models.Model):
  breed = models.CharField(max_length=200)
  pet_name = models.CharField(max_length=200)
  age = models.IntegerField(default=0)
  owner = models.ForeignKey(Owner, on_delete=models.CASCADE)
  # Add your code below:
  DOG = "DO"
  CAT = "CA"
  BIRD = "BI"
  REPTILE = "RE"
  OTHER = "OT"
  ANIMAL_TYPE_CHOICES = [
    (DOG, "Dog"),
    (CAT, "Cat"),
    (BIRD, "Bird"),
    (REPTILE, "Reptile"),
    (OTHER, "Other"),
  ]
  animal_type = models.CharField(max_length=2, choices=ANIMAL_TYPE_CHOICES, default=OTHER)
```

## Model Metadata

We’ve supplied our models with plenty of fields and data, but what about
*metadata*? Let’s first define it.

<a
href="https://docs.djangoproject.com/en/3.1/ref/models/options/#model-meta-options"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Metadata</a> is an optional entity within
a model and it is anything that is not a field. Some helpful metadata
can include how to order instances, create human-readable names,
providing a database table name, and more.

To add metadata to a model, we’ll need to nest another `class` called
`Meta` inside the model’s class definition. Let’s use metadata to order
instances as an example:

```python
class Flower(models.Model):
  name = models.CharField(max_length=10)
  # All the other attributes
 
  class Meta:
    ordering = ["name"]
```

In this case, we created an attribute, `ordering` which takes a list of
strings (`["name"]`) that determine the ordering. Later on, when we need
to search for `Flower` instances, the database will return back a list
with the list ordered by the `name` field. We can even reverse the order
by adding a `-` in front of a string like `["-name"]`.

Other metadata work in a similar fashion. Let’s try adding a verbose
human-readable name:

```python
class TropicalFlower(models.Model):
  # Fields and Methods
 
  class Meta:
    verbose_name = "tropical flower" 
```

Without setting this metadata, our model’s name would be
`tropical_flower` by default, here we’ve assigned the verbose name to be
`"tropical flower"`. While our change was subtle, we could provide even
more detail to inform other developers about our model.



**1.**

In the `Patient` class, under the other properties, add the nested class
`Meta` and give it a `ordering` attribute with a value of
`["pet_name"]`.








```python
from django.db import models

class Owner(models.Model):
  first_name = models.CharField(max_length=30)
  last_name = models.CharField(max_length=30)
  phone = models.CharField(max_length=30)

class Patient(models.Model):
  DOG = "DO"
  CAT = "CA"
  BIRD = "BI"
  REPTILE = "RE"
  OTHER = "OT"
  ANIMAL_TYPE_CHOICES = [
    (DOG, "Dog"),
    (CAT, "Cat"),
    (BIRD, "Bird"),
    (REPTILE, "Reptile"),
    (OTHER, "Other"),
  ]
  animal_type = models.CharField(max_length=2, choices=ANIMAL_TYPE_CHOICES, default=OTHER)
  breed = models.CharField(max_length=200)
  pet_name = models.CharField(max_length=200)
  age = models.IntegerField(default=0)
  owner = modelsForeignKey(Owner, on_delete=Models.CASCADE)
  # Add your code below:
  class Meta:
    ordering = ["pet_name"]
```

## Native Model Methods

We haven’t implemented *methods* yet to emulate any model behaviors. The
properties we’ve created for our flowers describe what our flower **is**
or **has**. They are like the nouns and adjectives that describe each
flower. What we are missing though, and why modeling database data is so
useful to begin with, are the **verbs**, the actions associated with our
flowers. These are called methods. Methods are functions defined in our
model that describe the behaviors and actions of our model. If
properties are what our models **are**, then methods are what our models
**do**. For example, our flower might `bloom()` and `grow()`.

In Python classes, which Django uses to create models, there are
built-in methods we can override like the <a
href="https://docs.djangoproject.com/en/3.1/ref/models/instances/#str"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">__str__</code> method</a>. All this
means is we are creating a method using the same name as the built-in
one. This is how we, the programmer, take control, or “override”, the
default behavior of the built-in version:

```python
class Gardener(models.Model):
  name = models.CharField(max_length=30)
 
  def __str__(self):
    return self.name
```

Methods always require the first parameter to be `self`, then we can
provide other optional parameters and add logic within the method body.
In the next lesson, we’ll learn how useful overriding `__str__` is when
we need to retrieve instances of models from our database — by default,
if we didn’t override `__str__` printing our instances would generate
output that’s hard to read like:

```python
<QuerySet [<Gardener:>,<Gardener:>,<Gardener:>....]
```

But with our overridden `__str__` method, we’ll get more helpful
information, in this case, we’re returning the `Gardener` instance’s
name:

```python
<QuerySet [<Gardener: Linnaeus>,<Gardener: Mendel>, <Gardener: Carver >....]
```



**1.**

In the `Owner` model create a `__str__` method that returns the
instance’s `.first_name` and `.last_name` concatenated with a space in
between like:

```python
first_string + " " + second_string
```

That should print out one concatenated string like:

```
John Doe
```

Or

```
Danny Glover
```






**2.**

Let’s also implement a `__str__` method for `Patient` as well. This time
return a string that contains the `.pet_name` and the `.animal_type`
separated by a comma and space (`", "`).

For example, the outputs should look like:

```
Captain Whiskers, Cat
```

Or

```
Mustached Dragon, Reptile
```








```python
from django.db import models

class Owner(models.Model):
  first_name = models.CharField(max_length=30)
  last_name = models.CharField(max_length=30)
  phone = models.CharField(max_length=30)
  # Override your Owner __str__ method below:
  def __str__(self):
    return self.first_name + " " + self.last_name


class Patient(models.Model):
  DOG = "DO"
  CAT = "CA"
  BIRD = "BI"
  REPTILE = "RE"
  OTHER = "OT"
  ANIMAL_TYPE_CHOICES = [
    (DOG, "Dog"),
    (CAT, "Cat"),
    (BIRD, "Bird"),
    (REPTILE, "Reptile"),
    (OTHER, "Other"),
  ]
  animal_type = models.CharField(max_length=2, choices=ANIMAL_TYPE_CHOICES, default=OTHER)
  breed = models.CharField(max_length=200)
  pet_name = models.CharField(max_length=200)
  age = models.IntegerField(default=0)
  owner = models.ForeignKey(Owner, on_delete=models.CASCADE)
  # Override your Patient __str__ method below:
  def __str__(self):
    return self.pet_name + ", " + self.animal_type


  class Meta:
    ordering = ["pet_name"]
```

## Custom Model Methods

In addition to overriding native methods, we can define our own custom
methods!

We can do something simple like returning a boolean:

```python
class Flower(models.Model):
  has_sunlight = models.BooleanField(default=True)
  has_water = models.BooleanField(default=True)
 
  def can_grow(self):
    return self.has_sunlight and self.has_water
```

Above, we defined our custom `.can_grow()` method that checks if the
instance’s `.has_sunlight` and `.has_water` fields are `True`. Notice
that even for custom methods, we need to provide the first parameter as
`self`. We can also provide additional parameters as needed.

Here’s another example that returns a string:

```python
class Gardener(models.Model):
  years_experience = models.IntegerField()
 
  def identify_flower(self, flower):
    return f"I've studied flowers for {self.years_experience}. I believe this flower is {flower.name} and is found in {flower.native_env}." 
```

In this case, we’ve added a second parameter to our method, a `flower`
instance, and returned a string. Both methods do different things but
both help emulate real-life behaviors. Check out <a
href="https://docs.djangoproject.com/en/3.1/topics/db/models/#model-methods"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Django documentation</a> for more
insight!



**1.**

Let’s define a method for `Owner` that checks if they have multiple pets
or not.

Inside the `Owner` class, define a method called `.has_multiple_pets()`
that returns a boolean if the owner does have more than 1 pet. Use the
logic provided below:

```python
return self.patient_set.count() > 1
```

This code checks the related `Patient` model and how many instances
belong to the `Owner`. We’ll cover more of this logic in the next
lesson.








```python
from django.db import models

class Owner(models.Model):
  first_name = models.CharField(max_length=30)
  last_name = models.CharField(max_length=30)
  phone = models.CharField(max_length=30)
  
  def __str__(self):
    return self.first_name + " " + self.last_name

  # Define your custom method below:
  def has_multiple_pets(self):
    return self.patient_set.count() > 1


class Patient(models.Model):
  DOG = "DO"
  CAT = "CA"
  BIRD = "BI"
  REPTILE = "RE"
  OTHER = "OT"
  ANIMAL_TYPE_CHOICES = [
    (DOG, "Dog"),
    (CAT, "Cat"),
    (BIRD, "Bird"),
    (REPTILE, "Reptile"),
    (OTHER, "Other"),
  ]
  animal_type = models.CharField(max_length=2, choices=ANIMAL_TYPE_CHOICES, default=OTHER)
  breed = models.CharField(max_length=200)
  pet_name = models.CharField(max_length=200)
  age = models.IntegerField(default=0)
  owner = models.ForeignKey(Owner, on_delete=models.CASCADE)
  
  def __str__(self):
    return self.pet_name + ", " + self.animal_type

  class Meta:
    ordering = ["pet_name"]
```

## Migrations - makemigrations

From when we first created our project, we’ve configured some database
settings and let our project know about our app in **settings.py**. Now
we need to let our database know about our models.

This step of setting the database to match the structure of the models
is <a href="https://docs.djangoproject.com/en/3.1/topics/migrations/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">called <em>migration</em></a>. Remember,
migrations are needed when we make changes to our models — and we’ve
just made two new ones!

In Django, there are two steps necessary to make this migration happen:

1.  Running `python3 manage.py makemigrations` to create a file with the
    instructions needed for our database to create the proper schemas.
2.  Running `python3 manage.py migrate` to execute the instructions in
    our file to create the actual tables in our database.

We’ll first focus on `makemigrations`. Since we need to use
**manage.py** to execute this step, we need to be in our root folder to
execute:

```bash
python3 manage.py makemigrations
```

Using our hypothetical `Flower` and `Gardener` example, we should see
something similar to:

```bash
Migrations for 'gardens':
  gardens/migrations/0001_initial.py
    - Create model Flower
    - Create model Gardener
```

We can also provide an additional argument after `makemigrations` and
specify a chosen app’s models we want to commit. For instance, if we had
two apps `Garden` and `FlowerShop` and we only wanted to commit the
models for `Garden`, we could execute the command:
`python3 manage.py makemigrations garden`.

The files created from this step live in the **migrations** folder
within our app directory. Our first migration file would begin with
**0001_initial.py**. We can refer to our migrations using the starting
numbers, in this case, it has a migration name of `0001`.

It’s important that every time we need to make a change to the schema in
our database we need to do this `makemigrations` step! Subsequent
migration files will increase the number at the beginning of the file.
For example, the second migration will begin with **0002_xxxxx.py** and
so forth.

We’ll run the <a
href="https://docs.djangoproject.com/en/3.1/ref/django-admin/#django-admin-makemigrations"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">makemigrations</code> step</a> now
and then follow up with the next step in the next exercise.



**1.**

You should already be in the project’s root folder. In the terminal,
type out and execute the command:

```bash
python3 manage.py makemigrations
```

After you’ve created this migration file, check `vetoffice/migrations/`
folder to see that it now has a file called: **0001_initial.py**!








```bash
python3 manage.py makemigrations
```

## Migrations - migrate

With our migration file set up, it’s time to use the code in our file to
make changes to our database.

The command to execute at the terminal would be:

```bash
python3 manage.py migrate
```

Like `makemigrations`, if our project supports multiple apps, we can
pass in the particular app name to the <a
href="https://docs.djangoproject.com/en/3.1/ref/django-admin/#django-admin-migrate"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">migrate</code> command</a> as well.
For example:

```bash
python3 manage.py migrate garden
```

Where `garden` is the name of our app. We should see some output like:

```bash
Operations to perform:
  Apply all migrations: gardens
Running migrations:
  Rendering model states... DONE
  Applying garden.0001_initial... OK
```

After executing the `migrate` command, our database is set up! Under the
hood, Django is <a
href="https://docs.djangoproject.com/en/3.1/ref/django-admin/#django-admin-sqlmigrate"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">handling the SQL commands</a> needed to
make this migration happen — however, that’s beyond this lesson’s scope.

If we need to reverse a migration, Django also makes this possible by
specifying the migration we want to revert back to:

```bash
python3 manage.py migrate <migration_name>
```

Where we replace `<migration_name>` with the name of the migration like
`0001`. Then the database’s schema reverts back to the model from our
`0001` migration!

However, in some cases, migrations cannot be unapplied like if we
dropped a table in a previous migration. In such cases, we’ll get an
`IrreversibleError`. Check out Django’s <a
href="https://docs.djangoproject.com/en/3.1/topics/migrations/#reversing-migrations"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a> for more information.



**1.**

Double check the migration file in the **migration** folder to see
**0001_initial.py** there and ready to go.

Run the `migrate` command in the terminal to finish the migration!








```bash
python3 manage.py migrate
```

## Review

Nice work, we’ve done a lot in this lesson and we’re going to get our
databases populated soon!

In this lesson, we covered:

-   A schema is a structure we design for the data in our application.
-   A model is a Python class that contains characteristics and behavior
    using: attributes, metadata, and methods.
-   Model attributes are implemented using Django field names and
    different field types.
-   Django models can relate to other models. One way of showing this
    connection is to use a foreign key.
-   Django field types accept optional keyword arguments based on
    key-value pairs such as `null`, `blank`, `choices`, `default`, and
    `primary_key`.
-   Models can contain metadata using a nested `Meta` class and
    providing specific attributes.
-   Models can have methods that are functions specific to that model.
    Some methods are inherited from the parent `Model` class.
-   Django requires that we commit our models to the database via a
    two-step migration procedure with `makemigrations` and `migrate`.
-   Django lets us undo one or more migrations by supplying the
    `migrate` command with a named migration.

Our models and database are now all set up and ready to accept and store
information — time to Djump for Djoy!



Feel free to play around with the code provided!

If you want to challenge yourself further consider:

-   Creating another model related `Patient` or `Owner`
-   Adding more custom methods to your models
-   Looking over the SQL file that’s generated from migrations


# CRUD Functionality

## What is CRUD?

So far we’ve set up our models and database. But now it’s important that
we are able to interact with our database to:

-   **Create** new information
-   **Read** specific information
-   **Update** information
-   **Delete** information

These are the four basic functions of a database also known as *CRUD*.
Being able to perform these actions on our database allows us to have
more control over our website and introduce more complexity.

In order for us to communicate with the database and perform CRUD
functionalities, we can use *Structured Query Language*, also known as
<a href="https://www.codecademy.com/learn/learn-sql"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"><em>SQL</em></a>. We can think of it as a bridge
connecting our project and the database together. Raw SQL can be
time-consuming but since we’re using the Django framework, any SQL
needed is handled through the
<a href="https://docs.djangoproject.com/en/3.1/ref/models/querysets/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">QuerySet API</a>. This API, provided by
Django, converts our Python queries into SQL to communicate with the
database.

As we progress throughout this lesson, we will learn how to:

-   Perform each concept of CRUD
-   Learn useful querying methods
-   Query two tables at the same time



<img src="https://static-assets.codecademy.com/skillpaths/django/models-and-db/CRUD-noBG.svg" alt="CRUD is an acronym for Create, Read, Update, and Delete.   " class="gamut-1h2re45-imageStyles-imageStyles e1xtjyf0">

## Creating an Instance

In this exercise, we will use the *Python shell* to create *instances*
of models. The Python shell is a command-line tool that starts up a
Python interpreter which we will use to execute CRUD functionality.

We can run the Python shell by using the following command in the
command-line tool.

```bash
python3 manage.py shell
```

In order to work with our models in the Python shell we need to import
them the same way we would in a Python file:

```sh
>>> from app_name.models import ModelName
```

With our model imported, we can start creating instances (specific
examples) of the model. Let’s say that we’re creating a website like
Twitter that has a `Post` model with the fields `title` and
`description`. To create an instance of our model we need to call our
model and fill out the fields like so:

```sh
>>> post_instance=Post(title="New", description="My Post")
```

Here, we start with a variable called `post_instance` that will store
our instance. Then we used the `Post` model and provided the necessary
arguments and values for the `title` and `description` fields. Note that
while variables are not necessary to create instances, it gives us a
nice way to refer to our created instances later on.

We’ve created our instance but we still need to save it to our database
by calling `.save()` on the `post_instance` variable:

```sh
>>> post_instance.save()
```

With our instance made, we should exit out of the shell. We can exit out
of the Python shell by typing out the command `exit()`. In Windows we
can press <span class="kbd">ctrl</span> + <span class="kbd">Z</span>. On
Mac or Linux <span class="kbd">ctrl</span> + <span class="kbd">D</span>.



**1.**

Launch the Python shell in the terminal using:

```sh
python3 manage.py shell
```

> Note: If your screen size doesn’t allow for the commands to fit on a
> single line, the tests in this lesson’s exercises may fail. To ensure
> that tests are working properly, please stretch out the length of the
> Terminal to fit any commands into a single line.






**2.**

Import the `Owner` model from the **vetoffice** app with the following
code:

```python
from vetoffice.models import Owner
```






**3.**

Create an instance of the `Owner` model using a variable called
`owner_instance` with the fields:

-   `first_name` as `"Vint"`

-   `last_name` as `"Kahn"`

-   `phone` as `"951-262-3062"`






**4.**

Save the instance of the model by calling `.save()` on `owner_instance`.








```sh
python3 manage.py shell
>>> from vetoffice.models import Owner
>>> owner_instance=Post(first_name="Vint", last_name="Kahn", phone="951-262-3062")
>>> owner_instance.save()
```

## Reading Instances

Being able to read instances of a model can give us more information
about what’s stored in the database and the shape of our data. When we
want to view all instances of a model, we can run the <a
href="https://docs.djangoproject.com/en/3.1/ref/models/querysets/#all"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.all()</code> method</a> on the
model like so:

``` sh
>>> every_instance = ModelName.objects.all()
```

Here we created a variable called `every_instance`. In the variable, we
called a model followed by `.objects` followed by the `.all()` query
method. This will return every instance of the model, which should look
something like this:

``` sh
>>> every_instance
<QuerySet [<ModelName: object (1)>, <ModelName: object (2)>]>
```

Our code returns us a *QuerySet*, a collection of objects from our
database. In this QuerySet two instances, each instance associated with
a number which is the instance’s ID number. We should also know that a
QuerySet is indexable, meaning we can grab an instance by their index.

``` sh
>>> every_instance[0]
<ModelName: object (1)>
```

In the above code snippet, we referenced the variable `every_instance`
and searched for the instance in the index position `0`. In the next
line, we get returned the first instance in the QuerySet
(`<ModelName: object (1)>`).

There’s also another way that we can return the first instance of a
model using a query method using the <a
href="https://docs.djangoproject.com/en/3.2/ref/models/querysets/#first"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.first()</code> query method</a>:

``` sh
>>> first_instance = ModelName.objects.first()
>>> first_instance
<ModelName: object (1)>
```

In our code snippet, we created a variable called `first_instance` where
we called `ModelName.objects.first()`. Then, we referenced the variable
`first_instance` and it returned us the very first instance created for
that model.

The `.first()` and `.all()` method (or any other method) can be combined
with other methods to make more complicated queries but we will get
deeper into this as we progress throughout the lesson.



**1.**

Since we’ll be primarily working in the shell for this lesson, run these
commands to get started:

1.  Launch Python shell using:

    ``` pre__3_SOs7YT7NaHjnNunEArSM
    python3 manage.py shell
    ```

2.  Import the `Owner` model using:

    ``` pre__3_SOs7YT7NaHjnNunEArSM
    from vetoffice.models import Owner
    ```

> Reminder Note: If your screen size doesn’t allow for the commands to
> fit on a single line, the tests in this lesson’s exercises may fail.
> To ensure that tests are working properly, please stretch out the
> length of the Terminal to fit any commands into a single line.




**2.**

In the terminal create a variable called `all_instances`.

In the variable use the `Owner` model and run the `.all()` query method
on the model.

Then type out the variable `all_instances` and hit
<span class="kbd">Enter</span> to view all instances of the model.

**Note:** We’ve provided 3 `Owner` instances for you to see a lengthier
queryset.




**3.**

Access the first instance of the `Owner` model using `.first()` in a
variable called `first_owner`.






```sh
python3 manage.py shell
>>> from vetoffice.models import Owner
>>> all_instances = Owner.objects.all()
>>> all_instances
>>> all_instances.first()
```

## Updating an Instance

In the previous exercise, we learned how to view all instances of a
model and individual instances. Now let’s learn how to update an
instance’s field value.

Imagine we stored our first instance of a model in a variable called
`first_instance`. To view one of its field’s values we can use dot
notation:

```python
first_instance.name
```

Above, we’re accessing `first_instance`‘s `.name` field’s value. This
would give us an output of the value like so:

```python
>>> first_instance.name
'Asiqur'
```

If we want to change the field’s value, we can reassign it to something
else.

```python
>>> first_instance.name = "Ruqisa"
```

When we hit <span class="kbd">Enter</span> the instance’s `name` field
value will be changed to `"Ruqisa"`. If we type out
`first_instance.name` again and hit <span class="kbd">Enter</span> it
will return an output value of `"Ruqisa"`.

```python
>>> first_instance.name
'Ruqisa'
```

Great! We were able to update the field value of our instance, but it’s
still not saved into our database until we call the `.save()` method
like so:

```python
>>> first_instance.save()
```



**1.**

As mentioned, here are the commands to get started:

```python
python3 manage.py shell
```

Followed by:

```python
from vetoffice.models import Owner
```






**2.**

Now that we’re in the shell and have imported our `Owner` model:

1.  Store the first instance of the `Owner` model in a variable called
    `first_owner` by using the `.first()` query method.

2.  Access the `.first_name` field of the instance saved in the
    `first_owner` variable.






**3.**

Change the value of the field `first_name` of the instance saved in the
`first_owner` variable to `"Khadaza"`.






**4.**

Use the `.save()` method on the `first_owner` variable to send the
change into the database.






**5.**

Type out `first_owner.first_name` and hit <span class="kbd">Enter</span>
again to see the changes.








```sh
python3 manage.py shell
>>> from vetoffice.models import Owner
>>> first_owner = Owner.objects.first()
>>> first_owner.first_name
>>> first_owner.first_name = "Khadaza"
>>> first_owner.save()
>>> first_owner.first_name
```

## Deleting an Instance

So far we’ve learned how to create, read, update instances, now let’s
learn how to delete instances.

We can delete an instance by using the `.delete()` method like so:

```sh
>>> first_instance.delete()
```

This method will delete the instance stored in the `first_instance`
variable from our database. We’ve deleted our instance, but what if we
wanted to also delete everything that was related to that instance? This
is where `.CASCADE` comes in, and it saves us a lot of time!

We’ve seen `.CASCADE` before when discussing foreign keys, so let’s dive
a little deeper. We can think of `.CASCADE` like a domino effect, where
one falling domino knocks down an entire row of dominos. Therefore, when
we use `.CASCADE` to delete an object, any other object that has a
reference to it also gets deleted. Imagine we have a Twitter account.
When we delete our account, anything related to the account also gets
deleted. Without this cascade effect, after we deleted our account, our
post(s) would still be in the database!

`.CASCADE` needs to be implemented in our model itself and we need to
provide the argument `on_delete=models.CASCADE` to any foreign key’s in
our model. Let’s say we have a `Post` model that has a field listing a
user instance as a foreign key from a `User` model.

```python
class Post(models.Model)
  users = models.ForeignKey(User, on_delete=models.CASCADE)
```

We have our foreign key but we also included `on_delete=models.CASCADE`
as an argument. If a user gets deleted from the `User` model, all `Post`
instances related to that user will also get deleted.



**1.**

Look over **models.py**, remember that in the `Patient` model there is
an `owner` field with `on_delete=models.CASCADE` that has already been
written.

Now, every time an `Owner` instance gets deleted, every `Patient`
instance related to that `Owner` instance will also get deleted.






**2.**

For convenience, here are the commands to get started in the shell:

```sh
python3 manage.py shell
```

Followed by:

```python
from vetoffice.models import Owner
```






**3.**

Store the first instance of the `Owner` model in a variable called
`first_owner` using the `.first()` query.

Then use the `.delete()` query method on the variable to delete the
instance.








```sh
python3 manage.py shell
>>> from vetoffice.models import Owner
>>> first_owner = Owner.objects.first()
>>> first_owner.delete()
```

## The get() and get_or_create() Method

Yay, we’ve finished with the basics of CRUD! Now let’s get introduced to
some useful methods, starting with `.get()`.

The <a
href="https://docs.djangoproject.com/en/3.1/ref/models/querysets/#get"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.get()</code> method</a> returns an
object that matches the arguments we give it. This method should mainly
be used to look up values that are unique to return a single instance.
If our query returns multiple objects we will get a <a
href="https://docs.djangoproject.com/en/3.1/ref/exceptions/#multipleobjectsreturned"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.MultipleObjectsReturned</code>
exception</a>. And if nothing matches, we’ll get a <a
href="https://docs.djangoproject.com/en/3.1/ref/exceptions/#objectdoesnotexist"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.DoesNotExist</code> exception</a>.
Here’s an example of the syntax:

```sh
>>> unique_instance = ModelName.objects.get(name="Ruqisa")
>>> unique_instance
<ModelName: ModelName object (10)>
```

In the example above, we called `.get()` with a `name="Ruqisa"` argument
and when we check the returned value, we get an instance. Even though we
only used a single argument, we could’ve added as many arguments as
there are fields.

Another method that gives even more functionality is the <a
href="https://docs.djangoproject.com/en/3.1/ref/models/querysets/#get-or-create"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.get_or_create()</code> method</a>.

What `.get_or_create()` does is look through the database for an object
with the conditions that we provide. If an object fits our conditions it
will return the object, otherwise, it will create the object hence its
name `.get_or_create()`.

Let’s look at an example:

```sh
>>> wanted_object = ModelName.objects.get_or_create(title="example", content="jango")
>>> wanted_object
(<ModelName: ModelName object (15)>, True)
```

The code above looks through our database for an object with the `title`
of `"example"` and `content` of `"jango"`. Notice that we get a tuple
back. The first element of the tuple is the object itself and the second
element is a boolean (`True` if the object was just created, or `False`
if the object was not just created). In this case, there was no model
that has a `title="example"` and `content="jango"`. Hence we get back
`(<ModelName: ModelName object (15)>, True)`.



**1.**

For convenience, here are the commands to get started in the shell:

```sh
python3 manage.py shell
```

Followed by:

```python
from vetoffice.models import Owner
```






**2.**

Let’s first see `.get()` in action.

Create a variable called `object_match`, then use the `.get()` method to
return an instance of the `Owner` model with the field `last_name` that
matches `"Uddin"`.

Then type out `object_match` and hit <span class="kbd">Enter</span> to
see what gets returned.






**3.**

Now let’s try the `.get_or_create()` method.

Create a variable called `some_object` that will store the result of
calling `.get_or_create()` method on the `Owner` model with matching
arguments of:

-   `first_name = "Elon"`
-   `last_name = "Musk"`
-   `phone = "344-555-1234"`








```python
python3 manage.py shell
>>> from vetoffice.models import Owner
>>> object_match = Owner.objects.get(last_name = "Uddin")
>>> object_match
>>> some_object = Owner.objects.get_or_create(first_name = "Elon", last_name = "Musk", phone = "344-555-1234")
```

## Additional Useful Querying Methods

Let’s look at some other common querying methods, like `.exclude()`.

The <a
href="https://docs.djangoproject.com/en/3.1/ref/models/querysets/#exclude"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.exclude()</code> method</a> does
the exact opposite of the `.get()` method. Instead of returning an
object with matching arguments, it returns all objects that do **not**
match the arguments.

```sh
>>> not_trucks = ModelName.objects.exclude(title="truck")
>>> not_trucks
<QuerySet [<ModelName: object (1)>, <ModelName: object (2)>]>
```

Another helpful method is the <a
href="https://docs.djangoproject.com/en/3.1/ref/models/querysets/#order-by"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.order_by()</code> method</a>. It
allows us to return a list of objects based on a specified order. We can
return based on the date posted, by ID number, etc.

```sh
>>> ordered_by_id = modelName.objects.order_by("-pk")
>>> ordered_by_id
<QuerySet [<ModelName: object (2)>, <ModelName: object (1)>]>
```

Above, we created an `ordered_by_id` variable. In the variable we called
a model and used the `.order_by()` method to sort by `"pk"`, or primary
key/ID. We returned our instances by ID in descending order by adding
the negative `"-"` sign in front of `"pk"`. Notice that we have
`object(2)` appear before `object(1)`.

We can even return the objects randomly:

```sh
>>> random_ordering = ModelName.objects.order_by("?")
```

This will return our objects ordered randomly every time.

There are many more useful query methods that we can look up in Django’s
<a href="https://docs.djangoproject.com/en/3.1/ref/models/querysets/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a>.



**1.**

For convenience, here are the commands to get started in the shell:

```sh
python3 manage.py shell
```

Followed by:

```python
from vetoffice.models import Owner
```






**2.**

Create a variable called `descending_order`. Then assign to the
variable, the returned value of calling `.order_by()` on the `Owner`
model — with all the instances in descending order by primary key.

Type out the `descending_order` variable and press
<span class="kbd">Enter</span> to see how the QuerySet gets returned.






**3.**

Create a variable called `not_included`.

Assign to `not_included` the result of calling `.exclude()` on the
`Owner` model with the argument of `first_name="Elon"`.

Type out the `not_included` variable and press
<span class="kbd">Enter</span> to see the returned objects.








```python
python3 manage.py shell
>>> from vetoffice.models import Owner
>>> descending_order = Owner.objects.order_by("-pk")
>>> descending_order
>>> not_included = Owner.objects.exclude(first_name="Elon")
>>> not_included
```

## Querying Two Tables

Oftentimes, we need to work with different models at the same time since
apps generally have more than a single model and their models often
relate to each other. To gain more insight into how these models work
together and what information they share, we should learn how to query
two tables at the same time.

Remember, foreign keys can connect two tables together through a
one-to-many relationship. For example, imagine if we have an `Answer`
model and a `Question` model. A single `Question` can have many `Answer`
instances. So the `Answer` model stores a foreign key of the `Question`
model to its own table.

Now let’s say we want to return every `Answer` to a `Question`. We can
use the <a
href="https://docs.djangoproject.com/en/3.1/topics/db/queries/#retrieving-specific-objects-with-filters"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">.filter()</code> method</a> to look
for every `Answer` instance related to a question instance. The first
thing we need to do is capture a `Question` instance in a variable. For
now, let’s say we have a variable called `question_instance` that holds
the question `"Is blue a color?"`. Now in our `.filter()` method, we can
provide the `question_instance` variable as an argument and get back
matching results.

```python
>>> question_instance = Question.objects.get(question="Is blue a color?") 
>>> Answer.objects.filter(question=question_instance)
<QuerySet [<Answer: No>, <Answer: Yes>, <Answer: It is a number>]>
```

Above, we used the `Answer` model and called the `.filter()` method with
the argument `question=question_instance`. When we run the above query
it will return a QuerySet with every `Answer` instance that’s associated
with the `Question` instance `"Is blue a color?"`. We used a specific
instance before to filter, but we can also use fields, like an ID.
Django allows us to prepend `_id` to the name of the foreign key table
to filter by ID, like so:

```python
>>> Answer.objects.filter(question_id=3)
<QuerySet [<Answer: It is a number>]>
```

The above code will return every `Answer` instance related to the
`Question` instance whose ID is `3`.



**1.**

For convenience, here are the commands to get started in the shell:

```python
python3 manage.py shell
```

Since we’ll be working with both `Owner` and `Patient` model, we also
need to import both:

```python
from vetoffice.models import Owner, Patient
```




**2.**

In a variable called `first_owner` capture the first instance of the
`Owner` model using the `.first()` method.






**3.**

Using the `.filter()` method return every `Patient` instance related to
the `Owner` instance stored in the `first_owner` variable.








```python
python3 manage.py shell
>>> from vetoffice.models import Owner, Patient
>>> first_owner = Owner.objects.first()
>>> Patient.objects.filter(owner=first_owner)
```

## Reverse Relationships

Let’s get a little deeper into querying two tables. In our previous
exercise, we were able to access every `Answer` related to a `Question`
because our `Answer` model held a foreign key to our `Question` model.
What if we wanted to explore the other side of the relationship and use
the `Question` model to query for all related `Answer` instances? This
query is called *reverse relation*, since that the relationship is now
flipped, the table that’s doing the querying doesn’t contain a foreign
key.

Suppose we have a variable called `question_instance` that stores an
instance of our `Question` model. We can get the related `Answer`
instances to that question instance by using
<a href="https://docs.djangoproject.com/en/3.1/ref/models/relations/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">_set</code></a> like so.

```python
>>> question_instance.answer_set.all()
```

Above, we access the `.answer_set` property of the `question_instance`.
By convention, the `_set` property is preceded by the lowercase name of
the model. Notice that we use `.all()` at the end to access every
`Answer` instance related to `question_instance`.



**1.**

For convenience, here are the commands to get started in the shell:

```python
python3 manage.py shell
```

Followed by:

```python
from vetoffice.models import Owner, Patient
```




**2.**

In a variable called `first_owner` capture the first instance of the
`Owner` model using the `.first()` method.






**3.**

Now let’s get every `Patient` instance related to the instance stored in
the `first_owner` variable.

Apply the `_set` property to the `first_owner` variable. Then apply the
`.all()` query at the end.








```python
python3 manage.py shell
>>> from vetoffice.models import Owner, Patient
>>> first_owner = Owner.objects.first()
>>> first_owner.patient_set.all()
```

## Review

PHEW! That was a lot to take in. Let’s go over a quick summary of what
we’ve learned so far.

-   CRUD is the four basic functions of a database. CRUD stands for
    Create, Read, Update and Delete.
-   A new instance of a model can be created by calling the model then
    filling out the fields of the model. The instance can be saved to
    the database by using `.save()`.
-   We can view all queries of a model by using the `.all()` method.
-   We can update an instance of a model by reassigning a field value
    and saving the instance.
-   We can delete an instance by using the `.delete()` method.
-   The `.get()` method returns an object that matches the
    argument(s)parameters we give it.
-   The `.get_or_create()` method looks through the database and looks
    for any object with the conditions that we provide. If it does find
    an object with our conditions it will return the object if not it
    will create the object.
-   The `.exclude()` method returns an object that does not match the
    argument we give it.
-   We can use the `.order_by()` method to return objects in any order
    we like.
-   The `.filter()` method can be used to query two tables. The
    `.filter()` method can take in a foreign key and return an instance
    associated with that foreign key.
-   We can query using the reverse relation by appending `_set` to a
    model’s name to find related model instances.

Congrats! You’ve made it through and learned so much. Now you can use
your knowledge to dig deeper into how to interact with the database!



If you want to challenge yourself further, consider these challenges:

-   Create more instances of both `Owner` and `Patient`
-   Create an instance with a field that doesn’t exist or omit a field
-   Filter through the instances using multiple arguments

There are so many things you can try out, see what else you can do!



```python

```

# Djaunty Rent-a-Bike

The owners of the Djaunty Rent-a-Bike company have asked that you help
them revamp their old paper and pencil method of renting out bikes. They
know that you’ve learned about Django models, databases, and “CRUD” —
and they’re excited to see you apply your skills.

In your conversation with the owners, you realized that their booking
system is rather streamlined. Their bikes are rented for the day at a
set price and they mainly care about three things: bikes, renters, and
rentals. You can boil it down to a schema like:

-   `Bike`
    -   `bike_type` (Rent-a-Bike offers standard, tandem, and electric
        bikes)
    -   `color` (color of the bike)
-   `Renter`
    -   `first_name` (the first name of the renter)
    -   `last_name` (the last name of the renter)
    -   `phone` (the phone number of the renter)
    -   `vip_num` (renter’s VIP status and number)
-   `Rental`
    -   `bike` (what bike is being rented)
    -   `renter` (who is renting the bike)
    -   `date` (the date of the rental)
    -   `price` (how much does the bike rental cost)

The owners have asked you to solely focus your skills on the models and
not worry about the templates or views.

## Instructions

Mark the tasks as complete by checking them off

## Planning



1\.

Let’s first think about the schema provided. This step is very important
because you should start thinking about the underlying shape of the data
needed to support your app.

Before you write any code, check out **models.py** to see what’s
provided.



## Creating the Bike Model



2\.

Now that you’ve had the chance to think about the program, it’s time to
code! Let’s first start by creating a `Bike` model.





3\.

You can tell from the provided constants that there are 3 specific types
of bikes. Since the `Bike` will have a field for bike type, this is a
great time to implement a choice option.

Inside the `Bike` class, create 3 constants:

-   `STANDARD` with a value of `"ST"`
-   `TANDEM` with a value of `"TA"`
-   `ELECTRIC` with a value of `"EL"`





4\.

With the constants set up, you can create a list called
`BIKE_TYPE_CHOICES` that stores tuples. Here’s an example of how the
first tuple should look.

-   `(STANDARD, "Standard")`

Create the other two using that example.





5\.

With the setup out of the way, you can create a character field called
`bike_type`. Provide the arguments:

-   a max length of 2,
-   `choices` that only accept values from `BIKE_TYPE_CHOICES`
-   defaults to `STANDARD`.





6\.

Bikes also have a color and you should track what colors the rental
bikes are.

Add a new field called `color` which:

-   is a character field
-   has a max length of `10` characters
-   defaults to an empty string (`""`)





7\.

You’ve added fields for `Bike`, but the `__str__` method should be
overridden.

Define a new `__str__` method that returns a string with the bike type
and color, like:

```python
"ST - blue"
```



## Creating the Renter Model



8\.

Since `Bike` is set up, you can create the `Renter` model now.

Create a new `Renter` class that has the following fields:

-   `first_name` a character field that has a max length of `30`
-   `last_name` a character field with max length of `30`
-   `phone` a character field with max length of `15`
-   `vip_num` an integer field that defaults to `0`





9\.

`Renter` should also have a custom `__str__` method.

Have the `__str__` method return the instance’s first name, last name,
and phone as a string. Here’s a sample output:

```python
Padma Lak - #123-456-7890
```



## Creating the Rental Model



10\.

`Bike` and `Renter` are set up, the only one left is `Rental`.

Start with the fields:

-   `bike` which is a foreign key for the `Bike` model
    -   upon the foreign key’s deletion, it should cascade
-   `renter` which is a foreign key for the `Renter` model
    -   upon the foreign key’s deletion, it should cascade
-   `date` a date field which defaults to today’s date
    (`datetime.date.today`)
-   `price` a float field which defaults to `0.0`





11\.

While prices default to `0.0`, you’ll need a method to calculate the
actual price.

Define a method called `calc_price`. Inside the function body, create a
variable called `curr_price` with a value of `BASE_PRICE`.





12\.

You can now implement the additional charges.

Add the following conditionals:

-   If `self.bike`‘s `.bike_type` is `"TA"` , then increase `curr_price`
    by `TANDEM_SURCHARGE`.
-   If `self.bike`‘s `.bike_type` is `"EL"` , then increase `curr_price`
    by `ELECTRIC_SURCHARGE`.
-   If `self.renter`‘s `.vip_num` is greater than `0`, then discount
    `curr_price` by 20%.





13\.

Still within the `.calc_price()` method, finalize the cost of the
`Rental` instance by setting the `.price` field as `curr_price`.



## Database Setup



14\.

Nice, your models are all set up now! This means it’s time to set up the
schema in your database.

In the terminal execute the command:

```python
python3 manage.py makemigrations
```

If there are any error messages, read through and fix them before
proceeding.





15\.

The migration file now needs to be run to properly set up your database.
Run:

```python
python3 manage.py migrate
```



## Populating Database and Running Queries



16\.

To check that your models actually work, make some instances!

Start up the Python shell using:

```python
python3 manage.py shell
```

Then, import your models!





17\.

You’re now set to make instances of your models.

You can first start with `Bike`s. Remember to add in both `bike_type`
and `color` fields. Also, you’ll need to save these instances to the
database! Try to create ~ 5 `Bike` instances.





18\.

Moving on to `Renter`.

Create ~ 3 `Renter` instances with the proper field types and save them
to the database.





19\.

With instances of both `Bike` and `Renter` in the database, you can now
make `Rental` instances!

Create at least 2 `Rental` instances that use 2 different `Bike` objects
and 2 different `Renter` objects. You should practice using querying
methods to find the objects you want (e.g. `.first()`, `.get()`,
`.all()`, etc.)!





20\.

Now try to fine-tune your querying using methods like `.filter()` and
`.exclude()` and even reverse relationship! It’s up to you how you want
to practice.



## Finishing up



21\.

Congratulations! You’ve implemented the models and helped out Djaunty
Rent-a-Bike!

Now you can rest easy and let your program take care of the work of
tracking bikes, renters, and rentals.

However, if you want to challenge yourself, consider:

-   Adding extra fields to the existing models, e.g. an AM/PM field for
    the `Rental` model.
-   Marking when a `Bike` is rented and cannot be booked.
-   Find out how many rentals one specific person has.
-   Adding in metadata for the models.

## Solution

[Django Project Djaunty Rent-a-Bike](https://www.youtube.com/watch?v=k6xBxeb_V6o&t=2s)

```bash
#!/bin/bash
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
echo "${green}>>> Removing project directory if exists${reset}"
rm -rf env
echo "${green}>>> Creating virtualenv${reset}"
python3 -m venv env
echo "${green}>>> Activating the venv${reset}"
source env/bin/activate
echo "${green}>>> Upgrading pip version${reset}"
pip install -U  --upgrade pip
echo "${green}>>> Installing Django${reset}"
pip install django
echo "${red}>>> Starting the Project${reset}"
project_name='BikeRental'
rm -rf $project_name
django-admin startproject $project_name && cd $project_name
echo "${red}>>> Starting the App ${reset}"
app_name="BikeRentalApp"
python manage.py startapp $app_name
echo "${green}>>> Adding app to settings.py${reset}"
sed -i '' "s,INSTALLED_APPS = \[,INSTALLED_APPS = \[\n    \'$app_name\'\,,g"  $project_name/settings.py
echo "${red}>>> Creating schema${reset}"
echo "${green}>>> Providing data for models.py${reset}"
sed -i '' 's/from django.db import models/from django.db import models\
import datetime\
\
BASE_PRICE = 25.00\
TANDEM_SURCHARGE = 15.00\
ELECTRIC_SURCHARGE = 25.00/g' $app_name/models.py
echo "${green}>>> Importing app’s URLconfig setup in the project’s URLconfig${reset}"
sed -i '' 's/from django.urls import/from django.urls import include,/g' $project_name/urls.py
echo "${red}>>> Creating the Bike, Renter and Rental Model${reset}"
echo "$(cat <<-END
class Bike(models.Model):
  STANDARD="ST"
  TANDEM="TA"
  ELECTRIC="EL"

  BIKE_TYPE_CHOICES=[(STANDARD,"Standard"),
  (TANDEM,"Tandem"), 
  (ELECTRIC,"Electric")]

  bike_type=models.CharField(max_length=2,choices=BIKE_TYPE_CHOICES, default=STANDARD)
  color=models.CharField(max_length=10,default="")

  def __str__(self):
      return self.bike_type + " - " + self.color


class Renter(models.Model):
  first_name =models.CharField(max_length=30)
  last_name =models.CharField(max_length=30)
  phone =models.CharField(max_length=30)
  vip_num =models.IntegerField(default=0)
  def __str__(self):
     return self.first_name +" " + self.last_name + " - " +"#"+ self.phone
      

class Rental(models.Model):
  bike=models.ForeignKey(Bike,on_delete =models.CASCADE)
  renter=models.ForeignKey(Renter,on_delete =models.CASCADE)
  date=models.DateField(default=datetime.date.today)
  price=models.FloatField(default=0.0)

  def calc_price(self,curr_price):
    self.curr_price =BASE_PRICE
    if self.bike.bike_type=="TA":
      curr_price+=TANDEM_SURCHARGE
    if self.bike.bike_type=="EL":
      curr_price+=ELECTRIC_SURCHARGE
    if self.renter.vip_num > 0:
      curr_price*=0.8
    self.price=curr_price
END
)"  >> $app_name/models.py
# List installed Python packages
pip freeze -l > requirements.txt
```
