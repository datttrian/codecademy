# Your code below:
toppings = ["pepperoni", "pineapple", "cheese", "sausage", "olives", "anchovies", "mushrooms"]

prices = [2, 6, 1, 3, 2, 7, 2]

num_two_dollar_slices = prices.count(2)

num_pizzas = len(toppings)

print("We Sell", num_pizzas, "different kinds of pizza!")

pizza_and_prices = list(zip(prices, toppings))

pizza_and_prices.sort()

cheapest_pizza = pizza_and_prices[0]

priciest_pizza = pizza_and_prices[-1]

pizza_and_prices.pop()

priciest_pizza = pizza_and_prices[-1]

three_cheapest = pizza_and_prices[:3]

print(three_cheapest)