# Challenge Project: Flashcards

#### Overview

Instead of a step-by-step tutorial, this project contains a series of
open-ended requirements which describe the project you’ll be building.
There are many possible ways to correctly fulfill all of these
requirements, and you should expect to use the internet, Codecademy, and
other resources when you encounter a problem that you cannot easily
solve.

#### Project Goals

In this project, you will practice using Redux and Redux Toolkit to
manage the complex state of a flashcard-style quiz app. Users will be
able to create their own topics, quizzes for those topics, and
flashcards for those quizzes. Users will also be able to interact with
their quizzes by flipping flashcards over.

The following task descriptions will walk through implementing the app’s
Redux logic starting with topics, then quizzes, and then cards. If you
would like to implement it in a different order feel free to do what is
comfortable for you.

#### Setup Instructions

If you choose to do this project on your computer instead of Codecademy,
you can download what you’ll need by clicking the “Download” button
below. Make sure you have
<a href="https://www.codecademy.com/articles/setting-up-node-locally"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Node installed on your computer</a> and then, inside the
project’s root directory, run `npm install`. Finally, run `npm start`
which will automatically open up a new tab in your browser with your
running application. If a new tab does not appear, you can visit
<a href="http://localhost:3000/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:3000/</a>.

Download



Mark the tasks as complete by checking them off

## Prerequisites

1\.

To complete this project, you should have completed Codecademy’s
<a href="https://www.codecademy.com/learn/react-101"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn React</a> and
<a href="https://www.codecademy.com/learn/learn-redux"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn Redux</a> courses.

2\.

This app uses `uuidv4()` function from the
<a href="https://www.npmjs.com/package/uuid"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">uuid</code></a> package to create
unique identifiers for topics/quizzes/cards. Below, you can see an
example of how this function is used:

``` jsx
import { v4 as uuidv4 } from 'uuid';
 
let uniqueId = uuidv4(); 
 
console.log(uniqueId); // Prints '1b9d6bcd-bbfd-4b2d-9b5d-ab8dfbbd4bed'
```

Though not required, if you would like to learn more about this
function, check out its
<a href="https://www.npmjs.com/package/uuid#uuidv4options-buffer-offset"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a>.

3\.

This app uses `react-router` to handle routing between different pages.
Since `react-router` is outside the scope of this project, we’ve written
the routing code for you. Though not required, if you’re curious about
how it works, you can explore `App.js` (where the routes for this app
are defined), read the <a href="https://reactrouter.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">react-router</code> docs</a>, or
take our <a href="https://www.codecademy.com/learn/learn-react-router"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn React Router</a> course!

## Project Requirements

4\.

At a high level, your application will be able to handle the following
URL routes, each with their own functionality:

On the `'/topics/new'` page:

- Users can create topics

On the `'/topics'` page:

- Users can view all topics
- Users can click on an individual topic and be redirected to the page
  for that topic

On the `/topics/:topicId` page:

- Users can view an individual topic and all quizzes for that topic
- Users can click on a quiz associated with a topic and be redirected to
  that quiz’s page

On the `'quizzes/new'` page:

- Users can create quizzes that are associated with topics and contain
  lists of flashcards
- Users can add and remove card fields in the new quiz form

On the `'/quizzes'` page:

- Users can view all quizzes
- Users can click on an individual quiz and be redirected to that quiz’s
  page

On the `'/quizzes/:quizId'` page:

- Users can view an individual quiz and flip cards over

5\.

Before you start writing code, take a moment to review our recommended
state structure:

- Your app will include three slices: one for topics, one for quizzes,
  and one for cards.
- Each slice’s state should include an object storing all the
  topics/quizzes/cards keyed by their `id`. This will allow you to
  quickly retrieve an object’s information whenever you need to look it
  up.
- Each individual quiz will have a `topicId` value corresponding to an
  individual topic in state.
- Similarly, each topic which will have a `quizIds` array corresponding
  to the associated quizzes in state.

All together, your app state will look like this:

``` jsx
{
  topics: {
    topics: {
      '123': {
        id: '123',
        name: 'example topic',
        icon: 'icon url',
        quizIds: ['456']
      }
    }
  },
  quizzes: {
    quizzes: {
      '456': {
        id: '456',
        topicId: '123',
        name: 'quiz for example topic',
        cardIds: ['789', '101', '102']
      }
    }
  },
  cards: {
    cards: {
      '789': {
        id: '789',
        front: 'front text',
        back: 'back text'
      },
      '101': {
        id: '101',
        front: 'front text',
        back: 'back text'
      },
      '102': {
        id: '102',
        front: 'front text',
        back: 'back text'
      },
    }
  }
}
```

6\.

Your first task is to write code to manage the state associated with
topics. In the **src/features/topics** directory, create a new file
containing a slice that:

- Is named `topics`.
- Has initial state consisting of an object that includes one property,
  `topics`, which corresponds to an empty object. This inner `topics`
  object will eventually hold all topics keyed by `id`.
- Has an `addTopic` action. You can expect the payload for this action
  to look like
  `{id: '123456', name: 'name of topic', icon: 'icon url'}`. Store these
  values in the state as a new topic object.
- Each topic object added to the state should also have a `quizIds`
  property, which will correspond to an array containing the `id`s of
  each quiz associated with the topic. When a topic is first created, it
  won’t have any associated quizzes, but you should still create an
  empty `quizIds` array so that all topics in the state conform to the
  same shape.
- Create a selector that selects the `topics` object nested within
  `initialState`.
- Export the selector as well as the action creators and reducer that
  your slice generates.

7\.

Add `topics` to the app’s store.

8\.

