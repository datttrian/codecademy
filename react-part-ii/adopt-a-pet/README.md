# Adopt a Pet!

In this project, you will have the opportunity to practice using React
Router to add client-side routing to a React Application. Specifically,
you will be building a pet adoption website that allows users to view
all the adoptable pets of a particular species and view the profiles of
specific adoptable pets.

Currently, the app renders a `HomePage` component that fetches and
displays all adoptable pets (you can view the code for this page in
**src/pages/home/index.js**). We have also built a `PetDetailsPage` to
display the details for a particular pet
(**src/pages/detail/index.js**), but this component will not render
until you create a route to display it.

Your tasks will be to add client-side routing to the application using
React Router so that:

- The `HomePage` component responds to the browser’s current URL by
  displaying only pets of the species the user wishes to view.
- The `PetDetailsPage` page displays when the browser’s current URL
  includes a specific pet’s `id`.
- The `PetDetailsPage` displays data for the correct pet based on the
  `id` in the URL parameters’ values.
- When the user searches for a pet in the search bar, they are
  redirected to the `SearchPage`, which uses the query parameter called
  `name` to filter pets by name.
- When a user clicks a pet whose details are not available, they are
  redirected to a `PetNotFoundPage`.
- From the `PetNotFound` page, users can click “Go Back” button that
  will take them to page they were previously on.

