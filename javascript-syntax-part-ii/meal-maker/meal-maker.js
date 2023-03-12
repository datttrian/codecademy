let menu = {
    _meal: "",
    _price: 0,
  
    set meal(mealToCheck) {
      if (typeof mealToCheck === "string") {
        this._meal = mealToCheck;
      }
    },
  
    set price(priceToCheck) {
      if (typeof priceToCheck === "number") {
        this._price = priceToCheck;
      }
    },
  
    get todaysSpecial() {
      if (this._meal && this._price) {
        return `Today's Special is ${this._meal} for $${this._price}!`;
      } else {
        return "Meal or price was not set correctly!";
      }
    },
  };
  
  menu.meal = "Spaghetti";
  menu.price = 5;
  console.log(menu.todaysSpecial);