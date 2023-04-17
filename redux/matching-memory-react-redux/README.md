# Matching Memory

When introducing Redux to a React application, you transfer the
responsibility of state management over to Redux. This is great because
Redux is really good at state management, but this also hinders React’s
optimized UI rendering. That is why `react-redux` was created to bind
the UI rendering of React to the state management of Redux.

This project explores where `react-redux` fits into an application by
finishing off the implementation of a one-player matching game.

The application consists of 5 React components:

1.  `App`: The root component, `App` renders the `Score` and `Board`
    components.
2.  `Score`: Child of the `App` component, `Score` will display the
    number of matched cards.
3.  `Board`: Child of the `App` component, `Board` will create the card
    grid for gameplay.
4.  `CardRow`: Child of the `Board` component, `CardRow` renders a row
    of `Card` components.
5.  `Card`: Child of the `CardRow` component, `Card` displays the card
    content when flipped over.

One goal of this project will be to show that a nested component like
`Card` can access data and dispatch actions as easily as a higher-level
component like `App` or `Score`.

Most of the Redux store logic is implemented in **boardSlice.js**. This
includes initializing the `state`, the reducers, and the action
creators.

The application `state` is an array of 12 objects with each object
representing a card:

``` jsx
// card object
{
  id: uniqueID, 
  contents: wordString, 
  visible: visibleBoolean, 
  matched: matchedBoolean
}
```

There are 3 actions needed to run the game:

- `setGame`: randomize the card array and set `visible` and `matched` of
  all cards to `false`
- `flipCard`: set `visible` of the specified card `id` to `true`
- `resetCards` set `visible` to `false` on unmatched cards

To complete this project you will add a `<Provider />` component,
implement selectors, retrieve data from the `store` with
`useSelector()`, and dispatch actions with the help of `useDispatch()`.
With all of this ahead of you, explore the starting code of the
application and then move on to the first task to begin implementing the
matching game.



Mark the tasks as complete by checking them off

## Provide the Redux Store to Your Application

1\.

The start of the project involves 5 tasks that will add code to the
application but will result in no change to what is rendered in the
browser. The first step is to give the application access to the Redux
store using the `<Provider />` component. Start with the import
statement.

In **index.js**:

1.  Import the `Provider` component.

2\.

With the `Provider` component imported, implement it inside the
`ReactDOM.render()` function.

Inside `ReactDOM.render()`:

1.  Wrap the root application component with the `<Provider />`
    component. Be sure to keep `<Provider />` as the first parameter of
    the render function.
2.  Pass the `store` variable through the `store` props.

## Create the Board Layout

3\.

In order to create the grid of cards, the `Board` component will
retrieve the `id` and `contents` properties from the `state` card
objects. This will require a selector.

At the bottom of **boardSlice.js**:

1.  Create an `export` statement with a defined selector, `selectBoard`.
2.  The selector should return an array created by `state.board.map()`.
3.  The callback function for the `map()` function should return an
    object `{id: card.id, contents: card.contents}`, where `card` is the
    argument of the callback function.

4\.

Now go to **Board.js**. While most of the board creation logic exists,
you need to retrieve the array of card objects and incorporate the data
to complete the creation process.

Start with the necessary import statements.

1.  Import `useSelector` from `react-redux`.
2.  Import the selector you implemented in the previous step from
    `./boardSlice.js`.

5\.

With the imports complete you can retrieve the data from the store and
subscribe the `Board` component to changes in the selected pieces of
state.

1.  Inside the `Board` component define a variable named `currentBoard`
    and assign it the data retrieved from calling `useSelector()` with
    the `selectBoard` selector.

6\.

The logic in the `Board` component creates a grid of cards by rendering
a calculated number of `CardRow` components. To finish the
implementation you will use the data in `currentBoard` to help calculate
the number of `CardRow` components and then create an array of card
objects for each row.

1.  To update the row number calculation, reassign the variable
    `numberOfCards` to the length of the array of cards, `currentBoard`.
2.  Inside the utility function `getRowCards()`, replace the empty
    object inside `rowCards.push()` with `currentBoard[cardIndex]`.

## Show Your Cards

7\.

Each `Card` component renders a single card object using the `id` and
`content` values. The `Card` also uses the `visible` and `matched`
boolean values from the `state` to determine how to render. You will
begin by selecting the visible card objects from the `state` data.

In **boardSlice**, implement a selector:

1.  Create an export statement with a defined selector,
    `selectVisibleIDs`.
2.  The selector should return an array that filters the board array and
    then maps the filtered array. Use `state.board.filter().map()`
3.  The callback function for `filter()` should test `card.visible`,
    where `card` is the parameter of the callback function.
4.  The callback function for `map()` should return `card.id`, where
    `card` is the parameter of the callback function.

8\.

With the selector complete, open **Card.js** to begin implementing the
presentation behavior of the Card component.

In **Card.js**, start with the necessary imports:

1.  Import `useSelector` from `react-redux`.
2.  Import the selector you implemented in the previous step from
    `boardSlice.js`.

9\.

Now, retrieve the visible card data to know which card to display on the
board.

Inside the `Card` component definition:

1.  Define a variable named `visibleIDs` and assign it the data
    retrieved from calling `useSelector()` with the `selectVisibleIDs`
    selector.

10\.

By default each `Card` component displays the Codecademy logo which
means its `contents` are not visible. With the visible card IDs now
known by each `Card` component, each card can show its `contents` if it
is one of the visible cards or remain hidden otherwise. This logic is
handled by the first `if` statement in the `Card` component definition.

Inside the `Card` component definition:

1.  Remove the `false` in the first `if` statement. Instead, check that
    the `Card` component’s `id` prop is included in `visibleIDs` array.

You should now see all the cards in their initialized order.