Before you get started, spend some time familiarizing yourself with the
project’s starting code. In particular, in the **src/** folder, take
note of the components that you’ll be primarily working with:

- **src/App.js** (`App`)
- **src/pages/home/index.js** (`HomePage`)
- **src/pages/detail/index.js** (`PetDetailsPage`)
- **src/pages/search/index.js** (`SearchPage`)
- **src/pages/petNotFound/index.js** (`PetDetailsNotFound`)

This lesson uses <a href="https://mswjs.io/docs/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Mock Service Worker</a> (MSW) to
replicate the functionality of an external API. To use MSW, you’ll want
to use <a href="https://www.google.com/chrome/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Google Chrome</a> and
<a href="https://support.google.com/chrome/answer/95647"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">enable third-party cookies</a>.

#### Setup Instructions

This project should be completed on your own computer instead of on
Codecademy. You can download what you’ll need by clicking the “Download”
button below. If you need help setting up your computer, read our
<a href="https://www.codecademy.com/articles/visual-studio-code"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">article about setting up a text editor for HTML/CSS
development</a>.

Once you’ve downloaded the project, open up the project folder in your
text editor. Then, make sure to install all of the dependencies by
running the command below:

``` jsx
npm install
```

Finally, you can start the application locally by running the command
below:

``` jsx
npm start
```

As you can see, the project has been started for you! Take a look at
**src/App.js** where you can see the `Navigation` and `HomePage`
components being rendered. However, while you can click on the various
links in the website, the application isn’t set up to handle those
changing routes. Now, it is up to you to add React Router to this
project.

> Note: This application was created using
> <a href="https://www.codecademy.com/articles/how-to-create-a-react-app"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank">Create React App</a>.

Download

### Instructions

Mark the tasks as complete by checking them off

## Installing React Router and adding a Router to your project.

1\.

Install `react-router-dom` so that you can use React Router components
in your project. Use the command below:

``` jsx
npm install --save react-router-dom@5.2.0
```

> **Jan 2022 Update:** This project is meant to be written using
> <a href="https://v5.reactrouter.com/"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">React Router v5</a>. React Router v6
> introduces breaking changes and your project will not work using these
> instructions if you install v6 via the default command
> `npm install react-router-dom`. Check out the docs to learn more about
> <a href="https://reactrouter.com/docs/en/v6/upgrading/v5"
> class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
> target="_blank" rel="noopener">upgrading from v5 to v6</a>.

To check that you were successful, ensure that `react-router-dom`
appears in the `"dependencies"` object located within your project’s
**package.json** file.

2\.

In **src/App.js**, import React Router’s `BrowserRouter` component and
alias it to `Router`.

3\.

In **src/App.js**, wrap your applications contents in a `Router` so that
your components can use React Router’s components and hooks.

## Creating Your First Route

4\.

Great job! Now that you’ve wrapped your application in a `Router`, you
are ready to start adding `Route`s.

Before you can use the `Route` component, you need to add it to the list
of imports from `react-router-dom`.

5\.

First, you will create a `Route` that renders the `HomePage` component
which displays the list of animals available for adoption. This
component should appear when the path matches `/:type`, where `:type`
corresponds to one of the species of pets (in which case the home page
should render only pets of the given species).

Wrap your `HomePage` component in a `Route` component. The `Route`
should have a `path` prop of `/:type` so that the home page will render
the species specified by the value of the URL parameter. To test that
your code works, try clicking on a particular species or navigating to
`/cat` or `/dog`.

> Note that if you click on the “All Pets” button, the `HomePage`
> doesn’t render. We’ll be fixing that in the next task.

6\.

We still want the `HomePage` to render even if no type is specified in
the URL path. This means that `type` should be an optional URL parameter
in the path that renders the `HomePage` component. Make `type` optional
for the `Route` that renders the `HomePage`.

Test that your code works by clicking on the “All Pets” link in the
navigation menu – the homepage should still display since the new URL’s
path (`/`) now matches the path of the `Route` that renders `HomePage`.

## Using URL Parameters in Your React Components

7\.

Notice that even after you navigate to `/cats`, the `HomePage` component
still renders all the pets (not just the cats). Your next task is to fix
that by building on the code we’ve provided for the `HomePage`
component. Remember, the `useParams()` hook can be used to give a
component access to the values of the URL parameters in the current URL.

In **src/pages/home/index.js**, import the `useParams()` hook from
`react-router-dom`.

8\.

Within the `HomePage` component, we’ve defined a variable, `type`, and
set it equal to an empty string. Replace this variable declaration and
instead use `useParams()` to get the value of the `:type` URL parameter.
Store the value in a variable called `type`.

To test that your code works, click on one of the species links – you
should now see only pets of that type!

> How does this work? Inside the `useEffect()` hook, we’ve passed `type`
> to our API’s `getPets` method which fetches pets of the specified type
> to be rendered on the page. Now, this `type` comes from the URL
> parameter (rather than an empty string)!

## Replacing a Tags with React Router Elements

9\.

When you tested your work for the last task by clicking on one of the
species’ links in the navigation bar, you may have noticed a conspicuous
page reload. Recall that this happens when we use native `a` tags
(instead of React Router’s `Link` and `NavLink` components) to navigate
to client-side routes.

In the Navigation component (located in
**src/components/navigation/index.js**), you will improve your user’s
experience by replacing the `a` tags with React Router’s `NavLink`
component. First, you have to import `NavLink` from `react-router-dom`.

10\.

Next, replace the `a` tags in the `Navigation` component with
`NavLink`s. As you give these `NavLink` components their props, remember
that `NavLink` has a `to` prop instead of the `a` tag’s `href`
attribute.

Recall that `NavLink` also accepts an `activeClassName` property that
will be applied to the `NavLink` whose `to` prop matches the current
URL. In `public/index.css`, we’ve written a CSS selector for the class
`.nav-link-active` that will darken the background of any element with
that class name.

Give your `NavLink` components an `activeClassName` prop and set it
equal to `"nav-link-active"` so that the `NavLink` whose `to` prop
matches the current URL will appear darker than the others.

Lastly, to prevent the “All Pets” `NavLink` from always displaying as
active, add the `exact` prop to it. This will ensure that the `NavLink`
only renders as active when the current URL’s path is an exact match
(so, for example, the “All Pets” `NavLink` will render as active when
the current path is `/` but not when the current path is `/dogs`).

11\.

Notice that if you click on an individual animal’s link, the page will
refresh. Instead, we want to use React Router `Link`s to skip that
refresh. Like `NavLink`, the `Link` component has a `to` property in
place of the `a` tag’s `href`.

First, in **src/pages/home/index.js**, import `Link` from
’react-router-dom\`.

Then, replace each `a` tag in the `HomePage` component with a `Link`
component with a `to` prop.

When you complete this task, clicking on an individual pet will no
longer cause the page to reload. However, the details for that pet won’t
come up just yet. Continue on to the next task group to fix this!

## Adding Another Route

12\.

Great work! Clicking on an animal no longer causes a reload, however,
we’re not seeing the individual animal’s details either! The component
designed to do that is the `PetDetailsPage` which has already been
imported into **src/App.js**.

Back in **src/App.js** and above the `Route` for the `HomePage`
component, add a `Route` to your `Router` that renders the
`PetDetailsPage` component. This `Route`’s `path` should match URLs such
as `/dog/123` or `/cat/456`. This URL path will need two URL parameters:
the animal’s species and the specific id. The names for these parameters
should be `:type` and `:id` respectively.

To test that your code works, click on one of the pets listed on the
home page. You should be redirected to the detailed view Shuri the cat!

But… maybe you didn’t click on Shuri? Continue on to the next task to
fix this.

13\.

Try clicking on a few different pets and you’ll notice that you’ll keep
seeing the details for Shuri the cat! Take a look at the
`PetDetailsPage` component, found in **src/pages/detail/index.js**.
Here, you’ll see that we’ve hard-coded a pet `id`.

To make this page render the details for the actual pet your user has
selected, use the `useParams()` hook to get the value of the `:id` URL
parameter in the `PetDetailsPage` component.

To test that your code works, refresh the page. You should see the
details for the pet whose picture you clicked previously.

> Note: Only the pets with a real picture will have pet details. Later
> on, we will route users to a default page when they click on a pet
> with a missing picture and missing details.

14\.

Great work! There’s one problem though: now, when you navigate to
`/:type/:id` not only will you see the detailed view for a particular
pet, but also the list of all pets that share the current pet’s species.
For example, if you go to `/cat/51322435` then you’ll see Shuri and all
of the cats.

Remember, React Router’s `Router` will render *all* of the `Route`
components nested within it whose `path` matches that of the current
URL. In this case, when the `PetDetailsPage` component is rendered for
`/cats/123`, the `HomePage` component is being rendered as well. The
`Switch` component can help us with this!

Return to **src/App.js** and import the `Switch` component.

15\.

Now, in **src/App.js**, wrap your `Route`s with a `Switch` component so
that only one `Route` will render at a time. Make sure to NOT wrap the
`Navigation` component inside the `Switch` component.

Remember: `Switch` renders only the *first* `Route` that matches the
current URL, so you’ll have to think about what order you should list
your routes in to achieve the desired behavior.

Test your code to ensure that the `HomePage` renders when the URL path
matches `/:type` and the `PetDetailsPage` renders when the URL path
matches `/:type/:id`.

## Adding a Search Feature

16\.

Nice job! Your next task will be to add a search feature to the pet
adoption website. We’ve included a search bar for you in the
`Navigation` component, but it doesn’t currently work. Your task will be
to add React Router to this search bar so that when a user searches for
a particular pet, they are redirected to a page showing all pets whose
names match the search query.

First, you’ll need to make the search bar update the URL when the user
enters a new search query. We will do this imperatively using the
`history` object.

Inside the `Search` component (**src/components/search/index.js**),
import the `useHistory()` hook. Then, inside the `Search` component, get
the value of the `history` object it returns. This will allow us to
control the current URL location.

17\.

In `onSearchHandler`, we’ve provided the value `searchQuery` for you.
This value will hold the query string. For example, if the user searches
for “fido”, the value of `searchQuery` will be `name=fido`.

Below this variable, use the `history` object’s `.push()` method to
imperatively redirect the user to a path of the form
`/search?name=fido`.

Test out your code by searching for a value in the search bar. If you
search for “fido” then the URL should become `/search?name=fido`.

18\.

Now, back in **src/App.js** we want to render the `SearchPage` whenever
the user types into the search bar and is redirected to paths like
`/search?name=fido`.

Add a `Route` in the `Switch` that renders the `SearchPage` component
we’ve imported for you. This route’s `path` prop should match URLs that
begin with `/search`.

To test that your code works, try typing something into the search bar
and hitting enter. The `SearchPage` component should be rendered.

19\.

Now, the `SearchPage` component will be rendered whenever the user types
in a query into the search bar. When searching for a pet, users will be
redirected to URLs such as `/search?name=fido`, where `fido` is the
search query.

In order to render the pets that match the specified query, we will need
to capture the query parameter value from `?name=fido`. Remember, we can
do this with the `useLocation()` hook.

First, in **src/pages/search/index.js**, import React Router’s
`useLocation()` hook.

20\.

Next, inside the `SearchPage` component, call `useLocation` and get the
value of the `search` property on the object it returns by using
destructuring assignment.

21\.

Recall that the `search` property on the `location` object corresponds
to the current URL’s query string. To turn this query string into an
object whose keys correspond to query parameters and whose values
correspond to those parameters’ values, you should pass the `search`
object to the <a
href="https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">URLSearchParams</code></a>
constructor and store the result in a constant called `queryParams`.

React will issue a warning if you don’t wrap this call to
`URLSearchParams()` in
<a href="https://reactjs.org/docs/hooks-reference.html#usememo"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">React’s <code
class="code__2rdF32qjRVp7mMVBHuPwDS">useMemo()</code> hook</a>.
Therefore, your code should look something like this:

``` jsx
const queryParams = useMemo(() => { 
  return new URLSearchParams(search)
}, [search]);
```

Without this, every time the `SearchPage`renders, the call to the
`URLSearchParams` constructor will create a new object and cause
`queryParams` to change.

22\.

Finally, in the `useEffect()` hook, an API call to `getPets` is made to
fetch the specified `petNameToFind`.

Using the `.get()` method on the `queryParams` object, retrieve the
`'name'` query parameter and assign it to `petNameToFind`.

To test that your code works, try searching for `"Shuri"` and you should
see our favorite cat appear in the search results!

## Adding a PetDetailsNotFound Page

23\.

Nice work! The next (and last) feature you’ll add to the application is
a `PetDetailsNotFound` page in the event that the user clicks on a pet
whose details are not yet available. Back in **src/App.js** this
component has already been imported for you.

First, in **src/App.js**, add a `Route` that renders the
`PetDetailsNotFound` component when the current URL’s path is
`'/pet-details-not-found'`.

To test that your code works properly, navigate to
`/pet-details-not-found` in your URL bar.

24\.

When a user clicks on a specific animal in the `HomePage`, the
`PetDetailsPage` (found in **src/pages/detail/index.js**) will be
rendered. If a pet’s details are not found the API call to
`getPetDetails(id)` will return an error.

Your task is to conditionally redirect the user to
`'/pet-details-not-found'` whenever that happens.

First, In **src/pages/detail/index.js**, import React Router’s
`Redirect` component.

25\.

Next, update the `return` statement of the `PetDetailsPage` component to
render a `Redirect` if the `getPetDetails` API call returns an error.
The `to` prop for the `Redirect` should cause the application to render
the `PetDetailsNotFound` component.

Test that your code works by clicking on ‘Dottie’—the second pet in the
‘All Pets’ view. Since we don’t have Dottie’s details, the API will
return an error and you should be redirected to the `PetDetailsNotFound`
page.

26\.

It would be nice if the user could easily navigate away from the
`PetDetailsNotFound` page to the page they were on before. We’ve
provided a button for this purpose, but you will need to use React
Router’s `history` object to imperatively redirect the user when it is
clicked.

First, in **src/pages/petDetailsNotFound/index.js** import React
Router’s `useHistory()` hook.

27\.

Inside the `PetDetailsNotFound` component, call `useHistory` to get
access to React Router’s `history` object.

28\.

The `onClick` prop of the ‘Go Back’ button is set to the callback
function `goBack()`. Use the `history` object’s `.goBack()` method to
redirect the user to the previous page when the user clicks on the ‘Go
Back’ button.

Test out your code by clicking on a pet whose details have not been
loaded yet and then click on the “Go Back” button. You should be
redirected back to the page you just came from.

29\.

Great work! Visit <a
href="https://discuss.codecademy.com/t/adopt-a-pet-off-platform-practice-project/597981"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">our forums</a> to compare your project to
our sample solution code. You can also learn how to host your own
solution on GitHub so you can share it with other learners! Your
solution might look different from ours, and that’s okay! There are
multiple ways to solve these projects, and you’ll learn more by seeing
others’ code.

### [Solution](https://datttrian-adopt-a-pet.netlify.app/) (Reference: [Codecademy](https://discuss.codecademy.com/t/adopt-a-pet-off-platform-practice-project/597981))
