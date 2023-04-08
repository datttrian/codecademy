# Codecademy Store

In this project, you’ll build a program that mimics Codecademy’s own
online store! The application should display products from the
Codecademy store and allow the user to add them to their cart. In the
cart, the user can adjust the quantity of each item and the running
total will be displayed at the bottom. Lastly, the user can choose the
currency for the entire application.

<img
src="https://static-assets.codecademy.com/Courses/Learn-Redux/codecademy-store/shopping-cart-demo.gif"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="An animated gif showing a demo of the Codecademy store&#39;s features" />

This application has three slices of state:

- `inventory`: An array of objects representing the items that are
  available to purchase.
- `cart`: An object that maps the name of each item added to the cart to
  an object with the price and desired quantity for that item.
- `currencyFilter`: A string that represents the currency used to
  calculate the prices displayed to the user: `'USD'`, `'CAD'` or
  `'EUR'`.

An example of this application’s state might look like this:

``` jsx
state = {
  inventory: [
    { name: 'Hat', img: 'img/hat.png', price: 15.99 },
    { name: 'T-Shirt', img: 'img/t-shirt.png', price: 18.99 },
    { name: 'Hoodie', img: 'img/hoodie.png', price: 49.99 },
  ],
  cart: {
    'Hat': { price: 15.99, quantity: 0 },
    'T-Shirt': { price: 15.99, quantity: 2 },
    'Hoodie': { price: 18.99, quantity: 1 },
  },
  currencyFilter: 'CAD'
}
```

As you will see, the file structure has been organized using the
recommended feature-based pattern and most of the inventory and currency
features have been built for you. It will be up to you to:

- complete the cart’s action creators and reducer logic
- create the `store` using `createStore()` and `combineReducers()`
- pass the `store` resources to presentational components via the
  top-level `<App />` component
- render the `<Cart />` component using the current state data
- dispatch actions to the `store`

Let’s get started!

If you get stuck during this project or would like to see an experienced
developer work through it, click **“Get Unstuck”** to **see a project
walkthrough video**.

> Note: the output terminal below the coding area is there to display
> syntax errors and can be used when debugging your code. Feel free to
> minimize it when not in use.

### Instructions

Mark the tasks as complete by checking them off

## Complete the Redux logic for the Cart slice

1\.

The first step towards completing the cart feature will be to define the
actions that can change the `state.cart` slice, and to handle them in
the reducer.

Open up **cartSlice.js** where you will find the `addItem()` action
creator as well as the reducer `cartReducer()` which can already handle
a `'cart/addItem'` action.

In addition to adding items to the cart, the user should be able to
modify the quantity of each item in their cart. First, you will need to
create an action creator for this kind of action object.

Below the `addItem()` function:

- Declare a new function called `changeItemQuantity`
- It should have two parameters: `name` (a string) and `newQuantity` (a
  number)
- It should return an object with two properties: `type` and `payload`
- The `payload` should be an object with a `.name` and `.newQuantity`
  property.
- Export this function.

2\.

``` jsx
// Example cart state
cart = {
  'Hat': { price: 15.99, quantity: 0 },
  'T-Shirt': { price: 15.99, quantity: 2 },
  'Hoodie': { price: 18.99, quantity: 1 },
},
```

Great! Now that you know what `changeItemQuantity()` actions will look
like, you can handle them in the `cartReducer()`. A `case` for this
action type has already been started for you. It first pulls out the
`name` and `newQuantity` from the payload and grabs the `itemToUpdate`
from the `cart`.

The first step is to update this item — but you must do it immutably!
Below the variable `itemToUpdate`…

- Declare a new variable called `updatedItem` and assign to it a new
  object.
- Copy the contents of `itemToUpdate` into `updatedItem` but set the
  `quantity` property to the value of `newQuantity`.

3\.

The final step is to return the new `cart` state with `updatedItem`
included.

## Create the Redux store from slice reducers.

4\.

With the reducers and action creators ready to go, it’s time to set up
the `store`.

Open up **store.js** and, at the top of the file, import the two
functions from the `'redux'` package used to create the `store` object:
`createStore` and `combineReducers`.

5\.

The `store` needs a `rootReducer` to operate but you currently have
three separate slice reducers.

For now, start by importing these reducers into the **store.js** file.

Add three import statements to **store.js**, one for each of the slice
reducers:

- `inventoryReducer`
- `cartReducer`
- `currencyFilterReducer`

6\.

Now that you have imported all of the resources, you can combine the
various slice reducers into a `rootReducer` using the `combineReducers`
method. Then that `rootReducer` can be used to create the `store`
object.

- First, call `combineReducers()` with an object as the argument.
- The object passed to `combineReducers()` should pair each slice name
  with the appropriate slice reducer
- Next, pass the entire `combineReducers({...})` function call as an
  argument to `createStore()`.
- Finally, assign the returned value from `createStore()` to a new
  variable called `store`.
- Make sure you export the `store`!

## Connect Redux to the top-level React component.

7\.