## Start the Game

11\.

You have created the board and made it possible to see the visible
cards. Now, it’s time to randomize the starting positions of the cards!

In **boardSlice.js** there is an action creator called `setBoard()` and
a corresponding case in `boardReducer`that randomizes the card order in
the `state` array and sets the `visible` and `matched` properties of
every card to `false`. This action should be dispatched when the ‘Start
Game’ button is clicked.

Open **App.js** where you will find the function `startGameHandler()`.
You need to dispatch the action from this function.

In **App.js**, start with imports:

1.  Import `useDispatch`from `react-redux`.
2.  Import the `setBoard` action creator from `boardSlice.js`.

12\.

Now you can dispatch the action created by `setBoard()` within
`startGameHandler()`. The `setBoard()` action creator takes no
arguments.

Inside the `App` component:

1.  Define a new variable called `dispatch` and give it the reference to
    the Redux store `dispatch` function.
2.  Inside the `startGameHandler()` function, dispatch the action
    created by `setBoard()`.

It is important to remember that action creators don’t dispatch actions
but return the formatted action object with the appropriate payload. You
can confirm this behavior in **boardSlice.js**.

When you click the ‘New Game’ button all the cards will be hidden and
their order randomized.

## Flipping Cards

13\.

To show the `contents` of each card the `flipCard()` action can be
dispatched when a card is clicked.

In **Card.js**, start with the necessary imports:

1.  Add `useDispatch`to the `react-redux` import statement.
2.  Add `flipCard` to the `boardSlice.js` import statement.

14\.

The action creator `flipCard()` takes a card `id` as an argument and is
used in dispatching the action that shows a card’s`contents`.

Inside the `Card` component definition:

1.  Define a variable called `dispatch` and give it the reference to the
    Redux store `dispatch` function returned by `useDispatch()`.
2.  Inside the `flipHandler()` function, dispatch the action created by
    `flipCard(id)`.

When each card is clicked, it becomes ‘flipped’ because it’s `visible`
property is set to `true`. In fact, you can now flip over all the cards
if you want to check that they are random.

15\.

Now you need to limit the number of visible cards at a time to `2`.

Inside the `Card` component:

1.  Place the condition that the length of `visibleIDs` is equal to `2`
    in the third `if` statement.

This stops the action from dispatching when cards are clicked so there
can never be more than 2 cards visible at a time.

## Reset the Flipped Cards

16\.

You have now hidden the randomized cards and allowed for two cards to be
flipped over at a time. In order to continue the game you need to be
able to reset the flipped cards using the `Try New Pair` button and the
`resetCards()` action creator.

In `App.js`, import and dispatch the `resetCards()` action:

1.  Add `resetCards` to the **boardSlice.js** import statement.
2.  Inside the `tryAgainHandler()` function, dispatch the action created
    by `resetCards()`.

Confirm that you completed this step properly by revealing two cards,
and then pressing “Try New Pair”

## Matching Cards

17\.

The last step of the game behavior is to identify matched cards on the
board using the `matched` property of each card object in the `store`.
This will require a final selector.

In **boardSlice.js**:

1.  Create an export statement with a defined selector,
    `selectMatchedIDs`.
2.  This selector is the same as `selectVisibleIDs()` except you need to
    change the `filter()` callback function to test the `card.matched`
    value.

18\.

You can now use the `selectMatchedIDs` selector in the `Card` components
to control how matched cards are rendered.

In **Card.js**:

1.  Add `selectMatchedIDs` to the **boardSlice.js** import statement.
2.  Define a variable named `matchedIDs` and assign it the data
    retrieved from calling `useSelector()` with the `selectMatchedIDs`
    selector.

19\.

Using the `matchedIDs` data, you can now reveal the matched cards by
changing their `cardStyle` to `'matched'`.

Inside the `Card` component:

1.  Replace the `false` condition in the second `if` statement that only
    checks if the card `id` prop is included in `matchedIDs`.
2.  Both visible and matched cards should show their text. So, add a
    second condition to the first `if` statement that checks if the
    card’s `id` prop is included in `matchedIDs` OR it is included in
    `visibleIDs`.

When you match a pair of cards, the cards keep showing their text and
stop dispatching actions (first `if` statement) and the text will turn
green (second `if` statement).

You now have a fully functioning one player matching game! Now move on
to the last step, keeping score.

## Get the Score

20\.

The application can also use the number of the matched cards to keep
score. This is what the `Score` component is for.

Inside **Score.js**:

- Import `useSelector` from `react-redux`.
- Import the `selectMatchedIDs` selector from `boardSlice.js`.

21\.

Finally, with the `selectMatchedIDs()`selector, get the number of values
in the array of IDs and set the score.

Inside the `Score` component:

- Define a variable named `cardsMatched` and assign it the data
  retrieved from calling `useSelector()` with the `selectMatchedIDs`
  selector.
- Replace the `0` inside the returned `<div>` with the length of
  `cardsMatched`.

The game now displays the number of cards you matched!

## Extra Challenges

22\.

Great Job! In this project, you were given a full implementation of a
React UI and a Redux store. Using `react-redux` you were able to connect
the two while maintaining the benefits of both React and Redux. Here are
a couple of challenges to try on your own.

1.  Reset the unmatched cards by clicking any card. This involves making
    a new action handler in **Card.js** and assigning it to the Card
    component click in a specific scenario.

2.  In **index.css** there is a ‘no-match’ selector which makes text red
    and can be applied to the card style when two visible cards are not
    matching. The challenge here is to apply the style to the text of
    cards that are flipped over and not matched.

## [Solution](https://datttrian-matching-memory.netlify.app/) (**Reference**: [prince-t-asamoah](https://github.com/prince-t-asamoah/matching-memory))
