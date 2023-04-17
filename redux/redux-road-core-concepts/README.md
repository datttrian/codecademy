# Redux Road

We’ve learned the core concepts of Redux. Now it’s game time.

In this project you will build an adventure game using reducers, state,
and actions. The state will represent, well, the state of the game. It
contains the player’s inventory, distance travelled, and time on the
road. Each event in the game is represented as an action. Players can
gather supplies, travel, and–if they play risky–sometimes tip over the
wagon carrying their supplies.

Let’s get started!



Mark the tasks as complete by checking them off

## Initial State and Reducer

1\.

First, define the starting point of our game. The player begins on day 0
at kilometer 0 with 100 units of supplies.

Define an `initialWagonState` with three properties:

- `supplies` starting at 100
- `distance` travelled, starting at 0
- `days` on the road, starting at 0

2\.

Define an empty reducer that will manage the state of the game. You can
give it any name you prefer.

Like any Redux reducer, it should be a function with `state` and
`action` parameters. It should set `state` to `initialWagonState` if no
value is provided.

3\.

Add a `switch` statement to your reducer. The `default` case should
return the `state`.

4\.

A player may gather supplies, which takes them a day and doesn’t cover
any distance.

If the `action.type` is `'gather'`, return a new state object with:

- 15 more supplies
- The same distance
- 1 more day

Make sure to return a new object to comply with the three rules of
reducers.

5\.

A player may travel for any number of days, which costs 20 supplies for
each day but adds 10 kilometers each day.

If the `action.type` is `'travel'`, assume that the `action.payload`
contains the number of days to travel. Return a new state object with:

- 20 less `supplies` for each day
- 10 more kilometers of `distance` traveled for each day
- The number of days added to `days`

6\.

If a player drives off-road or across deep rivers, the wagon may tip!
You’ll need to spend some supplies and a day to fix it.

If the `action.type` is `'tippedWagon'`, return a new state object with:

- 30 less `supplies`
- The same distance
- 1 more day

## Play!

7\.

Let’s try our game out.

Start a game by calling the reducer with an `undefined` state and empty
action object and storing the result in a new variable called `wagon`
(Initialize it with `let`). Then print the `wagon` value to the console.

Our initial `wagon` state should look like this:

``` jsx
{
  supplies: 100,
  distance: 0,
  days: 0
}
```

8\.

Our first day will be dedicated to travel.

- Call the reducer with the `wagon` state and an action with
  `type: 'travel'` and `payload: 1`.
- Store the returned new state back into `wagon`.
- Print the new state.

Our `wagon` state should look like this:

``` jsx
{
  supplies: 80,
  distance: 10,
  days: 1
}
```

9\.

On the second day, we stop to gather supplies.

- Call the reducer with the new `wagon` state and an action with
  `type: 'gather'` and no payload.
- Store the new state back into `wagon`.
- Print the new state.

Our `wagon` state should look like this:

``` jsx
{
  supplies: 95,
  distance: 10,
  days: 2
}
```

10\.

On the third day, we try to ford a rushing river…and our wagon tips
over, spilling some supplies.

- Call the reducer with the new `wagon` state and an action with
  `type: 'tippedWagon'`.
- Store the new state back into `wagon`
- Print the new state.

Our `wagon` state should look like this:

``` jsx
{
  supplies: 65,
  distance: 10,
  days: 3
}
```

11\.

On the following day, we set out for a long 3 days of travel.

- Call the reducer with the new `wagon` state and an action with
  `type: 'travel'` and a `payload: 3`.
- Store the new state back into `wagon`.
- Print the new state.

Our final `wagon` state should look like this:

``` jsx
{
  supplies: 5,
  distance: 40,
  days: 6
}
```

## Additions and Extra Credit

12\.

Currently, the player can continue traveling even if their supplies are
negative! Fix this in the `'travel'` case.

If there are not sufficient supplies to travel the given number of days,
return the current state.

13\.

Well done! You’ve taken great strides on the Redux Road. Watch your
supplies and watch out for snakes!

If you’d like to keep practicing, try implementing these features:

- Add a `cash` property, beginning with `200` for the initial state
- Add a `'sell'` case: Players can give away 20 supplies to gain 5 cash
- Add a `'buy'` case: Players can gain 25 supplies at the cost of 15
  cash
- Add a `'theft'` case: Outlaws steal half of the player’s cash

## [Solution](redux-road-core-concepts.js) (**Reference**: [ZoyaLatif](https://github.com/ZoyaLatif/Redux-Road))

``` javascript
const initialWagonState = {
  supplies: 100,
  distance: 0,
  days: 0,
  cash: 200,
}

const useReducer = (state = initialWagonState, {type, payload}) => {
  let { supplies, distance, days, cash } = state;
  switch(type) {
    case "gather": { 
      supplies += 15;
      days ++;
      return { ...state, supplies, days }; 
      }
    case "travel": {
      supplies -= (20 * payload);
      distance += (10 * payload);
      days += payload;
      return supplies < 0 ? state : { ...state, supplies, distance, days };
    }
    case "tippedWagon": {  
      supplies = supplies - 30 < 0 ? 0: supplies - 30;
      days += 1;
      return { ...state, supplies, days }; 
    }
    case "sell": { 
      supplies -= 20;
      cash += 5;
      return supplies < 0 ? state : { ...state, supplies, cash }; 
    }
    case "buy": { 
      supplies += 25;
      cash -= 15;
      return cash < 0 ? state : { ...state, supplies, cash }; 
    }
    case "theft": { 
      cash /= 2;
      return { ...state, cash }; 
    }
    default: { return state; }  
  }
}

let wagon = useReducer(undefined, {});
console.log(wagon);
wagon = useReducer(wagon, { type: "travel", payload: 1 })
console.log(wagon);
wagon = useReducer(wagon, { type: "gather" })
console.log(wagon);
wagon = useReducer(wagon, { type: "tippedWagon" })
console.log(wagon)
wagon = useReducer(wagon, { type: "travel", payload: 3 })
console.log(wagon);
wagon = useReducer(wagon, { type: "buy" })
console.log(wagon);
wagon = useReducer(wagon, { type: "theft" })
console.log(wagon);
wagon = useReducer(wagon, { type: "sell" })
console.log(wagon);
```

    ## { supplies: 100, distance: 0, days: 0, cash: 200 }
    ## { supplies: 80, distance: 10, days: 1, cash: 200 }
    ## { supplies: 95, distance: 10, days: 2, cash: 200 }
    ## { supplies: 65, distance: 10, days: 3, cash: 200 }
    ## { supplies: 5, distance: 40, days: 6, cash: 200 }
    ## { supplies: 30, distance: 40, days: 6, cash: 185 }
    ## { supplies: 30, distance: 40, days: 6, cash: 92.5 }
    ## { supplies: 10, distance: 40, days: 6, cash: 97.5 }

