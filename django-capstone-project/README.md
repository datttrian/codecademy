# Django Capstone Project

This project will be a culmination of all your knowledge of Django.

You’ve got all the tools needed to tackle the last project: Django
Delights. This project will test your skills in making a restaurant
inventory and reports tracker. You can approach it in many ways so put
on your thinking cap and gear up to complete the project!

# Django Delights

You’ve been asked by a restaurant owner to build an application that
will help keep track of how much food they have throughout the day. The
owner starts the day with:

-   An inventory of different `Ingredient`s, their available quantity,
    and their prices per unit
-   A list of the restaurant’s `MenuItem`s, and the price set for each
    entry
-   A list of the ingredients that each menu item requires
    (`RecipeRequirement`s)
-   A log of all `Purchase`s made at the restaurant

Knowing that information, the restaurant, Django Delights’ owner has
asked for the following features:

1.  They should be able to enter in new recipes along with their recipe
    requirements, and how much that menu item costs.
2.  They should also be able to add to the inventory a name of an
    ingredient, its price per unit, and how much of that item is
    available.
3.  They should be able to enter in a customer purchase of a menu item.
    When a customer purchases an item off the menu, the inventory should
    be modified to accommodate what happened, as well as recording the
    time that the purchase was made.

Here are some helpful tips to get you started thinking about the
project: Your ingredients, recipes, and purchase data should be stored
in a database, and should be rendered back to the Django views. Your
Django backend should supply endpoints to create new recipes via a form
submission, submit customer purchases from a different form, and get
information about the total cost of inventory, the total revenue for the
day, the different purchases that were made, and how much inventory is
required to restock (as an initial example) to render them into a Django
view.

## Project Requirements

-   Build an inventory and sales application using Django
-   Develop locally on your machine
-   Version control your application with Git and host the repository on
    GitHub
-   Use the command line to manage your application locally and test out
    queries
-   Users can log in, log out, and must be logged in to see the views
-   Users can create items for the menu
-   Users can add ingredients to the restaurant’s inventory and update
    their quantities
-   Users can add the different recipe requirements for each menu item
-   Users can record purchases of menu items (only the ones that are
    able to be created with what’s in the inventory!)
-   Users can view the current inventory, menu items, their ingredients,
    and a log of all purchases made

## Prerequisites:

-   HTML
-   CSS
-   Python
-   Django
-   Git
-   Command Line

## Going Off Platform

You will be doing this project outside of the Codecademy platform, on
your own computer.