Open up the **index.js** file. This file is known as the “entry point”
for the application because it is directly loaded by the **index.html**
file and it is responsible for rendering the top-level `<App />`
component.

As you can see, the `<App />` component is already being rendered for
you, but it is missing the much-needed data from the `store`!

At the top of the file, import the `store` from **store.js**.

8\.

With the `store` imported into **index.js**, you can now pass its data
down to the presentational components via the `<App />` component.

The presentational components will need access to the current state of
the `store` to render the most up-to-date data. They will also need
access to the `store.dispatch` method in order to request new data when
the user interacts with the app’s various features.

- Pass the current state of the `store` as a prop called `state` to the
  `<App />` component
- Pass the `store.dispatch` method as a prop called `dispatch` to the
  `<App />` component
- Run your program and you should see the currency buttons rendered at
  the top of the screen and the text “Sorry, no products are currently
  available…”.

9\.

The products are not being rendered yet because the product data is only
fetched AFTER the page first loads. If you take a look at
**src/features/inventory/Inventory.js** you will see that this component
dispatches a `loadData()` action upon mounting.

You need to make sure that when any state changes occur, the components
are re-rendered with the most up-to-date data.

- At the bottom of **index.js** subscribe the `render` function to
  changes to the state of the `store`.
- Run your program and you should see the full inventory rendered to the
  screen!

## Render the Cart component with data from the store.

10\.

Open up **App.js** and you can see that the `<CurrencyFilter />` and
`<Inventory />` presentational components are being rendered with their
slice of state data and the dispatch method, but the `<Cart />`
component is missing!

Let’s add it in.

- At the top of **App.js**, import the `Cart` component from
  **Cart.js**.

11\.

Now, let’s add the `<Cart />` into the `<App />` component’s structure.
Like the other two components, the `<Cart />` will need access to its
slice of `state` and the `dispatch` method. It will also need access to
the `currencyFilter` slice of `state` to calculate the total cart price.

Inside the `App()` component’s `return` statement…

- Add in the `<Cart />` component below the `<Inventory />` component.
- The `<Cart />` component should have three prop values: `cart`,
  `currencyFilter`, and `dispatch`.

If done correctly, you should see the cart feature rendered to the
screen with a total of `0` and the text `'REPLACE_ME"` in the place of
the item list.

## Use store data in the Cart component.

12\.

Open up **Cart.js** and take a look at the `return` statement. Notice
that it is trying to render the variable `cartElements`, which is
currently holding the string `'REPLACE_ME'`.

Instead, `cartElements` should be an array of `<li>` elements created
using the `createCartItem()` helper function defined at the bottom of
the file.

Recall that the `cart` slice of state is an object where each key is the
name of an item in the cart. Do the following to make the desired
`cartElements` array:

- Initialize `cartElements` to an empty array.
- Iterate through the keys of the `cart` object
- For each key, which is the name of an item, call `createCartItem()`
  with that item name as an argument.
- Store the values returned by `createCartItem()` in `cartElements`.

``` jsx
// Example cart state
cart = {
  'Hat': { price: 15.99, quantity: 0 },
  'T-Shirt': { price: 15.99, quantity: 2 },
  'Hoodie': { price: 18.99, quantity: 1 },
}
 
// Desired outcome:
cartElements = [ 
  createCartItem('Hat'),
  createCartItem('T-Shirt'),
  createCartItem('Hoodie'),
]  
```

13\.

Try adding items to your cart. They now show up! However, there are a
few things wrong. Most obviously, the cart total is not showing up
properly.

At the top of the **Cart.js** file, the `calculateTotal` helper function
is imported from the **src/utilities/utilities.js** file. As the name
suggests, you can use this function to calculate the cart’s total!

- Call `calculateTotal()` with the `cart` and `currencyFilter` prop
  values as arguments and store the result in the variable `total`.

14\.

Wonderful! You can now add items to the cart and the total will
accurately reflect the cart. However, trying to change the quantity of
the items using the number picker doesn’t seem to update the state.

Within the `createCartItem()` function, take a look at the `onChange`
value. It’s using the `onInputChangeHandler()` function, passing along
the `name` of the item and the new value of the input field
(`e.target.value`).

Now, take a look at `onInputChangeHandler()`. After receiving the `name`
and `input` values and doing some data validation and normalization on
the `input`, it should dispatch a `changeItemQuantity()` action to the
`store` to update the data.

- At the top of **Cart.js**, import the `changeItemQuantity()` action
  creator that you made earlier in this project.

15\.

At the end of `onInputChangeHandler()`…

- Use the `dispatch` method from the `props` to dispatch a
  `changeItemQuantity()` action with `name` as the first argument and
  `newQuantity` as the second.
- After completing this step, try modifying the quantity using the
  number input field!

## Extra Challenges

16\.

Well done! You’ve gone through the entire process of making action
creators, setting up a slice reducer, creating the `store` object, and
plugging in the `store` data into React components. If you’d like to
keep working on this project, try implementing this bonus feature:

- Add a search feature (like in the Recipes app) to filter the products
  shown in the inventory.

### [Solution](https://datttrian-codecademy-store.netlify.app/)
