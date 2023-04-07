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