In **src/features/topics/Topics.js**, import the selector defined in
your slice and use it to access all the topics in state, and replace the
empty object currently assigned to `topics` with the topics in state.

9\.

Next, you’ll need to hook the new topic form up to the action creators
your slice generates. In **src/components/NewTopicForm.js**, import
`addTopic` and dispatch it from the event handler that runs when the new
topic form is submitted.

Verify that your code is working by filling out the form and submitting
it. You should be redirected to the `/topics` page and should see your
newly created topic there.

10\.

Great work! Now that you can create topics, your next task is to build
out the necessary functionality to add quizzes to your app. This will
involve creating two new slices—one for the quizzes themselves and one
for the cards that comprise them—and adding an action to your topics
slice to associate quizzes with the topic to which they belong. To
start, create in the **src/features/quizzes** directory, create a new
file containing a slice for quizzes that:

- Is named `'quizzes'`
- Has initial state consisting of an object that includes one property,
  `quizzes`, which corresponds to an empty object. This inner `quizzes`
  object will eventually hold all quizzes keyed by `id`.
- Has an `addQuiz` action. This action will receive a payload of the
  form
  `{ id: '123', name: 'quiz name', topicId: '456', cardIds: ['1', '2', '3', ...]}`.
- Export the selector as well as the action creators and reducer that
  your slice generates.

11\.

Next, you should add an action to your topics slice that adds a quiz’s
`id` to the `quizIds` array of the topic with which the newly quiz is
associated. This action action will receive a payload of the form
`{quizId: '123', topicId: '456'}`. Make sure to export this action
creator for use elsewhere in the app.

12\.

Conceptually, the actions of creating a new quiz and associating it with
its topic are a part of a single process. Back in the quiz slice file,
write an action creator that returns a thunk that dispatches these two
actions one after the other. This new thunk action creator is the one
that you will dispatch when a user creates a new quiz.

13\.

To test your work, you’ll need to connect your action creator to
**src/components/NewQuizForm** and make that component work. First,
import your topics selector from your topics slice and replace assign a
call to that selector to the variable `topics` (which is currently
assigned an empty object).

14\.

Next, import the thunk action creator from your quiz slice and dispatch
it from the `handleSubmit()` event handler that fires when the new quiz
form is submitted.

- Remember, that action creator expects to receive a payload of the form
  `{ id: '123', name: 'quiz name', topicId: '456', cardIds: ['1', '2', '3', ...]}`.
  You’ll have to generate an `id` by calling `uuidv4`. For now, pass the
  empty `cardIds` array variable for the `cardIds` property (you’ll
  change that in a later task).
- Test that your action creator works by filling out the new quiz form.
  After your quiz is created you should be rerouted to the `/quizzes`
  page and should see your newly created quiz there.

> Note: If you are doing this project on Codecademy.com, the URL bar may
> not change (but the user interface should!)

15\.

Lastly, import your selector in **src/features/quizzes/Quizzes.js** and
**src/features/quizzes/Quiz.js** and make sure those components are
displaying the correct data:

- The `Quizzes` component should render a `Link` for each quiz value in
  the quizzes slice of state.
- The `Quiz` component uses the `react-router-dom` method `useParams()`
  to determine the `quizId` to render. Therefore, it needs the full set
  of quizzes to find the appropriate quiz object to render.

16\.

Great work! Next, in the **src/features/cards** directory, create a new
file containing slice for cards that:

- Is named `'cards'`
- Has initial state consisting of an object that includes one property,
  `cards`, which corresponds to an empty object. This inner `cards`
  object will eventually hold all cards keyed by `id`.
- Has an `addCard` action. This action will receive a payload of the
  form `{ id: '123', front: 'front of card', back: 'back of card'}`.

17\.

Lastly, connect your `addCard` action creator to the new quiz form. In
**src/components/NewQuizForm**, in the event handler that fires when the
quiz form is submitted, iterate through the `cards` in that form’s local
state, and for each one:

1.  `dispatch` your `addCard` action creator. You will have to generate
    an `id` for each card using `uuidv4`.
2.  Store the `id` you create for each card in the `cardIds` array we’ve
    provided for you.Remember, your action creator expects to receive a
    payload of the form
    `{ id: '123', front: 'front of card', back: 'back of card'}`. You
    want to collect all the `cardIds` in an array so that you can pass
    them to the action creator that generates new quizzes. To use
    `uuidv4` to create an `id`, call the function like so: `uuidv4()`.

18\.

You previously passed an empty array for `cardIds` to the action creator
that generates a new quiz. Now that you have written code to collect an
array of all the `cardIds` created whenever the new quiz form is
submitted, replace the empty array with this array of `cardIds`.

To test that your code is working, create a new quiz with some cards.
Navigate to that quiz from the `/quizzes` page, and verify that your
cards show up. Flip them over by clicking on them to make sure that
you’ve correctly captured all of the state belonging to each card.

19\.

Now that you can add new cards, you’ll need to display cards on the
individual quiz page. The `Quiz` component renders a list of `Card`
components, so in **src/features/cards/Card.js**, import your cards
selector and use it to access all the cards in state.

## Solution

20\.

Great work! Visit <a
href="https://discuss.codecademy.com/t/flashcards-challenge-project-redux/576779"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">our forums</a> to compare your project to
our sample solution code. You can also learn how to host your own
solution on GitHub so you can share it with other learners! Your
solution might look different from ours, and that’s okay! There are
multiple ways to solve these projects, and you’ll learn more by seeing
others’ code.

## [Solution](https://datttrian-redux-flashcards.netlify.app/) (**Reference**: [Codecademy](https://discuss.codecademy.com/t/flashcards-challenge-project-redux/576779))