For this particular project, you will be using your own text editor (we
suggest <a href="https://code.visualstudio.com/download"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">VS Code</a>) and Git version control. If
you need help setting up your text editor, read our
<a href="https://www.codecademy.com/articles/visual-studio-code"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">article about setting up a text editor for web
development</a>. If you need a refresher on how to work with Git for
version control, <a href="https://www.codecademy.com/learn/learn-git"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">review the Git lesson</a> or look at this
<a href="https://education.github.com/git-cheat-sheet-education.pdf"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">cheat sheet</a>.

### Debugging Tips

Feeling stuck? Try the following:

*Google your question:* oftentimes, someone has had the same question as
you! Check out websites like StackOverflow and Quora to see how other
folks have found solutions.

*Read the documentation:* make sure to carefully read through the
documentation for any languages and libraries that you are using.
Oftentimes they’ll have examples of what you’re looking for!

*Rubber ducking:* try to explain a problem to a friend or co-worker.
Oftentimes, you’ll figure out the solution as you’re trying to explain
it. And if not, getting another pair of eyes on your code can be
helpful.

### Example Code

Want to see an example of how someone else has completed this project?
Click this <a
href="https://static-assets.codecademy.com/skillpaths/django/portfolio-project/bwa-django-final-project-main.zip"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">link</a> to download a zip file
containing one example solution to this project. Remember: your project
doesn’t have to look anything like this! It should be unique to your
vision.

## Project Tasks

Keep track of your progress by dragging each task from "To Do" to "In
Progress" to "Done" as you work on them. You can also click on a task to
see more information about it.

To Do


**Plan your project**

Visualize your end result. What is it built with? What can it do? Make
sure that it satisfies all of the project objectives.



**Wireframe your application**

Using pencil and paper, or a wireframing software of your choice, draft
what you’d like your application to look like.



**Setup your workspace**

To get started, create a Python virtual environment. This will be used
to manage all of your dependencies for the project.



**Create the skeleton for your Django app**

Install Django in your virtual environment. Use the `django-admin` CLI
to initialize your project and use the `manage.py` tool inside to create
our inventory app. Call the project `djangodelights` and the app
`inventory`. Configure your **settings.py** file accordingly.



**Set up version control**

Set up the folder you created previously to be a Git repository. Push
the initial files to a repository on GitHub. You should be consistently
committing your changes throughout the project. Make sure to have
meaningful commit messages.



**Understand the database models**

Create a `models.py` inside your **inventory** app and start defining
the models below.

-   An inventory of different `Ingredient`s, their available quantity,
    and their prices per unit
-   A list of the restaurant’s `MenuItem`s, and the price set for each
    entry
-   A list of the ingredients that each menu item requires
    (`RecipeRequirement`s)
-   A log of all `Purchase`s made at the restaurant



**Create the Ingredient model**

This model represents an ingredient that the restaurant has in its
inventory.



**Create the MenuItem model**

This model represents an item on the restaurant’s menu.



**Create the RecipeRequirement model**

This model represents a single ingredient and how much of it is required
for an item off the menu.



**Create the Purchase model**

This model represents a customer purchase of an item off the menu.



**Run the database migrations**

You’ll have to use the **manage.py** script to make the migrations for
all the models you just added, and run them.

Additionally, you can set up the **admin.py** file to register your
models so that you can start loading in some sample data from the Django
admin site.



**Analyze an example**

Here are the ingredients for **Django Djaffa Cake**:

-   100 grams of orange jelly
-   1 large egg
-   1.5 ounces cane sugar
-   1 ounces flour
-   6 ounces milk chocolate

Populate this example into your databases, including the `Ingredient`s,
`MenuItem`, and `RecipeRequirement`s. Lastly, try recording a `Purchase`
into the table.



**Write your queries**

For this inventory app to be useful for our restaurant owner, we would
want our app to be able to answer the following questions:

-   What is currently in the restaurant’s inventory?
-   What purchases have been made?
-   What does the restaurant’s menu look like? What ingredients (and how
    many of each) are required for each item on the menu? What’s the
    price of each item?
-   What is the total `revenue` for the restaurant’s overall recorded
    purchases?
-   What is the total `cost` to the restaurant’s overall purchases made
    (sum of cost of all ingredients used).
-   How much `profit` (`revenue` - `cost`) does the restaurant make?



**Create views for inventory, menu, and purchases**

Create views that will enable the restaurant owner to:

-   view all the ingredients in the inventory
-   delete ingredients from the inventory
-   view the items in the menu
-   view the purchases made at the restaurant
-   view the profit and revenue for the restaurant



**Create templates for the views**

For the restaurant owner to be able to view all the data that we entered
earlier, you’ll need one template for each of the following:

-   a base template for all the other pages to inherit from, with common
    styling and a navbar linking to the other pages
-   a home page
-   a page to view all ingredients in the inventory as a table
-   a page to view the menu
-   a page to view the purchases made at the restaurant as a table
-   a page to view the profit and revenue report



**Create forms to add instances**

Create one template for each of the following:

-   a page to add an item to the menu
-   a page to add an ingredient to the inventory
-   a page to add the recipe requirements for a menu item
-   a page to record a new purchase of a menu item
-   a page to update the inventory for an existing ingredient



**Protect your site with authentication**

Create a log-in and log out page for our inventory application, to
ensure that only our restaurant owner can manage the site.

# Going Beyond with Django

What else is inside Django’s swiss army knife?

Beyond this, Django has so much more to offer that we didn’t have the
chance to cover. If you want to further your own grown as a Django
developer, check out
<a href="https://docs.djangoproject.com/en/3.2/ref/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">their documentation</a>

Some topics that might interest you are: Django’s many
<a href="https://docs.djangoproject.com/en/3.2/ref/models/fields/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">different field types</a>
<a href="https://docs.djangoproject.com/en/3.2/ref/forms/widgets/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Widgets</a> Making different requests
with
<a href="https://docs.djangoproject.com/en/3.2/ref/request-response/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">HttpRequest</a>

There are so many things to explore, we can’t wait to see what you’ll do
next!
