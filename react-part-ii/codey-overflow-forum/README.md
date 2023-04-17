# CodeyOverflow Forum

In this project, we will build the beginnings of a web forum! A forum is
an online discussion board where users can exchange their opinions on a
variety of topics. The most important component of a forum is the
comment section. This is what we’ll work on in this project.

In building this application, you will sharpen your skills in React
components by practicing using props as well as defining, rendering, and
referencing components.

Let’s get started!

## Tasks

## Setting Up Header and Body

1\.

Take a look at the files provided for this project.

There is a file named **commentData.js** which contains an array of
comment objects with `profileImg`, `username`, and `comment` as its
properties. You will use this to populate the comments on the forum.

Your comment section will be composed of `Card` components, which will
be comprised of smaller `Header` and `Body` child components.

Next, **App.js** will contain the top-level component. The data in
**commentData.js** will be retrieved in **App.js** and flow downward
from `App` to `Card` to `Header` and `Body`.

**index.js** will render the `App` component. **style.css** and
**index.html** handle the markup and styling of the forum.

Once you feel comfortable with the structure of this application, move
on to the next checkpoint.

2\.

Let’s start with the smallest component, the `Body`. The `Body` is
responsible for showing the comments that users have written. It will
work with the `comment` property of our passed-down `comments` object
extracted from **commentData.js**.

Open up **Body.js** and define your `Body` component.

This component should receive `props`. This `props` object contains all
of the data on our comment, such as the username, profile image, and
comment, but the `Body` works specifically with only the `comment`
property.

Have the component return a `<p>` element that contains the `comment`
property from `props`.


3\.

Export the `Body` component after its function definition so that it can
be imported and used in **Card.js**.


4\.

Open **Header.js** and define your `Header` component.

This component will be responsible for the `profileImg` and `username`
properties of our passed-down `comments` object.

The `Header` component should receive `props`. The component should
return two elements, an `<img>` element whose `src` attribute will
receive the `profileImg` property from `props`, and a `<h1>` element,
displaying `username` from `props`.


5\.

Export the `Header` component after its function definition so that it
can be imported and used in **Card.js**.


## Setting Up Card

6\.

Great job! Let’s take a brief detour back to **App.js**.

Currently, the `App` component is empty. This is the top-level component
and it is responsible for returning the interface to be rendered. In
this case, it will be returning an instance of the `Card` component for
every comment in **commentData.js**.

In the `App` component body, map over the `comments` array with the
argument named `comment` and return an instance of the `Card` component.

For each component, give it an attribute named `commentObject` and the
value `{comment}`.


7\.

Nice! You’ve set up `App` to pass down information to the `Card`
component. Let’s put the pieces together.

Open **Card.js** and import the `Header` and `Body` components. `Card`
will be the outer “shell” that contains our two smaller components:
`Card` is the parent, and `Header` and `Body` are the child components.

Begin defining the `Card` component. `Card` should receive `props`.

`Card` should return an instance of the `Header` component, and an
instance of the `Body` component.


8\.

Previously in **App.js**, you’ve passed down a `commentObject` attribute
to `Card` which contains an object with three properties (`profileImg`,
`username`, and `comment`).

It’s time to access those and finally pass them to the children
components: `Header` and `Body`.

`Header` expects two props, `profileImg` and `username`.

Give the `Header` instance an attribute named `profileImg` and the value
of `props.commentObject.profileImg`.


9\.

Next, give the `Header` instance an attribute named `username` and the
value of `props.commentObject.username`.


10\.

The `Body` instance expects a `comment` prop.

Give the `Body` instance an attribute named `comment` and the value of
`props.commentObject.comment`.


11\.

Now, export the `Card` component so it can be imported and used.


## Rendering the Application

12\.

Open up **App.js** again, and import the `Card` component which is now
defined and exported.


13\.

Then, export the `App` component.


14\.

Open up **index.js** and import the `App` component.


15\.

As you may recall, **index.js** is largely responsible for only
rendering the `App` component.

Use `.createRoot()` to supply a container where you will render the
`App` component. Then, use `.render()` to render it into the DOM!

If you’ve succeeded, you should see three comments rendered on the web
browser, engaging in a riveting discussion about animals.


## [Solution](https://datttrian-codey-overflow-forum.netlify.app/) (**Reference**: [peterekey](https://github.com/peterekey/codecademy_20230415_codeyoverflow_forum))
