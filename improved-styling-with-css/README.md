# Introduction: Improved Styling with CSS

## Introduction: Improved Styling with CSS

The goal of this unit is to dig deeper into CSS and improve your ability
to style websites. You will also learn more about navigation design.

After this unit, you will be able to:

- Apply more custom colors and fonts
- Style navigation elements like links and buttons
- Create secondary (breadcrumb) navigation

Learning is social. Whatever you’re working on, be sure to connect with
the Codecademy community in the
<a href="https://discuss.codecademy.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">forums</a>. Remember to check in with the
community regularly, including for things like asking for code reviews
on your project work and providing code reviews to others in the
<a href="https://discuss.codecademy.com/c/project/1833"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">projects category</a>, which can help to
reinforce what you’ve learned.

# Color

## Introduction to Color

CSS supports a wide variety of colors. These include *named colors*,
like `blue`, `black`, and `limegreen`, along with colors described by a
numeric value. Using a numeric system allows us to take advantage of the
whole spectrum of colors that browsers support. In this lesson, we’re
going to explore all the color options CSS offers.

Colors in CSS can be described in three different ways:

- *Named colors* — English words that describe colors, also called
  *keyword colors*
- *RGB* — numeric values that describe a mix of red, green, and blue
- *HSL* — numeric values that describe a mix of hue, saturation, and
  lightness

We’ll learn about and explore the benefits of each of these in-depth.
Using only named colors, you may feel like you’re picking labeled
crayons out of a box. By the end of this lesson, you’ll feel like a
painter mixing paints on a palette.

### Instructions

Proceed to the next exercise when you are ready to begin.

### Solution

``` html
<!DOCTYPE html>
<html>
<head>
  <title>The Best Coffee - By Region</title>
  <link href='https://fonts.googleapis.com/css?family=Covered+By+Your+Grace|Raleway:100,500,600,800' rel='stylesheet'>
  <link rel='stylesheet' href='style.css'>
</head>
<body>

  <div class='header'>
    <h1>The Best Coffee Regions</h1>
  </div>

  <div class='roasting'>
    <h3>A Note on Roasting</h3>
    <p>Roasting coffee transforms the chemical and physical properties of raw coffee beans into roasted coffee products. This process is what produces the characteristic flavor of coffee by causing the green coffee beans to change in taste. Many coffee roasters determine the level of roast by eye, assessing the color of the beans to determine the desired roast-level.</p>
  <br>
      <div class='spectrum'>
        <div class='green'>
          <h4>Green Beans</h4>
          <h5>22&degC (72&degF)</h5>
          <p>Green coffee as it arrives at the dock. They can be stored for approximately 12-18 months in a climate controlled environment before quality loss is noticeable.</p>
        </div>
        <div class='light'>
          <h4>Light Roast</h4>
          <h5>205&degC (401&degF)</h5>
          <p>Moderate light brown, but still mottled in appearance. A preferred roast for some specialty roasters, highlights origin characteristics as well as complex acidity.</p>
        </div>
        <div class='city'>
          <h4>City Roast</h4>
          <h5>219&degC (426&degF)</h5>
          <p>Medium brown, common for most specialty coffee. Good for tasting origin character, although roast character is noticeable.</p>
        </div>
        <div class='vienna'>
          <h4>Vienna Roast</h4>
          <h5>230&degC (446&degF)</h5>
          <p>Moderate dark brown with light surface oil, more bittersweet, caramel flavor, acidity muted. In the middle of second crack. Any origin characteristics have become eclipsed by roast at this level.</p>
        </div>
        <div class='italian'>
          <h4>Italian Roast</h4>
          <h5>245&degC (473&degF)</h5>
          <p>Nearly black and shiny, burnt tones become more distinct, acidity nearly eliminated, thin body.</p>
        </div>
      </div>
  </div>

  <ul>
    <li>
      <h2>Brazil</h2>
      <p>Arabica dominates both Brazil and the world as a whole with about 85% of the production; robusta accounts for the remaining 30%. In Brazil, arabica production is located in the main coffee-growing cluster of states led by Rio where arabica is
        produced almost exclusively. Robusta is primarily grown in the northwestern much smaller state of Espirito Santo where about 80% of the coffee is robusta.</p>
      <a href='#'>Learn More about Brazil</a>
    </li>
    <li>
      <h2>Colombia</h2>
      <p>Colombia has a reputation as producing mild, well balanced coffee beans.Colombia's average annual coffee production of 11.5 million bags is the third total highest in the world, after Brazil and Vietnam; though highest in terms of the arabica
        bean. The beans are exported to United States, Germany, France, Japan, and Italy. Most coffee is grown in the Colombian coffee growing axis region.</p>
      <a href='#'>Learn More about Colombia</a>
    </li>
    <li>
      <h2>India</h2>
      <p>Indian coffee, grown mostly in southern India under monsoon rainfall conditions, is also termed as 'Indian monsooned coffee'. Its flavor is defined as: 'At its best similar to the flavor characteristics of Pacific coffees, but at its worst bland and uninspiring'. The two well known species of coffee grown are the Arabica and Robusta. Probably the most commonly planted Arabica in India and Southeast Asia is S.795.</p>
      <a href='#'>Learn More about India</a>
    </li>
    <li>
      <h2>Ethiopia</h2>
      <p>Ethiopian beans can be divided into 3 categories: Longberry, Shortberry, and Mocha. Longberry varieties consist of the largest beans and are often considered of the highest quality in both value and flavor. Shortberry varieties are smaller. The Mocha variety is a highly prized commodity. Mocha Harars are known for their peaberry beans that often have complex chocolate, spice and citrus notes.</p>
      <a href='#'>Learn More about Ethiopia</a>
    </li>
    <li>
      <h2>Costa Rica</h2>
      <p>Costa Rican coffee beans are considered among the best in the world. Tarrazu is thought to produce the most desirable coffee beans in Costa Rica. In 2012, Tarrazu Geisha coffee became the most expensive coffee sold by Starbucks in 48 of their stores in the United States, using the Clover automated French press. The finest coffee is typically grown at altitudes of 1200 to 1700 meters.</p>
      <a href='#'>Learn More about Costa Rica</a>
    </li>
    <li>
      <h2>Kenya</h2>
      <p>The acidic soil in highlands of central Kenya, just the right amount of sunlight and rainfall provide excellent conditions for growing coffee plants. Coffee from Kenya is of the 'Colombia mild' type, and is well known for its intense flavor, full body, and pleasant aroma with notes of cocoa and high grade coffee from Kenya is one of the most sought-after coffees in the world.</p>
      <a href='#'>Learn More about Kenya</a>
    </li>
  </ul>

</body>
</html>
```

``` css
body {
  padding: 0;
  margin: 0;
  background: #F7F7F7;
  /* Old browsers */
  background: -moz-linear-gradient(45deg, #F7F7F7 0%, #EAE0D5 100%);
  /* FF3.6-15 */
  background: -webkit-linear-gradient(45deg, #F7F7F7 0%, #EAE0D5 100%);
  /* Chrome10-25,Safari5.1-6 */
  background: linear-gradient(45deg, #F7F7F7 0%, #EAE0D5 100%);
}

/** Header styles **/
.header {
  background-image: url(https://images.unsplash.com/photo-1455267847942-f4fdb784f0c5?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb);
  height: 400px;
  background-position: center center;
}

.roasting {
  margin: 40px auto;
  padding: 20px 30px 40px 30px;
  background-color: #FFFFFF;
  overflow: auto;
  width: 75%;
  border-radius: 4px;
  align-self: center;
}

.roasting p {
  color: #938E89;
  text-align: center;
  line-height: 24px;
  font-family: 'Raleway', sans-serif;
  font-size: 16px;
  font-weight: 400;
}

.spectrum div {
  font: inherit;
  padding: 0 20px;
  color: #FFFFFF;
  overflow: auto;
  opacity: 0.9;
}

.spectrum p {
  color: #FFFFFF;
  text-align: left;
}

/* Roast types */
.green {
  background-color: darkseagreen;
}

.light {
  background-color: sienna;
}

.city {
  background-color: saddlebrown;
}

.vienna {
  background-color: brown;
}

.italian {
  background-color: black;
}

/* Typography */
h1 {
  color: #41292C;
  font-family: 'Covered By Your Grace', sans-serif;
  font-size: 100px;
  line-height: 76px;
  margin: 0;
  position: relative;
  text-align: center;
  top: 20%;
}

h2 {
  color: #E4BB97;
  font-family: 'Raleway', sans-serif;
  font-size: 28px;
  font-weight: 500;
  text-align: left;
  text-transform: uppercase;
}

h3 {
  color: #41292C;
  font-family: 'Raleway', sans-serif;
  font-size: 22px;
  font-weight: 500;
  text-align: center;
}

h4 {
  font-family: 'Raleway', sans-serif;
  font-size: 28px;
  font-weight: 700;
  line-height: .2em;
}

h5 {
  font-family: 'Raleway', sans-serif;
  font-size: 20px;
  line-height: .2em;
  font-weight: 300;
}

/* Page elements */
ul {
  margin: 0 auto;
  padding: 0;
  width: 75%;
}

li {
  border-bottom: 1px solid #E4BB97;
  list-style: none;
  margin: 100px 0px;
  padding-bottom: 60px;
}

p {
  color: #444444;
  line-height: 32px;
  font-family: 'Raleway', sans-serif;
  font-size: 20px;
  font-weight: 100;
}

a {
  color: #214E34;
  font-family: 'Raleway', sans-serif;
  font-size: 13px;
  font-weight: 900;
  text-align: left;
  text-transform: uppercase;
  text-decoration: none;
  letter-spacing: 2px;
}
```

## Foreground vs Background

Before discussing the specifics of color, it’s important to make two
distinctions about color. Color can affect the following design aspects:

- The foreground color
- The background color

Foreground color is the color that an element appears in. For example,
when a heading is styled to appear green, the *foreground color* of the
heading has been styled.

Conversely, when a heading is styled so that its background appears
yellow, the *background color* of the heading has been styled

In CSS, these two design aspects can be styled with the following two
properties:

- `color` - this property styles an element’s foreground color.
- `background-color` - this property styles an element’s background
  color.

``` css
h1 {
  color: red;
  background-color: blue;
}
```

In the example above, the text of the heading will appear in red, and
the background of the heading will appear blue.

### Instructions

**1.**

In **style.css**, change the foreground color of the `h1` heading to
`midnightblue`.

**2.**

Next, set the background color of the `h1` heading to `aqua`.

Notice how only the background area behind heading changed.

### Solution

``` css
body {
  padding: 0;
  margin: 0;
  background: #F7F7F7;
  /* Old browsers */
  background: -moz-linear-gradient(45deg, #F7F7F7 0%, #EAE0D5 100%);
  /* FF3.6-15 */
  background: -webkit-linear-gradient(45deg, #F7F7F7 0%, #EAE0D5 100%);
  /* Chrome10-25,Safari5.1-6 */
  background: linear-gradient(45deg, #F7F7F7 0%, #EAE0D5 100%);
}

/** Header styles **/
.header {
  background-image: url(https://images.unsplash.com/photo-1455267847942-f4fdb784f0c5?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb);
  height: 400px;
  background-position: center center;
}

.roasting {
  margin: 40px auto;
  padding: 20px 30px 40px 30px;
  background-color: #FFFFFF;
  overflow: auto;
  width: 75%;
  border-radius: 4px;
  align-self: center;
}

.roasting p {
  color: #938E89;
  text-align: center;
  line-height: 24px;
  font-family: 'Raleway', sans-serif;
  font-size: 16px;
  font-weight: 400;
}

.spectrum div {
  font: inherit;
  padding: 0 20px;
  color: #FFFFFF;
  overflow: auto;
  opacity: 0.9;
}

.spectrum p {
  color: #FFFFFF;
  text-align: left;
}

/* Roast types */
.green {
  background-color: darkseagreen;
}

.light {
  background-color: sienna;
}

.city {
  background-color: saddlebrown;
}

.vienna {
  background-color: brown;
}

.italian {
  background-color: black;
}

/* Typography */
h1 {
  color: midnightblue;
  font-family: 'Covered By Your Grace', sans-serif;
  font-size: 100px;
  line-height: 76px;
  margin: 0;
  position: relative;
  text-align: center;
  top: 20%;
  background-color: aqua;
}

h2 {
  color: #E4BB97;
  font-family: 'Raleway', sans-serif;
  font-size: 28px;
  font-weight: 500;
  text-align: left;
  text-transform: uppercase;
}

h3 {
  color: #41292C;
  font-family: 'Raleway', sans-serif;
  font-size: 22px;
  font-weight: 500;
  text-align: center;
}

h4 {
  font-family: 'Raleway', sans-serif;
  font-size: 28px;
  font-weight: 700;
  line-height: .2em;
}

h5 {
  font-family: 'Raleway', sans-serif;
  font-size: 20px;
  line-height: .2em;
  font-weight: 300;
}

/* Page elements */
ul {
  margin: 0 auto;
  padding: 0;
  width: 75%;
}

li {
  border-bottom: 1px solid #E4BB97;
  list-style: none;
  margin: 100px 0px;
  padding-bottom: 60px;
}

p {
  color: #444444;
  line-height: 32px;
  font-family: 'Raleway', sans-serif;
  font-size: 20px;
  font-weight: 100;
}

a {
  color: #214E34;
  font-family: 'Raleway', sans-serif;
  font-size: 13px;
  font-weight: 900;
  text-align: left;
  text-transform: uppercase;
  text-decoration: none;
  letter-spacing: 2px;
}
```

## Hexadecimal

One syntax that we can use to specify colors is called *hexadecimal*.
Colors specified using this system are called *hex colors*. A hex color
begins with a hash character (`#`) which is followed by three or six
characters. The characters represent values for red, blue and green.

    darkseagreen: #8FBC8F
    sienna:       #A0522D
    saddlebrown:  #8B4513
    brown:        #A52A2A
    black:        #000000 or #000
    white:        #FFFFFF or #FFF
    aqua:         #00FFFF or #0FF

In the example above, you may notice that there are both letters and
numbers in the values. This is because the hexadecimal number system has
16 digits (0-15) instead of 10 (0-9) like in the standard decimal
system. To represent 10-15, we use A-F.
<a href="https://developer.mozilla.org/en-US/docs/Web/CSS/color_value"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Here</a> is a list of many different
colors and their hex values.

Notice that `black`, `white`, and `aqua` are all represented with both
three characters and six characters. This can be done with hex colors
whose number pairs are the same characters. In the example above, `aqua`
can be represented as `#0FF` because both of the first two characters
are `0` and the second and third pairs of characters are both `F`s. Keep
in mind that all three character hex colors can be represented with six
characters (by repeating each character twice) but the same is not true
in reverse.

You can include hex colors just as you would include named colors:
`background-color: #9932cc;`, and the letters can be uppercase or
lowercase.

### Instructions

**1.**

In the browser is a web page that uses named colors and hex colors.
We’re going to translate the named colors into hex, to be more
consistent. The colors won’t visually change, yet.

In **style.css**, find the CSS rule that uses the named color
`darkseagreen` and change it to its hex value, `#8FBC8F`.

**2.**

Find the four other named colors of the roast types and convert them to
their hex values, as shown here:

- `sienna`: `#A0522D`
- `saddlebrown`: `#8B4513`
- `brown`: `#A52A2A`
- `black`: `#000000`

### Solution

``` css
body {
  padding: 0;
  margin: 0;
  background: #F7F7F7;
  /* Old browsers */
  background: -moz-linear-gradient(45deg, #F7F7F7 0%, #EAE0D5 100%);
  /* FF3.6-15 */
  background: -webkit-linear-gradient(45deg, #F7F7F7 0%, #EAE0D5 100%);
  /* Chrome10-25,Safari5.1-6 */
  background: linear-gradient(45deg, #F7F7F7 0%, #EAE0D5 100%);
}

/** Header styles **/
.header {
  background-image: url(https://images.unsplash.com/photo-1455267847942-f4fdb784f0c5?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb);
  height: 400px;
  background-position: center center;
}

.roasting {
  margin: 40px auto;
  padding: 20px 30px 40px 30px;
  background-color: #FFFFFF;
  overflow: auto;
  width: 75%;
  border-radius: 4px;
  align-self: center;
}

.roasting p {
  color: #938E89;
  text-align: center;
  line-height: 24px;
  font-family: 'Raleway', sans-serif;
  font-size: 16px;
  font-weight: 400;
}

.spectrum div {
  font: inherit;
  padding: 0 20px;
  color: #FFFFFF;
  overflow: auto;
  opacity: 0.9;
}

.spectrum p {
  color: #FFFFFF;
  text-align: left;
}

/* Roast types */
.green {
  background-color: #8FBC8F;
}

.light {
  background-color: #A0522D;
}

.city {
  background-color: #8B4513;
}

.vienna {
  background-color: #A52A2A;
}

.italian {
  background-color: #000000;
}

/* Typography */
h1 {
  color: #41292C;
  font-family: 'Covered By Your Grace', sans-serif;
  font-size: 100px;
  line-height: 76px;
  margin: 0;
  position: relative;
  text-align: center;
  top: 20%;
  color: midnightblue;
  background-color: aqua;
}

h2 {
  color: #E4BB97;
  font-family: 'Raleway', sans-serif;
  font-size: 28px;
  font-weight: 500;
  text-align: left;
  text-transform: uppercase;
}

h3 {
  color: #41292C;
  font-family: 'Raleway', sans-serif;
  font-size: 22px;
  font-weight: 500;
  text-align: center;
}

h4 {
  font-family: 'Raleway', sans-serif;
  font-size: 28px;
  font-weight: 700;
  line-height: .2em;
}

h5 {
  font-family: 'Raleway', sans-serif;
  font-size: 20px;
  line-height: .2em;
  font-weight: 300;
}

/* Page elements */
ul {
  margin: 0 auto;
  padding: 0;
  width: 75%;
}

li {
  border-bottom: 1px solid #E4BB97;
  list-style: none;
  margin: 100px 0px;
  padding-bottom: 60px;
}

p {
  color: #444444;
  line-height: 32px;
  font-family: 'Raleway', sans-serif;
  font-size: 20px;
  font-weight: 100;
}

a {
  color: #214E34;
  font-family: 'Raleway', sans-serif;
  font-size: 13px;
  font-weight: 900;
  text-align: left;
  text-transform: uppercase;
  text-decoration: none;
  letter-spacing: 2px;
}
```

## RGB Colors

There is another syntax for representing RGB values, commonly referred
to as “RGB value” or just “RGB”, that uses decimal numbers rather than
hexadecimal numbers, and it looks like this:

``` css
h1 {
  color: rgb(23, 45, 23);
}
```

Each of the three values represents a color component, and each can have
a decimal number value from 0 to 255. The first number represents the
amount of red, the second is green, and the third is blue. These colors
are exactly the same as hex, but with a different syntax and a different
number system.

In general, hex and RGB color representations are equivalent. Which you
choose is a matter of personal taste. That said, it’s good to choose one
and be consistent throughout your CSS, because it’s easier to compare
hex to hex and RGB to RGB.

### Instructions

**1.**

In **style.css**, find the hex value `#8FBC8F` and change it to
`rgb(143, 188, 143)`.

**2.**

In **style.css**, find the hex value `#A0522D` and change it to
`rgb(160, 82, 45)`.

**3.**

In **style.css**, find the hex value `#8B4513` and change it to
`rgb(139, 69, 19)`.

### Solution

``` css
body {
  padding: 0;
  margin: 0;
  background: #F7F7F7;
  /* Old browsers */
  background: -moz-linear-gradient(45deg, #F7F7F7 0%, #EAE0D5 100%);
  /* FF3.6-15 */
  background: -webkit-linear-gradient(45deg, #F7F7F7 0%, #EAE0D5 100%);
  /* Chrome10-25,Safari5.1-6 */
  background: linear-gradient(45deg, #F7F7F7 0%, #EAE0D5 100%);
}

/** Header styles **/
.header {
  background-image: url(https://images.unsplash.com/photo-1455267847942-f4fdb784f0c5?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb);
  height: 400px;
  background-position: center center;
}

.roasting {
  margin: 40px auto;
  padding: 20px 30px 40px 30px;
  background-color: #FFFFFF;
  overflow: auto;
  width: 75%;
  border-radius: 4px;
  align-self: center;
}

.roasting p {
  color: #938E89;
  text-align: center;
  line-height: 24px;
  font-family: 'Raleway', sans-serif;
  font-size: 16px;
  font-weight: 400;
}

.spectrum div {
  font: inherit;
  padding: 0 20px;
  color: #FFFFFF;
  overflow: auto;
  opacity: 0.9;
}

.spectrum p {
  color: #FFFFFF;
  text-align: left;
}

/* Roast types */
.green {
  background-color: rgb(143, 188, 143);
}

.light {
  background-color: rgb(160, 82, 45);
}

.city {
  background-color: rgb(139, 69, 19);
}

.vienna {
  background-color: #A52A2A;
}

.italian {
  background-color: #000000;
}

/* Typography */
h1 {
  color: #41292C;
  font-family: 'Covered By Your Grace', sans-serif;
  font-size: 100px;
  line-height: 76px;
  margin: 0;
  position: relative;
  text-align: center;
  top: 20%;
  color: midnightblue;
  background-color: aqua;
}

h2 {
  color: #E4BB97;
  font-family: 'Raleway', sans-serif;
  font-size: 28px;
  font-weight: 500;
  text-align: left;
  text-transform: uppercase;
}

h3 {
  color: #41292C;
  font-family: 'Raleway', sans-serif;
  font-size: 22px;
  font-weight: 500;
  text-align: center;
}

h4 {
  font-family: 'Raleway', sans-serif;
  font-size: 28px;
  font-weight: 700;
  line-height: .2em;
}

h5 {
  font-family: 'Raleway', sans-serif;
  font-size: 20px;
  line-height: .2em;
  font-weight: 300;
}

/* Page elements */
ul {
  margin: 0 auto;
  padding: 0;
  width: 75%;
}

li {
  border-bottom: 1px solid #E4BB97;
  list-style: none;
  margin: 100px 0px;
  padding-bottom: 60px;
}

p {
  color: #444444;
  line-height: 32px;
  font-family: 'Raleway', sans-serif;
  font-size: 20px;
  font-weight: 100;
}

a {
  color: #214E34;
  font-family: 'Raleway', sans-serif;
  font-size: 13px;
  font-weight: 900;
  text-align: left;
  text-transform: uppercase;
  text-decoration: none;
  letter-spacing: 2px;
}
```

## Hex and RGB

The hexadecimal and rgb color system can represent many more colors than
the small set of CSS named colors. We can use this new set of colors to
refine our web page’s style.

In both hex and RGB, we have three values, one for each color. Each can
be one of 256 values. Specifically, `256 * 256 * 256 = 16,777,216`. That
is the amount of colors we can now represent. Compare that to the
roughly 140 named CSS colors!

Recall that we started with named colors, converted them to hex, and
then converted some of the hex colors to rgb. Unless we made a mistake,
all of the colors should still be the same, visually. Let’s use our
broadened palette to make some more refined color choices.

### Instructions

**1.**

In the `.green` rule in **style.css**, change the background color to
`#9EB599`.

Run the code. Can you tell the difference?

**2.**

In the `.light` rule in **style.css**, change the background color to
`#683C2C`.

**3.**

In the `.city` rule in **style.css**, change the background color to
`#4C352D`.

**4.**

In the `.vienna` rule in **style.css**, change the background color to
`#352926`.

**5.**

In the `.italian` rule in **style.css**, change the background color to
`#141212`.

Run the code one more time. These new colors are a lot closer to the
real-life color of each type of coffee. How does the subtle difference
feel?

### Solution

``` css
body {
  padding: 0;
  margin: 0;
  background: #F7F7F7;
  /* Old browsers */
  background: -moz-linear-gradient(45deg, #F7F7F7 0%, #EAE0D5 100%);
  /* FF3.6-15 */
  background: -webkit-linear-gradient(45deg, #F7F7F7 0%, #EAE0D5 100%);
  /* Chrome10-25,Safari5.1-6 */
  background: linear-gradient(45deg, #F7F7F7 0%, #EAE0D5 100%);
}

/** Header styles **/
.header {
  background-image: url(https://images.unsplash.com/photo-1455267847942-f4fdb784f0c5?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb);
  height: 400px;
  background-position: center center;
}

.roasting {
  margin: 40px auto;
  padding: 20px 30px 40px 30px;
  background-color: #FFFFFF;
  overflow: auto;
  width: 75%;
  border-radius: 4px;
  align-self: center;
}

.roasting p {
  color: #938E89;
  text-align: center;
  line-height: 24px;
  font-family: 'Raleway', sans-serif;
  font-size: 16px;
  font-weight: 400;
}

.spectrum div {
  font: inherit;
  padding: 0 20px;
  color: #FFFFFF;
  overflow: auto;
  opacity: 0.9;
}

.spectrum p {
  color: #FFFFFF;
  text-align: left;
}

/* Roast types */
.green {
  background-color: #9EB599;
}

.light {
  background-color: #683C2C;
}

.city {
  background-color: #4C352D;
}

.vienna {
  background-color: #352926;
}

.italian {
  background-color: #141212;
}

/* Typography */
h1 {
  color: #41292C;
  font-family: 'Covered By Your Grace', sans-serif;
  font-size: 100px;
  line-height: 76px;
  margin: 0;
  position: relative;
  text-align: center;
  top: 20%;
  color: midnightblue;
  background-color: aqua;
}

h2 {
  color: #E4BB97;
  font-family: 'Raleway', sans-serif;
  font-size: 28px;
  font-weight: 500;
  text-align: left;
  text-transform: uppercase;
}

h3 {
  color: #41292C;
  font-family: 'Raleway', sans-serif;
  font-size: 22px;
  font-weight: 500;
  text-align: center;
}

h4 {
  font-family: 'Raleway', sans-serif;
  font-size: 28px;
  font-weight: 700;
  line-height: .2em;
}

h5 {
  font-family: 'Raleway', sans-serif;
  font-size: 20px;
  line-height: .2em;
  font-weight: 300;
}

/* Page elements */
ul {
  margin: 0 auto;
  padding: 0;
  width: 75%;
}

li {
  border-bottom: 1px solid #E4BB97;
  list-style: none;
  margin: 100px 0px;
  padding-bottom: 60px;
}

p {
  color: #444444;
  line-height: 32px;
  font-family: 'Raleway', sans-serif;
  font-size: 20px;
  font-weight: 100;
}

a {
  color: #214E34;
  font-family: 'Raleway', sans-serif;
  font-size: 13px;
  font-weight: 900;
  text-align: left;
  text-transform: uppercase;
  text-decoration: none;
  letter-spacing: 2px;
}
```

## Hue, Saturation, and Lightness

The RGB color scheme is convenient because it’s very close to how
computers represent colors internally. There’s another equally powerful
system in CSS called the hue-saturation-lightness color scheme,
abbreviated as *HSL*.

The syntax for HSL is similar to the decimal form of RGB, though it
differs in important ways. The first number represents the degree of the
hue, and can be between 0 and 360. The second and third numbers are
percentages representing saturation and lightness respectively. Here is
an example:

``` css
color: hsl(120, 60%, 70%);
```

*Hue* is the first number. It refers to an angle on a color wheel. Red
is 0 degrees, Green is 120 degrees, Blue is 240 degrees, and then back
to Red at 360. You can see an example of a color wheel below.

<img
src="https://content.codecademy.com/courses/learn-css-color/color_wheel_4_background.svg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="color wheel" />

*Saturation* refers to the intensity or purity of the color. The
saturation increases towards 100% as the color becomes richer. The
saturation decreases towards 0% as the color becomes grayer.

*Lightness* refers to how light or dark the color is. Halfway, or 50%,
is normal lightness. Imagine a sliding dimmer on a light switch that
starts halfway. Sliding the dimmer up towards 100% makes the color
lighter, closer to white. Sliding the dimmer down towards 0% makes the
color darker, closer to black.

HSL is convenient for adjusting colors. In RGB, making the color a
little darker may affect all three color components. In HSL, that’s as
easy as changing the lightness value. HSL is also useful for making a
set of colors that work well together by selecting various colors that
have the same lightness and saturation but different hues.

### Instructions

**1.**

In the browser is a simple page with different colored rectangles.

In **style.css**, modify the lightness of the background color of the
class selector `.midground` to be `25%`.

**2.**

Change the saturation of the background color of the `.foreground` class
selector to `50%`.

**3.**

Change the hue of the `body` selector’s background color to `240`
degrees.

### Solution

``` css
html,
body {
  margin: 0;
  height: 100%;
}

.wrapper {
  position: relative;
  margin: auto;
  padding: 0;
  max-width: 75vw;
}

.midground, .foreground {
  position: absolute;
  top: 0;
  left: 0;
  display: inline-block;
  margin: 15vh 0 0 15vw;
  padding: 0;
  width: 35vw;
  height: 59vh;
}

body {
  background-color: hsl(240, 100%, 80%);
}

.midground {
  background-color: hsl(225, 100%, 25%);
}

.foreground {
  background-color: hsl(325, 50%, 50%);
}
```

## Opacity and Alpha

All of the colors we’ve seen so far have been opaque, or
non-transparent. When we overlap two opaque elements, nothing from the
bottom element shows through the top element. In this exercise, we’ll
change the *opacity*, or the amount of transparency, of some colors so
that some or all of the bottom elements are visible through a covering
element.

To use opacity in the HSL color scheme, use `hsla` instead of `hsl`, and
four values instead of three. For example:

``` css
color: hsla(34, 100%, 50%, 0.1);
```

The first three values work the same as `hsl`. The fourth value (which
we have not seen before) is the *alpha*. This last value is sometimes
called opacity.

Alpha is a decimal number from zero to one. If alpha is zero, the color
will be completely transparent. If alpha is one, the color will be
opaque. The value for half-transparent would be `0.5`.

You can think of the alpha value as, “the amount of the background to
mix with the foreground”. When a color’s alpha is below one, any color
behind it will be blended in. The blending happens for each pixel; no
blurring occurs.

The RGB color scheme has a similar syntax for opacity, `rgba`. Again,
the first three values work the same as `rgb` and the last value is the
alpha. Here’s an example:

``` css
color: rgba(234, 45, 98, 0.33);
```

A little unconventional, but still worth mentioning is how hex colors
can also have an alpha value. By adding a two-digit hexadecimal value to
the end of the six-digit representation (`#52BC8280`), or a one-digit
hexadecimal value to the end of the three-digit representation (#F003),
you can change the opacity of a hexadecimal color. Hex opacity ranges
from `00` (transparent) to `FF` (opaque).

Alpha can only be used with HSL, RGB, and hex colors; we cannot add the
alpha value to name colors like `green`.

There is, however, a named color keyword for zero opacity,
`transparent`. It’s equivalent to `rgba(0, 0, 0, 0)`, and it’s used like
any other color keyword:

``` css
color: transparent;
```

### Instructions

**1.**

Give the element with class `.foreground` an alpha value of `0.6`.
Remember to change `hsl` to `hsla`.

**2.**

Give the element with class `.midground` an alpha value of `0.4` using
`hsla`.

Run the code, and notice how all the colors blend depending on how they
overlap.

**3.**

Modify the `body` rule’s background color to have a value of
`rgba(0, 255, 0, 0.1)`.

How does opacity change the background?

### Solution

``` css
html,
body {
  margin: 0;
  height: 100%;
}

.wrapper {
  position: relative;
  margin: auto;
  padding: 0;
  max-width: 75vw;
}

.midground, .foreground {
  position: absolute;
  top: 0;
  left: 0;
  display: inline-block;
  margin: 15vh 0 0 15vw;
  padding: 0;
  width: 35vw;
  height: 59vh;
}

body {
  background-color: rgba(0, 255, 0, 0.1);
}

.midground {
  background-color: hsla(225, 100%, 25%, 0.4);
}

.foreground {
  background-color: hsla(325, 50%, 50%, 0.6);
}
```

## Review

We’ve completed our extensive tour of the colors in CSS! Let’s review
the key information we’ve learned.

There are four ways to represent color in CSS:

- Named colors—there are more than 140 named colors, which you can
  review
  <a href="https://developer.mozilla.org/en-US/docs/Web/CSS/named-color"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">here on MDN</a>.
- Hexadecimal or hex colors
  - Hexadecimal is a number system that has sixteen digits, 0 to 9
    followed by “A” to “F”.
  - Hex values always begin with `#` and specify values of red, blue,
    and green using hexadecimal numbers such as `#23F41A`.
  - Six-digit hex values with duplicate values for each RGB value can be
    shorted to three digits.
- RGB
  - RGB colors use the `rgb()` syntax with one value for red, one value
    for blue and one value for green.
  - RGB values range from 0 to 255 and look like this:
    `rgb(7, 210, 50)`.
- HSL
  - HSL stands for hue (the color itself), saturation (the intensity of
    the color), and lightness (how light or dark a color is).
  - Hue ranges from 0 to 360 and saturation and lightness are both
    represented as percentages like this: `hsl(200, 20%, 50%)`.
- You can add opacity to color in RGB and HSL by adding a fourth value,
  `a`, which is represented as a percentage.

Great job! Feel empowered to add a bit of color to each of your
projects!

### Instructions

Proceed when you’re ready to move on!

### Solution

``` html
<!DOCTYPE html>
<html lang='en'>
<head>
  <meta charset='UTF-8'>
  <title>Color - HSLA</title>
  <link rel='stylesheet' href='style.css'>
</head>
<body>
  <div class='wrapper'>
    <div class='midground'>
      <div class='foreground'></div>
    </div>
  </div>
</body>
</html>
```

``` css
html,
body {
  margin: 0;
  height: 100%;
}

.wrapper {
  position: relative;
  margin: auto;
  padding: 0;
  max-width: 75vw;
}

.midground, .foreground {
  position: absolute;
  top: 0;
  left: 0;
  display: inline-block;
  margin: 15vh 0 0 15vw;
  padding: 0;
  width: 35vw;
  height: 59vh;
}

body {
  background-color: rgba(0, 255, 0, 0.1);
}

.midground {
  background-color: hsla(225, 100%, 25%, 0.4);
}

.foreground {
  background-color: hsla(325, 50%, 50%, 0.6);
}
```

# Paint Store

In this project, you will follow step-by-step instructions to improve a
vibrant, color-rich web page for a home paint business. It displays
information about using color in a home and color swatches with varying
lightness, saturation, and hue.

The page is almost ready to be published. You’ll be making the following
color-related changes:

- Exchange some named colors with hexadecimal color values.
- Add some semi-transparent overlays to the banner and footer using
  RGBA.
- Fill in the first color column of the swatch samples using HSL colors.

The website’s existing **index.html** and **style.css** document files
are displayed in the text editor.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

1\.

In **style.css**, find the three CSS rules that use the named color
`orange`. This color is not exactly the right orange to match the paint
store brand. Replace `orange` with the hex color `#ff8000`.

- The first place of `orange` is the background of the header, under the
  selector `header`.

- The second location is the text color for the “Color Guide” heading,
  under the selector `#color-guide h2`.

- The final location is in the button in the footer, under the selector
  `footer .button`.

2\.

Make the main title text of the `h1` element semi-transparent to match
the spooky text theme. To do so, set the `color` property with `rgba()`
to make the text black (`0` for red, green, and blue values) with `0.7`
alpha value.

3\.

Give the header’s background image a semi-transparent orange overlay to
simulate a photographic filter.

In the `#banner:before` selector on line 95, add a background color with
the value `rgba(255, 128, 0, 0.75)`.

4\.

Now do the same for the footer, adding a semi-transparent layer on top
of the image to soften and darken it.

Find the selector `footer:before` and add a background color with same
semi-transparent value that you used for the `h1` element.

5\.

Soften the subtitles which say “Saturation,” “Lightness,” and “Hue.”
Currently, they are the default black.

Add a property to the `.color .swatches h4` rule to change the text
color to the light gray hex value `#9b9b9b`.

6\.

There are three `span` tags which describe the “base color” for each
color section. Each of them falls under a `<div>` tag with a class
specific to the color. Currently, all these base colors are described
with hex values. Change these to HSL.

For example, the value for color within the rule `.reds .base-color` is
currently `#ff002b`. Change this to the HSL value `hsl(350, 100%, 50%)`.

You can find the base color values for the green and blue sections in
the web page text. Update those to their corresponding HSL value as
well.

7\.

In each section (red, green, and blue), there are 15 color cells. Each
cell has its own rule specifying its color in **style.css**. Notice that
at the beginning of each color swatch, the first cell is empty. Find the
rule for each of the empty cells and fill in the `hsl()` value which
completes the pattern.

For example, the first blank swatch is `.reds .lightness .color-1`. In
each HSL value in this section, notice that the lightness value
decreases by 15 percentage points. Following the pattern, fill in the
value for the background-value for this cell, `hsl(350, 100%, 80%)`.

Use the patterns for each of the other 8 rows and fill in the missing
cell for each row.

In **style.css**, there is a comment above each empty cell’s rule that
describes the pattern.

### [Solution](color-paint-store)

# Typography

## Typography

In this lesson, we’ll focus on *typography*, the art of arranging text
on a page. We’ll look at:

- How to style and transform fonts.
- How to lay text out on a page.
- and how to add external fonts to your web pages.

Some of the most important information a user will see on a web page
will be textual. Styling text to make page content accessible and
engaging can significantly improve user experience. Let’s begin!

### Instructions

In the browser, we have a blog site with fonts of different sizes and
styles. In the following exercises, we’ll learn how to manipulate fonts
to create engaging interfaces.

Once you have an idea of the general layout of the page, proceed to the
next exercise.

### Solution

``` html
<!DOCTYPE html>
<html>
<head>
  <title>Typography Blog</title>
  <link rel='stylesheet' href='styles/reset.css'>
  <link rel='stylesheet' href='styles/style.css'>  
</head>
<body>

  <!-- Header -->
  <nav class='header'>
    <ul>
      <li><a class='home' href='#top'>FAVORITE FONTS</a></li>
      <li><a class='pagelink' href='#serif'>SERIF</a></li>
      <li><a class='pagelink' href='#sans'>SANS-SERIF</a></li>
      <li><a class='pagelink' href='#mono'>MONOSPACED</a></li>
    </ul>
  </nav>

  <!-- Banner Section -->
  <div class='banner'>
    <h1>Typography</h1>
      <p>While typography has been practiced for many centuries, digital font design is a relatively new discipline. There are some great examples of old-school fonts (also called typefaces) which have been adapted for use on digital displays. However, I would like to highlight a few of my favorite fonts that were created with screens in mind.</p>
  </div>

  <!-- Serif Section -->
  <div id='serif'>

    <!-- Editorial Section - Serif -->
    <div class='editorial'>
      <h2>Serif</h2>
      <p>Serifs are the small features at the end of strokes within letters. These features are <strong>functional as well as decorative</strong>. Serif fonts are widely used for body text (eg. articles) because they are considered easier to read than sans-serif fonts in print.</p>
      <p>Serif fonts can often create a feeling of traditionalism and antiquity, due to their common use in printed materials for many years.</p>
    </div>

    <!-- Font Card - Serif -->
    <div class='font-card garamond'>
      <h2>Garamond</h2>
      <h5 class='creator'>by Claude Garamond (16th Century)</h5>
        <span class='sample'>
          <h2>Bold</h2>
          <span class='bold text'>Abc</span>
        </span>
        <span class='sample'>
          <h2>Regular</h2>
          <span class='regular text'>Abc</span>
        </span>
        <span class='sample'>
          <h2>Italic</h2>
          <span class='italic text'>Abc</span>
        </span>
    </div>
  </div>

  <!-- Sans-Serif Section -->
  <div id='sans'>

    <!-- Editorial Section - Sans-Serif -->
    <div class='editorial'>
      <h2>Sans-Serif</h2>
      <p>Sans-Serif ('without serif') describes fonts with characters which lack flourishes at the ends of the strokes. Sans-serif fonts have become the most prevalent for display of text on computer screens, as on lower-resolution digital displays, fine details like serifs may disappear or appear too large.</p>
      <p>Sans-serif fonts are often used to project an image of simplicity, modernity or minimalism.</p>
    </div>

    <!-- Font Card - Sans-Serif -->
    <div class='font-card helvetica'>
      <h2>Helvetica</h2>
      <h5 class='creator'>by Max Miedinger & Eduard Hoffman (1957)</h5>
        <span class='sample'>
          <h2>Bold</h2>
          <span class='bold text'>Abc</span>
        </span>
        <span class='sample'>
          <h2>Regular</h2>
          <span class='regular text'>Abc</span>
        </span>
        <span class='sample'>
          <h2>Italic</h2>
          <span class='italic text'>Abc</span>
        </span>
    </div>
  </div>

  <!-- Monospaced Section -->
  <div id='mono'>

    <!-- Editorial - Monospaced -->
    <div class='editorial'>
      <h2>Monospaced</h2>
      <p>A monospaced font's characters each occupy the same amount of horizontal space. This contrasts with most fonts, where the letters and spacings have different widths. For example, the two high-use letters 'I' and 'E' do not need the same footprint. The first monospaced Western typefaces were designed for typewriters.</p>
      <p>Many text editors (like those used to write computer code) use monospaced fonts, which aid in distinguishing between potentially similar characters (like 'l' and '1') and in counting the number of characters in a line.</p>
    </div>

    <!-- Font Card - Monospaced -->
    <div class='font-card space'>
      <h2>Space Mono</h2>
      <h5 class='creator'>by Colophon Foundry (2016)</h5>
        <span class='sample'>
          <h2>Regular</h2>
          <span class='regular text'>Abc</span>
        </span>
    </div>
  </div>
</body>
</html>
```

``` css

/* Universal Styles */
html {
  font-size: 16px;
  font-family: 'Arial', sans-serif;
}

body {
  background-color: #F2F2F2;  
  text-align: center;  
}

h1 {
  padding: 20px;
  color: white;
  font-size: 28px;
  text-align: center;

}

h2 {
  padding: 40px 20px 0 20px;
  font-size: 24px;
  text-align: center;
}

a {
  text-decoration: none;
}

p {
  max-width: 900px;
  margin: 0 auto;
  padding: 20px;

}


/* Header */
.header {
  position: fixed;
  top: 0;
  width: 100%;
  padding: 20px 0;
  background-color: #fff;
  font-size: 14px;

}

.header li {
  display: inline-block;
  padding: 10px;
}

.header a {
  color: #4A4A4A;
}

a.home {
  color: #4D00FF;
}


/* Banner Section */
.banner {
  margin-top: 74px;
  padding: 40px 0 100px 0;
  background-color: #4D00FF;
}

.banner p {
  border-top: 1px solid #fff;
  border-bottom: 1px solid #fff;
  color: #ffffff;

}


/* Editorial Sections */
.editorial {
  padding-bottom: 40px;
  color: #717171;

}

/* Font Card Sections */
.font-card {
  padding: 10px 0 40px 0;
  background-color: #ffffff;
  text-align: center;
}

.font-card .creator {
  padding: 10px 20px;
  font-size: 16px;
  
}

.sample {
  display: inline-block;  
  padding: 5px 40px;
}

.sample .text {
  color: #4D00FF;
  font-size: 100px;
}

.garamond {
  font-family: Garamond;
}

.helvetica {
  font-family: Helvetica;
}

.space {
  
}

.bold {
  font-weight: 900;
}

.regular {
  font-weight: normal;
}

.italic {
  font-weight: normal;
  font-style: italic;
}
```

## Font Family

You may remember from the <a
href="https://www.codecademy.com/content-items/1368d1ea90382cbe44b60eeac19e9573/exercises/font-family"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Visual Rules</a> lesson that the font of an element can
be changed using the `font-family` property.

``` css
h1 {
  font-family: Arial;
}
```

In the example above, the font family for all `<h1>` heading elements
have been set to Arial.

Let’s talk about some things to keep in mind when setting `font-family`
values.

#### Multi-Word Values

When specifying a typeface with multiple words, like Times New Roman, it
is recommended to use quotation marks (`' '`) to group the words
together, like so:

``` css
h1 {
  font-family: 'Times New Roman';
}
```

#### Web Safe Fonts

There is a selection of fonts that will appear the same across all
browsers and operating systems. These fonts are referred to as *web safe
fonts*. You can check out a complete list of web safe fonts
<a href="https://www.cssfontstack.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>.

#### Fallback Fonts and Font Stacks

Web safe fonts are good *fallback fonts* that can be used if your
preferred font is not available.

``` css
h1 {
  font-family: Caslon, Georgia, 'Times New Roman';
}
```

In the example above, Georgia and Times New Roman are fallback fonts to
Caslon. When you specify a group of fonts, you have what is known as a
*font stack*. A font stack usually contains a list of similar-looking
fonts. Here, the browser will first try to use the Caslon font. If
that’s not available, it will try to use a similar font, Georgia. And if
Georgia is not available, it will try to use Times New Roman.

#### Serif and Sans-Serif

You may be wondering what features make a font similar to another font.
The fonts Caslon, Georgia, and Times New Roman are *Serif* fonts. Serif
fonts have extra details on the ends of each letter, as opposed to
*Sans-Serif* fonts, which do not have the extra details.

<img
src="https://content.codecademy.com/courses/web-101/htmlcss1-diagram__fontanatomy.svg"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Serif and Sans-Serif fonts" />

`serif` and `sans-serif` are also keyword values that can be added as a
final fallback font if nothing else in the font stack is available.

``` css
h1 {
  font-family: Caslon, Georgia, 'Times New Roman', serif;
}
```

In this final example, the font stack has 4 fonts. If the first 3 fonts
aren’t available, the browser will use whatever serif font is available
on the system.

### Instructions

**1.**

In **style.css**, change the font family of the `<h1>` element to
`Georgia`.

**2.**

In **style.css**, change the font family of the `.editorial` elements to
`Trebuchet MS`.

**3.**

In **style.css**, use a font stack to give the `.editorial` elements
fallback fonts of `Times New Roman` and `serif`.

### Solution

``` css

/* Universal Styles */
html {
  font-size: 16px;
  font-family: 'Arial', sans-serif;
}

body {
  background-color: #F2F2F2;  
  text-align: center;  
}

h1 {
  padding: 20px;
  color: white;
  font-size: 28px;
  text-align: center;
  font-family: Georgia;
}

h2 {
  padding: 40px 20px 0 20px;
  font-size: 24px;
  text-align: center;
}

a {
  text-decoration: none;
}

p {
  max-width: 900px;
  margin: 0 auto;
  padding: 20px;

}


/* Header */
.header {
  position: fixed;
  top: 0;
  width: 100%;
  padding: 20px 0;
  background-color: #fff;
  font-size: 14px;

}

.header li {
  display: inline-block;
  padding: 10px;
}

.header a {
  color: #4A4A4A;
}

a.home {
  color: #4D00FF;
}


/* Banner Section */
.banner {
  margin-top: 74px;
  padding: 40px 0 100px 0;
  background-color: #4D00FF;
}

.banner p {
  border-top: 1px solid #fff;
  border-bottom: 1px solid #fff;
  color: #ffffff;

}


/* Editorial Sections */
.editorial {
  padding-bottom: 40px;
  color: #717171;
  font-family: 'Trebuchet MS', 'Times New Roman', serif;
}

/* Font Card Sections */
.font-card {
  padding: 10px 0 40px 0;
  background-color: #ffffff;
  text-align: center;
}

.font-card .creator {
  padding: 10px 20px;
  font-size: 16px;
  
}

.sample {
  display: inline-block;  
  padding: 5px 40px;
}

.sample .text {
  color: #4D00FF;
  font-size: 100px;
}

.garamond {
  font-family: Garamond;
}

.helvetica {
  font-family: Helvetica;
}

.space {
  
}

.bold {
  font-weight: 900;
}

.regular {
  font-weight: normal;
}

.italic {
  font-weight: normal;
  font-style: italic;
}
```

## Font Weight

In CSS, the `font-weight` property controls how bold or thin text
appears. It can be specified with keywords or numerical values.

### Keyword Values

The `font-weight` property can take any one of these keyword values:

- `bold`: Bold font weight.
- `normal`: Normal font weight. This is the default value.
- `lighter`: One font weight lighter than the element’s parent value.
- `bolder`: One font weight bolder than the element’s parent value

### Numerical Values

Numerical values can range from 1 (lightest) to 1000 (boldest), but it
is common practice to use increments of 100. A font weight of `400` is
equal to the keyword value `normal`, and a font weight of `700` is equal
to `bold`.

``` css
.left-section {
  font-weight: 700;
}
 
.right-section {
  font-weight: bold; 
}
```

In the example above, text in elements of both `.left-section` and
`.right-section` classes will appear bold.

It’s important to note that not all fonts can be assigned a numeric font
weight, and not all numeric font weights are available to all fonts.
It’s a good practice to look up the font you are using to see which
`font-weight` values are available.

### Instructions

**1.**

In **style.css**, change the font weight of elements with the
`.banner p` selector to `lighter`.

**2.**

In **style.css**, change the font-weight of the `.header` class to
`900`.

### Solution

``` css

/* Universal Styles */
html {
  font-size: 16px;
  font-family: 'Arial', sans-serif;
}

body {
  background-color: #F2F2F2;  
  text-align: center;  
}

h1 {
  padding: 20px;
  color: white;
  font-size: 28px;
  text-align: center;
  font-family: Georgia;
}

h2 {
  padding: 40px 20px 0 20px;
  font-size: 24px;
  text-align: center;
}

a {
  text-decoration: none;
}

p {
  max-width: 900px;
  margin: 0 auto;
  padding: 20px;

}


/* Header */
.header {
  position: fixed;
  top: 0;
  width: 100%;
  padding: 20px 0;
  background-color: #fff;
  font-size: 14px;
  font-weight: 900;
}

.header li {
  display: inline-block;
  padding: 10px;
}

.header a {
  color: #4A4A4A;
}

a.home {
  color: #4D00FF;
}


/* Banner Section */
.banner {
  margin-top: 74px;
  padding: 40px 0 100px 0;
  background-color: #4D00FF;
}

.banner p {
  border-top: 1px solid #fff;
  border-bottom: 1px solid #fff;
  color: #ffffff;
  font-weight: lighter;
}


/* Editorial Sections */
.editorial {
  padding-bottom: 40px;
  color: #717171;
  font-family: 'Trebuchet MS', 'Times New Roman', serif;
}

/* Font Card Sections */
.font-card {
  padding: 10px 0 40px 0;
  background-color: #ffffff;
  text-align: center;
}

.font-card .creator {
  padding: 10px 20px;
  font-size: 16px;
  
}

.sample {
  display: inline-block;  
  padding: 5px 40px;
}

.sample .text {
  color: #4D00FF;
  font-size: 100px;
}

.garamond {
  font-family: Garamond;
}

.helvetica {
  font-family: Helvetica;
}

.space {
  
}

.bold {
  font-weight: 900;
}

.regular {
  font-weight: normal;
}

.italic {
  font-weight: normal;
  font-style: italic;
}
```

## Font Style

You can also italicize text with the `font-style` property.

``` css
h3 {
  font-style: italic;
}
```

The `italic` value causes text to appear in italics. The `font-style`
property also has a `normal` value which is the default.

### Instructions

**1.**

The web page features three sections, “Garamond”, “Helvetica”, and
“Space Mono”. Each of these sections includes a line with the name of
the font creator, such as “Claude Garamond”. Let’s italicize the
creator’s name on each of these cards.

In **style.css**, in the font card section, set the font style of
`.font-card .creator` to italic.

### Solution

``` css

/* Universal Styles */
html {
  font-size: 16px;
  font-family: 'Arial', sans-serif;
}

body {
  background-color: #F2F2F2;  
  text-align: center;  
}

h1 {
  padding: 20px;
  color: white;
  font-size: 28px;
  text-align: center;
  font-family: Georgia;
}

h2 {
  padding: 40px 20px 0 20px;
  font-size: 24px;
  text-align: center;
}

a {
  text-decoration: none;
}

p {
  max-width: 900px;
  margin: 0 auto;
  padding: 20px;

}


/* Header */
.header {
  position: fixed;
  top: 0;
  width: 100%;
  padding: 20px 0;
  background-color: #fff;
  font-size: 14px;
  font-weight: 900;
}

.header li {
  display: inline-block;
  padding: 10px;
}

.header a {
  color: #4A4A4A;
}

a.home {
  color: #4D00FF;
}


/* Banner Section */
.banner {
  margin-top: 74px;
  padding: 40px 0 100px 0;
  background-color: #4D00FF;
}

.banner p {
  border-top: 1px solid #fff;
  border-bottom: 1px solid #fff;
  color: #ffffff;
  font-weight: lighter;
}


/* Editorial Sections */
.editorial {
  padding-bottom: 40px;
  color: #717171;
  font-family: 'Trebuchet MS', 'Times New Roman', serif;
}

/* Font Card Sections */
.font-card {
  padding: 10px 0 40px 0;
  background-color: #ffffff;
  text-align: center;
}

.font-card .creator {
  padding: 10px 20px;
  font-size: 16px;
  font-style: italic;
}

.sample {
  display: inline-block;  
  padding: 5px 40px;
}

.sample .text {
  color: #4D00FF;
  font-size: 100px;
}

.garamond {
  font-family: Garamond;
}

.helvetica {
  font-family: Helvetica;
}

.space {
  
}

.bold {
  font-weight: 900;
}

.regular {
  font-weight: normal;
}

.italic {
  font-weight: normal;
  font-style: italic;
}
```

## Text Transformation

Text can also be styled to appear in either all uppercase or lowercase
with the `text-transform` property.

``` css
h1 {
  text-transform: uppercase;
}
```

The code in the example above formats all `<h1>` elements to appear in
`uppercase`, regardless of the case used for the heading within the HTML
code. Alternatively, the `lowercase` value could be used to format text
in all lowercase.

Since text can be directly typed in all uppercase or lowercase within an
HTML file, what is the point of a CSS rule that allows you to format
<a href="https://en.wikipedia.org/wiki/Letter_case"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">letter case</a>?

Depending on the type of content a web page displays, it may make sense
to always style a specific element in all uppercase or lowercase
letters. For example, a website that reports breaking news may decide to
format all `<h1>` heading elements such that they always appear in all
uppercase, as in the example above. It would also avoid uppercase text
in the HTML file, which could make code difficult to read.

### Instructions

**1.**

In **style.css**, transform the text in the main heading (`h1`) to
appear uppercase.

### Solution

``` css

/* Universal Styles */
html {
  font-size: 16px;
  font-family: 'Arial', sans-serif;
}

body {
  background-color: #F2F2F2;  
  text-align: center;  
}

h1 {
  padding: 20px;
  color: white;
  font-size: 28px;
  text-align: center;
  font-family: Georgia;
  text-transform: uppercase;
}

h2 {
  padding: 40px 20px 0 20px;
  font-size: 24px;
  text-align: center;
}

a {
  text-decoration: none;
}

p {
  max-width: 900px;
  margin: 0 auto;
  padding: 20px;

}


/* Header */
.header {
  position: fixed;
  top: 0;
  width: 100%;
  padding: 20px 0;
  background-color: #fff;
  font-size: 14px;
  font-weight: 900;
}

.header li {
  display: inline-block;
  padding: 10px;
}

.header a {
  color: #4A4A4A;
}

a.home {
  color: #4D00FF;
}


/* Banner Section */
.banner {
  margin-top: 74px;
  padding: 40px 0 100px 0;
  background-color: #4D00FF;
}

.banner p {
  border-top: 1px solid #fff;
  border-bottom: 1px solid #fff;
  color: #ffffff;
  font-weight: lighter;
}


/* Editorial Sections */
.editorial {
  padding-bottom: 40px;
  color: #717171;
  font-family: 'Trebuchet MS', 'Times New Roman', serif;
}

/* Font Card Sections */
.font-card {
  padding: 10px 0 40px 0;
  background-color: #ffffff;
  text-align: center;
}

.font-card .creator {
  padding: 10px 20px;
  font-size: 16px;
  font-style: italic;
}

.sample {
  display: inline-block;  
  padding: 5px 40px;
}

.sample .text {
  color: #4D00FF;
  font-size: 100px;
}

.garamond {
  font-family: Garamond;
}

.helvetica {
  font-family: Helvetica;
}

.space {
  
}

.bold {
  font-weight: 900;
}

.regular {
  font-weight: normal;
}

.italic {
  font-weight: normal;
  font-style: italic;
}
```

## Text Layout

You’ve learned how text can be defined by font family, weight, style,
and transformations. Now you’ll learn about some ways text can be
displayed or laid out within the element’s container.

#### Letter Spacing

The `letter-spacing` property is used to set the horizontal spacing
between the individual characters in an element. It’s not common to set
the spacing between letters, but it can sometimes help the readability
of certain fonts or styles. The `letter-spacing` property takes length
values in units, such as `2px` or `0.5em`.

``` css
p {
  letter-spacing: 2px;
}
```

In the example above, each character in the paragraph element will be
separated by 2 pixels.

#### Word Spacing

You can set the space between words with the `word-spacing` property.
It’s also not common to increase the spacing between words, but it may
help enhance the readability of bolded or enlarged text. The
`word-spacing` property also takes length values in units, such as `3px`
or `0.2em`.

``` css
h1 {
  word-spacing: 0.3em;
}
```

In the example above, the word spacing is set to `0.3em`. For word
spacing, using `em` values are recommended because the spacing can be
set based on the size of the font.

#### Line Height

<img
src="https://content.codecademy.com/courses/updated_images/htmlcss1-diagram__leading_updated_1-01.svg"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="diagram of line height property" />

We can use the `line-height` property to set how tall we want each line
containing our text to be. Line height values can be a unitless number,
such as `1.2`, or a length value, such as `12px`, `5%` or `2em`.

``` css
p {
  line-height: 1.4;
}
```

In the example above, the height between lines is set to `1.4`.
Generally, the unitless value is preferred since it is responsive based
on the current font size. In other words, if the `line-height` is
specified by a unitless number, changing the font size will
automatically readjust the line height.

#### Text Alignment

The `text-align` property, which you may already be familiar with from
the <a
href="https://www.codecademy.com/courses/learn-css/lessons/css-visual-rules/exercises/text-align"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">CSS Visual Rules lesson</a>, aligns text to its parent
element.

``` css
h1 {
  text-align: right;
}
```

In the example above, the `<h1>` element is aligned to the right side,
instead of the default left.

### Instructions

**1.**

Let’s put these new properties to work! In **style.css**, set the letter
spacing of the `<h1>` element to `0.3em`.

**2.**

In **style.css**, set the word spacing in the `.banner p` ruleset to
`0.25em`.

**3.**

In **style.css**, set the line height in the `.banner p` ruleset to
`1.4`.

**4.**

In **style.css**, set the text alignment of the `<p>` elements to
`justify`.

### Solution

``` css

/* Universal Styles */
html {
  font-size: 16px;
  font-family: 'Arial', sans-serif;
}

body {
  background-color: #F2F2F2;  
  text-align: center;  
}

h1 {
  padding: 20px;
  color: white;
  font-size: 28px;
  text-align: center;
  font-family: Georgia;
  text-transform: uppercase;
  letter-spacing: 0.3em;
}

h2 {
  padding: 40px 20px 0 20px;
  font-size: 24px;
  text-align: center;
}

a {
  text-decoration: none;
}

p {
  max-width: 900px;
  margin: 0 auto;
  padding: 20px;
  text-align: justify;
}


/* Header */
.header {
  position: fixed;
  top: 0;
  width: 100%;
  padding: 20px 0;
  background-color: #fff;
  font-size: 14px;
  font-weight: 900;
}

.header li {
  display: inline-block;
  padding: 10px;
}

.header a {
  color: #4A4A4A;
}

a.home {
  color: #4D00FF;
}


/* Banner Section */
.banner {
  margin-top: 74px;
  padding: 40px 0 100px 0;
  background-color: #4D00FF;
}

.banner p {
  border-top: 1px solid #fff;
  border-bottom: 1px solid #fff;
  color: #ffffff;
  font-weight: lighter;
  word-spacing: 0.25em;
  line-height: 1.4;
}


/* Editorial Sections */
.editorial {
  padding-bottom: 40px;
  color: #717171;
  font-family: 'Trebuchet MS', 'Times New Roman', serif;
}

/* Font Card Sections */
.font-card {
  padding: 10px 0 40px 0;
  background-color: #ffffff;
  text-align: center;
}

.font-card .creator {
  padding: 10px 20px;
  font-size: 16px;
  font-style: italic;
}

.sample {
  display: inline-block;  
  padding: 5px 40px;
}

.sample .text {
  color: #4D00FF;
  font-size: 100px;
}

.garamond {
  font-family: Garamond;
}

.helvetica {
  font-family: Helvetica;
}

.space {
  
}

.bold {
  font-weight: 900;
}

.regular {
  font-weight: normal;
}

.italic {
  font-weight: normal;
  font-style: italic;
}
```

## Web Fonts

Previously, we learned about web safe fonts, a group of fonts supported
across browsers and operating systems. However, the fonts you can use
for your website are limitless—*web fonts* allow you to express your
unique style through a multitude of different fonts found on the web.

Free font services, like <a href="https://fonts.google.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Google Fonts</a> and
<a href="https://fonts.adobe.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Adobe Fonts</a>, host fonts that you can
link to from your HTML document with a provided `<link>` element.

You can also use fonts from paid font distributors like
<a href="https://www.fonts.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">fonts.com</a> by downloading and hosting
them with the rest of your site’s files. You can create a `@font-face`
ruleset in your CSS stylesheet to link to the relative path of the font
file.

Both techniques for including web fonts into your site allow you to go
beyond the sometimes “traditional” appearance of web safe fonts. In the
next two exercises, you’ll learn exactly how to use each of these
techniques!

### Instructions

Explore the different example fonts shown on the right, as well as the
links to font services above. When you are ready, click “Next” to learn
how to use them!

## Web Fonts Using \<link\>

Online font services, like <a href="https://fonts.google.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Google Fonts</a>, make it easy to find
and link to fonts from your site. You can browse and select fonts that
match the style of your website.

<img
src="https://static-assets.codecademy.com/Courses/Learn-CSS/Typography/google-fonts-styles-page.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Google Fonts Roboto Styles Page" />

When you select a font in Google Fonts, you’ll be shown all of the
different styles available for that particular font. You can then select
the styles you want to use on your site.

<img
src="https://static-assets.codecademy.com/Courses/Learn-CSS/Typography/google-fonts-font-families.png"
class="img__1JGFO2nlisObc3KeOSGPRp"
alt="Showing Selected Font Families" />

When you’re done selecting a font and its styles, you can review your
selected font family, and a `<link>` element will be automatically
generated for you to use on your site!

``` html
<head>
  <!-- Add the link element for Google Fonts along with other metadata -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
</head>
```

The generated `<link>` element needs to be added to the `<head>` element
in your HTML document for it to be ready to be used in your CSS.

``` css
p {
  font-family: 'Roboto', sans-serif;
}
```

You can then create `font-family` declarations in your CSS, just like
how you learned to do with other fonts!

### Instructions

**1.**

The font at the bottom of the page, under the Monospaced section, needs
to be “Space Mono”. Let’s fix it by linking to the Space Mono Google
Font!

Navigate to <a href="https://fonts.google.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Google Fonts</a> and select the “Space
Mono” font. In the list of style variations, find “Regular 400” and
click “+ Select this style”.

Copy the provided `<link>` element, and paste it into the `<head>`
element inside **index.html**.

**2.**

In **style.css**, inside the `.space` ruleset, create a declaration
using the `font-family` property, with `'Space Mono', monospace;` as the
value.

### Solution

``` html
<!DOCTYPE html>
<html>
<head>
  <title>Typography Blog</title>
  <link rel='stylesheet' href='styles/reset.css'>
  <link rel='stylesheet' href='styles/style.css'>
  <link href="https://fonts.googleapis.com/css2?family=Space+Mono&display=swap" rel="stylesheet">
</head>
<body>

  <!-- Header -->
  <nav class='header'>
    <ul>
      <li><a class='home' href='#top'>FAVORITE FONTS</a></li>
      <li><a class='pagelink' href='#serif'>SERIF</a></li>
      <li><a class='pagelink' href='#sans'>SANS-SERIF</a></li>
      <li><a class='pagelink' href='#mono'>MONOSPACED</a></li>
    </ul>
  </nav>

  <!-- Banner Section -->
  <div class='banner'>
    <h1>Typography</h1>
      <p>While typography has been practiced for many centuries, digital font design is a relatively new discipline. There are some great examples of old-school fonts (also called typefaces) which have been adapted for use on digital displays. However, I would like to highlight a few of my favorite fonts that were created with screens in mind.</p>
  </div>

  <!-- Serif Section -->
  <div id='serif'>

    <!-- Editorial Section - Serif -->
    <div class='editorial'>
      <h2>Serif</h2>
      <p>Serifs are the small features at the end of strokes within letters. These features are <strong>functional as well as decorative</strong>. Serif fonts are widely used for body text (eg. articles) because they are considered easier to read than sans-serif fonts in print.</p>
      <p>Serif fonts can often create a feeling of traditionalism and antiquity, due to their common use in printed materials for many years.</p>
    </div>

    <!-- Font Card - Serif -->
    <div class='font-card garamond'>
      <h2>Garamond</h2>
      <h5 class='creator'>by Claude Garamond (16th Century)</h5>
        <span class='sample'>
          <h2>Bold</h2>
          <span class='bold text'>Abc</span>
        </span>
        <span class='sample'>
          <h2>Regular</h2>
          <span class='regular text'>Abc</span>
        </span>
        <span class='sample'>
          <h2>Italic</h2>
          <span class='italic text'>Abc</span>
        </span>
    </div>
  </div>

  <!-- Sans-Serif Section -->
  <div id='sans'>

    <!-- Editorial Section - Sans-Serif -->
    <div class='editorial'>
      <h2>Sans-Serif</h2>
      <p>Sans-Serif ('without serif') describes fonts with characters which lack flourishes at the ends of the strokes. Sans-serif fonts have become the most prevalent for display of text on computer screens, as on lower-resolution digital displays, fine details like serifs may disappear or appear too large.</p>
      <p>Sans-serif fonts are often used to project an image of simplicity, modernity or minimalism.</p>
    </div>

    <!-- Font Card - Sans-Serif -->
    <div class='font-card helvetica'>
      <h2>Helvetica</h2>
      <h5 class='creator'>by Max Miedinger & Eduard Hoffman (1957)</h5>
        <span class='sample'>
          <h2>Bold</h2>
          <span class='bold text'>Abc</span>
        </span>
        <span class='sample'>
          <h2>Regular</h2>
          <span class='regular text'>Abc</span>
        </span>
        <span class='sample'>
          <h2>Italic</h2>
          <span class='italic text'>Abc</span>
        </span>
    </div>
  </div>

  <!-- Monospaced Section -->
  <div id='mono'>

    <!-- Editorial - Monospaced -->
    <div class='editorial'>
      <h2>Monospaced</h2>
      <p>A monospaced font's characters each occupy the same amount of horizontal space. This contrasts with most fonts, where the letters and spacings have different widths. For example, the two high-use letters 'I' and 'E' do not need the same footprint. The first monospaced Western typefaces were designed for typewriters.</p>
      <p>Many text editors (like those used to write computer code) use monospaced fonts, which aid in distinguishing between potentially similar characters (like 'l' and '1') and in counting the number of characters in a line.</p>
    </div>

    <!-- Font Card - Monospaced -->
    <div class='font-card space'>
      <h2>Space Mono</h2>
      <h5 class='creator'>by Colophon Foundry (2016)</h5>
        <span class='sample'>
          <h2>Regular</h2>
          <span class='regular text'>Abc</span>
        </span>
    </div>
  </div>
</body>
</html>
```

``` css

/* Universal Styles */
html {
  font-size: 16px;
  font-family: 'Arial', sans-serif;
}

body {
  background-color: #F2F2F2;  
  text-align: center;  
}

h1 {
  padding: 20px;
  color: white;
  font-size: 28px;
  text-align: center;
  font-family: Georgia;
  text-transform: uppercase;
  letter-spacing: 0.3em;
}

h2 {
  padding: 40px 20px 0 20px;
  font-size: 24px;
  text-align: center;
}

a {
  text-decoration: none;
}

p {
  max-width: 900px;
  margin: 0 auto;
  padding: 20px;
  text-align: justify;
}


/* Header */
.header {
  position: fixed;
  top: 0;
  width: 100%;
  padding: 20px 0;
  background-color: #fff;
  font-size: 14px;
  font-weight: 900;
}

.header li {
  display: inline-block;
  padding: 10px;
}

.header a {
  color: #4A4A4A;
}

a.home {
  color: #4D00FF;
}


/* Banner Section */
.banner {
  margin-top: 74px;
  padding: 40px 0 100px 0;
  background-color: #4D00FF;
}

.banner p {
  border-top: 1px solid #fff;
  border-bottom: 1px solid #fff;
  color: #ffffff;
  font-weight: lighter;
  word-spacing: 0.25em;
  line-height: 1.4;
}


/* Editorial Sections */
.editorial {
  padding-bottom: 40px;
  color: #717171;
  font-family: 'Trebuchet MS', 'Times New Roman', serif;
}

/* Font Card Sections */
.font-card {
  padding: 10px 0 40px 0;
  background-color: #ffffff;
  text-align: center;
}

.font-card .creator {
  padding: 10px 20px;
  font-size: 16px;
  font-style: italic;
}

.sample {
  display: inline-block;  
  padding: 5px 40px;
}

.sample .text {
  color: #4D00FF;
  font-size: 100px;
}

.garamond {
  font-family: Garamond;
}

.helvetica {
  font-family: Helvetica;
}

.space {
  font-family: 'Space Mono', monospace;
}

.bold {
  font-weight: 900;
}

.regular {
  font-weight: normal;
}

.italic {
  font-weight: normal;
  font-style: italic;
}
```

## Web Fonts Using @font-face

Fonts can also be added using a
<a href="https://developer.mozilla.org/en-US/docs/Web/CSS/@font-face"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">@font-face</code> ruleset</a> in
your CSS stylesheet instead of using a `<link>` element in your HTML
document. As mentioned earlier, fonts can be downloaded just like any
other file on the web. They come in a few different file formats, such
as:

- OTF (OpenType Font)
- TTF (TrueType Font)
- WOFF (Web Open Font Format)
- WOFF2 (Web Open Font Format 2)

The different formats are a progression of standards for how fonts will
work with different browsers, with WOFF2 being the most progressive.
It’s a good idea to include TTF, WOFF, and WOFF2 formats with your
`@font-face` rule to ensure compatibility on all browsers.

Let’s take a look at how to use `@font-face` using the same Roboto font
as before:

<img
src="https://static-assets.codecademy.com/Courses/Learn-CSS/Typography/google-fonts-download.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Google Fonts Download" />

Within the “Selected Families” section, you can use the “Download”
button to download the font files to your computer. The files will be
downloaded as a single format, in this case, TTF. You can use a tool
such as <a href="https://google-webfonts-helper.herokuapp.com/fonts"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Google Web Fonts Helper</a> to generate
additional file types for WOFF and WOFF2.

When you have the files you need, move them to a folder inside your
website’s working directory, and you’re ready to use them in a
`@font-face` ruleset!

``` css
@font-face {
  font-family: 'MyParagraphFont';
  src: url('fonts/Roboto.woff2') format('woff2'),
       url('fonts/Roboto.woff') format('woff'),
       url('fonts/Roboto.ttf') format('truetype');
}
```

Let’s take a look at the example above, line by line:

- The `@font-face` at-rule is used as the selector. It’s recommended to
  define the `@font-face` ruleset at the top of your CSS stylesheet.
- Inside the declaration block, the `font-family` property is used to
  set a custom name for the downloaded font. The name can be anything
  you choose, but it must be surrounded by quotation marks. In the
  example, the font is named `'MyParagraphFont'`, as this font will be
  used for all paragraphs.
- The `src` property contains three values, each specifying the relative
  path to the font file and its format. In this example, the font files
  are stored inside a folder named `fonts` within the working directory.
- Note that the ordering for the different formats is important because
  our browser will start from the top of the list and search until it
  finds a font format that it supports. Read more on format
  prioritization on
  <a href="https://css-tricks.com/snippets/css/using-font-face-in-css/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">CSS-Tricks</a>.

Once the `@font-face` at-rule is defined, you can use the font in your
stylesheet!

``` css
p {
  font-family: 'MyParagraphFont', sans-serif;
}
```

Like using any other fonts, you can use the `font-family` property to
set the font on any HTML element. The downloaded font can be referenced
with the name you provided as the `font-family` property’s value in the
`@font-face` ruleset—in this case, `'MyParagraphFont'`.

### Instructions

**1.**

Let’s change the font of the banner using local font files. If you open
up the **fonts/** directory using the file navigator in the code editor,
you’ll notice that we have added local font files
`Glegoo-Regular.woff2`, `Glegoo-Regular.woff`, `Glegoo-Regular.ttf`.

At the top of **style.css**, create a `@font-face` ruleset and give it
the `font-family` property and `'GlegooBanner'` as its value.

**2.**

Within the `@font-face` rule, add a `src` property with the following
paths and formats as values, in the following order:

- `url('../fonts/Glegoo-Regular.woff2')` and a format of `'woff2'`
- `url('../fonts/Glegoo-Regular.woff')` and a format of `'woff'`
- `url('../fonts/Glegoo-Regular.ttf')` and a format of `'truetype'`

**3.**

Inside the `.banner p` ruleset, add a declaration that sets the font
family to `'GlegooBanner'`, with a font size of `20px`.

Press “Run” to see the changes in the browser.

### Solution

``` css
@font-face {
  font-family: 'GlegooBanner';
  src: url('../fonts/Glegoo-Regular.woff2') format('woff2'),
       url('../fonts/Glegoo-Regular.woff') format('woff'),
       url('../fonts/Glegoo-Regular.ttf') format('truetype');
}

/* Universal Styles */
html {
  font-size: 16px;
  font-family: 'Arial', sans-serif;
}

body {
  background-color: #F2F2F2;  
  text-align: center;  
}

h1 {
  padding: 20px;
  color: white;
  font-size: 28px;
  text-align: center;
  font-family: Georgia;
  text-transform: uppercase;
  letter-spacing: 0.3em;
}

h2 {
  padding: 40px 20px 0 20px;
  font-size: 24px;
  text-align: center;
}

a {
  text-decoration: none;
}

p {
  max-width: 900px;
  margin: 0 auto;
  padding: 20px;
  text-align: justify;
}


/* Header */
.header {
  position: fixed;
  top: 0;
  width: 100%;
  padding: 20px 0;
  background-color: #fff;
  font-size: 14px;
  font-weight: 900;
}

.header li {
  display: inline-block;
  padding: 10px;
}

.header a {
  color: #4A4A4A;
}

a.home {
  color: #4D00FF;
}


/* Banner Section */
.banner {
  margin-top: 74px;
  padding: 40px 0 100px 0;
  background-color: #4D00FF;
}

.banner p {
  border-top: 1px solid #fff;
  border-bottom: 1px solid #fff;
  color: #ffffff;
  font-weight: lighter;
  word-spacing: 0.25em;
  line-height: 1.4;
  font-family: 'GlegooBanner';
  font-size: 20px;
}


/* Editorial Sections */
.editorial {
  padding-bottom: 40px;
  color: #717171;
  font-family: 'Trebuchet MS', 'Times New Roman', serif;
}

/* Font Card Sections */
.font-card {
  padding: 10px 0 40px 0;
  background-color: #ffffff;
  text-align: center;
}

.font-card .creator {
  padding: 10px 20px;
  font-size: 16px;
  font-style: italic;
}

.sample {
  display: inline-block;  
  padding: 5px 40px;
}

.sample .text {
  color: #4D00FF;
  font-size: 100px;
}

.garamond {
  font-family: Garamond;
}

.helvetica {
  font-family: Helvetica;
}

.space {
  font-family: 'Space Mono', monospace;
}

.bold {
  font-weight: 900;
}

.regular {
  font-weight: normal;
}

.italic {
  font-weight: normal;
  font-style: italic;
}
```

## Review

Great job! You learned how to style an important aspect of the user
experience—typography.

Let’s review what you’ve learned so far:

- *Typography* is the art of arranging text on a page.
- Text can appear bold or thin with the `font-weight` property.
- Text can appear in italics with the `font-style` property.
- The vertical spacing between lines of text can be modified with the
  `line-height` property.
- *Serif* fonts have extra details on the ends of each letter.
  *Sans-Serif* fonts do not.
- *Fallback fonts* are used when a certain font is not installed on a
  user’s computer.
- The `word-spacing` property changes how far apart individual words
  are.
- The `letter-spacing` property changes how far apart individual letters
  are.
- The `text-align` property changes the horizontal alignment of text.
- Google Fonts provides free fonts that can be used in an HTML file with
  the `<link>` tag or the `@font-face` property.
- Local fonts can be added to a document with the `@font-face` property
  and the path to the font’s source.

Using your new knowledge of CSS typography, feel free to edit the code
further to make the web page more appealing!

### Solution

``` html
<!DOCTYPE html>
<html>
<head>
  <title>Typography Blog</title>
  <link rel='stylesheet' href='styles/reset.css'>
  <link rel='stylesheet' href='styles/style.css'>
  <link href="https://fonts.googleapis.com/css2?family=Space+Mono&display=swap" rel="stylesheet">
</head>
<body>

  <!-- Header -->
  <nav class='header'>
    <ul>
      <li><a class='home' href='#top'>FAVORITE FONTS</a></li>
      <li><a class='pagelink' href='#serif'>SERIF</a></li>
      <li><a class='pagelink' href='#sans'>SANS-SERIF</a></li>
      <li><a class='pagelink' href='#mono'>MONOSPACED</a></li>
    </ul>
  </nav>

  <!-- Banner Section -->
  <div class='banner'>
    <h1>Typography</h1>
      <p>While typography has been practiced for many centuries, digital font design is a relatively new discipline. There are some great examples of old-school fonts (also called typefaces) which have been adapted for use on digital displays. However, I would like to highlight a few of my favorite fonts that were created with screens in mind.</p>
  </div>

  <!-- Serif Section -->
  <div id='serif'>

    <!-- Editorial Section - Serif -->
    <div class='editorial'>
      <h2>Serif</h2>
      <p>Serifs are the small features at the end of strokes within letters. These features are <strong>functional as well as decorative</strong>. Serif fonts are widely used for body text (eg. articles) because they are considered easier to read than sans-serif fonts in print.</p>
      <p>Serif fonts can often create a feeling of traditionalism and antiquity, due to their common use in printed materials for many years.</p>
    </div>

    <!-- Font Card - Serif -->
    <div class='font-card garamond'>
      <h2>Garamond</h2>
      <h5 class='creator'>by Claude Garamond (16th Century)</h5>
        <span class='sample'>
          <h2>Bold</h2>
          <span class='bold text'>Abc</span>
        </span>
        <span class='sample'>
          <h2>Regular</h2>
          <span class='regular text'>Abc</span>
        </span>
        <span class='sample'>
          <h2>Italic</h2>
          <span class='italic text'>Abc</span>
        </span>
    </div>
  </div>

  <!-- Sans-Serif Section -->
  <div id='sans'>

    <!-- Editorial Section - Sans-Serif -->
    <div class='editorial'>
      <h2>Sans-Serif</h2>
      <p>Sans-Serif ('without serif') describes fonts with characters which lack flourishes at the ends of the strokes. Sans-serif fonts have become the most prevalent for display of text on computer screens, as on lower-resolution digital displays, fine details like serifs may disappear or appear too large.</p>
      <p>Sans-serif fonts are often used to project an image of simplicity, modernity or minimalism.</p>
    </div>

    <!-- Font Card - Sans-Serif -->
    <div class='font-card helvetica'>
      <h2>Helvetica</h2>
      <h5 class='creator'>by Max Miedinger & Eduard Hoffman (1957)</h5>
        <span class='sample'>
          <h2>Bold</h2>
          <span class='bold text'>Abc</span>
        </span>
        <span class='sample'>
          <h2>Regular</h2>
          <span class='regular text'>Abc</span>
        </span>
        <span class='sample'>
          <h2>Italic</h2>
          <span class='italic text'>Abc</span>
        </span>
    </div>
  </div>

  <!-- Monospaced Section -->
  <div id='mono'>

    <!-- Editorial - Monospaced -->
    <div class='editorial'>
      <h2>Monospaced</h2>
      <p>A monospaced font's characters each occupy the same amount of horizontal space. This contrasts with most fonts, where the letters and spacings have different widths. For example, the two high-use letters 'I' and 'E' do not need the same footprint. The first monospaced Western typefaces were designed for typewriters.</p>
      <p>Many text editors (like those used to write computer code) use monospaced fonts, which aid in distinguishing between potentially similar characters (like 'l' and '1') and in counting the number of characters in a line.</p>
    </div>

    <!-- Font Card - Monospaced -->
    <div class='font-card space'>
      <h2>Space Mono</h2>
      <h5 class='creator'>by Colophon Foundry (2016)</h5>
        <span class='sample'>
          <h2>Regular</h2>
          <span class='regular text'>Abc</span>
        </span>
    </div>
  </div>
</body>
</html>
```

``` css
@font-face {
  font-family: 'GlegooBanner';
  src: url('../fonts/Glegoo-Regular.woff2') format('woff2'),
       url('../fonts/Glegoo-Regular.woff') format('woff'),
       url('../fonts/Glegoo-Regular.ttf') format('truetype')
}

/* Universal Styles */
html {
  font-size: 16px;
  font-family: 'Arial', sans-serif;
}

body {
  background-color: #F2F2F2;  
  text-align: center;  
}

h1 {
  padding: 20px;
  color: white;
  font-size: 28px;
  text-align: center;
  font-family: Georgia;
  text-transform: uppercase;
  letter-spacing: 0.3em;
}

h2 {
  padding: 40px 20px 0 20px;
  font-size: 24px;
  text-align: center;
}

a {
  text-decoration: none;
}

p {
  max-width: 900px;
  margin: 0 auto;
  padding: 20px;
  text-align: justify;
}


/* Header */
.header {
  position: fixed;
  top: 0;
  width: 100%;
  padding: 20px 0;
  background-color: #fff;
  font-size: 14px;
  font-weight: 900;
}

.header li {
  display: inline-block;
  padding: 10px;
}

.header a {
  color: #4A4A4A;
}

a.home {
  color: #4D00FF;
}


/* Banner Section */
.banner {
  margin-top: 74px;
  padding: 40px 0 100px 0;
  background-color: #4D00FF;
}

.banner p {
  border-top: 1px solid #fff;
  border-bottom: 1px solid #fff;
  color: #ffffff;
  font-weight: lighter;
  word-spacing: 0.25em;
  line-height: 1.4;
  font-family: 'GlegooBanner';
  font-size: 20px;
}


/* Editorial Sections */
.editorial {
  padding-bottom: 40px;
  color: #717171;
  font-family: 'Trebuchet MS', 'Times New Roman', serif;
}

/* Font Card Sections */
.font-card {
  padding: 10px 0 40px 0;
  background-color: #ffffff;
  text-align: center;
}

.font-card .creator {
  padding: 10px 20px;
  font-size: 16px;
  font-style: italic;
}

.sample {
  display: inline-block;  
  padding: 5px 40px;
}

.sample .text {
  color: #4D00FF;
  font-size: 100px;
}

.garamond {
  font-family: Garamond;
}

.helvetica {
  font-family: Helvetica;
}

.space {
  font-family: 'Space Mono', monospace;
}

.bold {
  font-weight: 900;
}

.regular {
  font-weight: normal;
}

.italic {
  font-weight: normal;
  font-style: italic;
}
```

# Typography

Aoife Conleavy is a novelist who has been writing about her travels for
nearly two decades. Before the launch of her new novel *Tide Blade*,
which features the stories of real-life characters in Morocco, the
author wants to spruce up her professional website. You’ll modify the
typography on her site, changing the size, style, and font families, to
make the page easier to read.

Using your understanding of typography, help Aoife Conleavy improve the
readability of her site for her readers.

### Instructions

## Morocco

1\.

The `header` section of Aoife Conleavy’s site contains the author’s
name, along with the text “Travels”, “Fiction”, and “Contact”.

Change the `font-weight` of the `header` so that the text appears bold.

2\.

Moving down the page, the `banner` section contains a stunning image,
two blocks of text, an `h2` tag with the text “DEC 20XX”, and an `h1`
tag with the text “Morocco”.

Give the `h2` tag a font weight of 500 and the `h1` tag a font weight of
900.

3\.

After reviewing the project, the author suggests that the line height
seems a bit off and needs to be altered throughout the page.

Work down the page and set `line-height` of the following page elements
as recommended:

- The paragraph within the `journal` section should have a line height
  of `1.4` times the font size.
- The first letter of the journal section should have a line height of
  `.87` times the font size.
- The quote should have a line height of `1.2` times the font size.
- The footer content should have a line height `1.5` times the font
  size.

4\.

The site currently uses common `serif` and `sans-serif` fonts found on
users’ computers. Since the author first published the site, a number of
new font libraries have created fonts that you think would be a better
fit for the site.

Using the <a href="https://fonts.google.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Google Fonts API</a>, add the following
fonts to the **index.html** file:

- Abril Fatface
- Work Sans in `font-weight` 400, 500, and 800.
- Merriweather in `font-weight` 400 and 400 italic

You may either link these fonts in a single `<link>` tag, or three
separate `<link>` tags.

5\.

You can now use the newly added fonts from Google Fonts within our
project. Moving down the page again, set the `font-family` and property
as recommended:

- Set the typeface of the `h2` tag in the `banner` section to
  `"Work Sans"`
- Set the typeface of the `h1` tag in the `banner` section to
  `"Abril Fatface"`
- Set the typeface of the journal section to `Work Sans`
- Set the typeface of the photo caption to `Merriweather`

6\.

The page looks great, but you also have to account for users who may not
be able to access the Google Fonts. Find them several fallback fonts to
use in case they are restricted from accessing fonts from a third party:

Set the fallback fonts as follows:

- `h2` tag in the `banner` section: `"Arial"` and `sans-serif`
- `h1` tag in the `banner` section: `sans-serif`
- The journal section: `serif`
- The photo caption: `serif`

7\.

Instead of linking the font from **index.html**, you realize it would be
a better to import Google fonts in the files directly into stylesheets
with the `@font-face` property.

Use the `@font-face` property to import the fonts directly to the
stylesheets, and remove the `<link>` tags that reference the Google
fonts from the **index.html** page.

8\.

Looking at the page, the author suggests the page really come together
if we used a specific font, `CroissantOne-Regular.ttf`, in the footer.
The files have been downloaded and added to our project within the
**fonts** directory within the **styles/** directory where our CSS files
are stored.

To complete the task you need to use the `@font-face` property to make
these fonts accessible in the stylesheets. Name the font
`"Croissant One"`.

9\.

Now that you have a `@font-face` rule, set the `font-family` property of
the footer to `"Croissant One"` with `"Merriweather"` and `serif` as the
fallback fonts.

### [Solution](typography-ii)

# Challenge Project: Build Your Own Cheat Sheet

#### Overview

This project is slightly different than others you have encountered thus
far on Codecademy. Instead of a step-by-step tutorial, this project
contains a series of open-ended requirements which describe the project
you’ll be building. There are many possible ways to correctly fulfill
all of these requirements, and you should expect to use the internet,
Codecademy, and other resources when you encounter a problem that you
cannot easily solve.

#### Project Goals

In this project, you’ll be building your own reference cheat sheet to
help you build more websites in the future! Although there are great
places to learn HTML & CSS like Codecademy, the best reference for
yourself is often your own notes and projects.

#### Setup Instructions

If you choose to do this project on your computer instead of Codecademy,
you can download what you’ll need by clicking the “Download” button
below. If you need help setting up your computer, read our
<a href="https://www.codecademy.com/articles/visual-studio-code"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">article about setting up a text editor for HTML/CSS
development</a>.

### Instructions

Mark the tasks as complete by checking them off

## Prerequisites

1\.

To complete this project, you should have completed the codecademy
<a href="https://www.codecademy.com/learn/learn-html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Introduction to HTML</a> course through the HTML tables
lesson, and lessons in
<a href="https://www.codecademy.com/learn/learn-css"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn CSS: Selectors and Visual Rules</a>.

## Project Requirements

2\.

Your project should document at least one HTML or CSS topic. In our <a
href="https://content.codecademy.com/PRO/independent-practice-projects/html-css-cheat-sheet/example/index.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">example project</a>, we documented the
tags and attributes used in HTML tables layouts, but you can choose any
HTML or CSS topic that you’ve learned so far—the sky is the limit!

Possible topics could be:

- HTML Tables
- Other HTML tags
- CSS selectors and specificity
- Common CSS properties

If you choose to document HTML tags, open the hint to see how to include
HTML tags as text in your code.

3\.

Your site uses HTML tables to display the documentation. Be sure to
label the columns in your HTML.

In our example site, we used tables with columns for:

- The tag or attribute name
- The actual formatted tag (eg. `<table>`)
- A description of what to use the tag for.

You can use these same columns or choose your own.

4\.

Your site should utilize a custom color scheme. You can use any of the
<a href="http://www.colors.commutercreative.com/grid/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">named CSS colors</a>.

5\.

Your site should use custom styles for any code such as HTML tags (like
`<h1>`) or CSS properties or values (like `font-family`). Represent code
using a <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/font-family#Examples"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">monospace</a> font family and a different
background color.

## Solution

6\.

Great work! Visit <a
href="https://discuss.codecademy.com/t/build-your-own-cheatsheet-challenge-project-html-css/462393"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">our forums</a> to compare your project to
our sample solution code. You can also learn how to host your own
solution on GitHub so you can share it with other learners!

Your solution might look different from ours, and that’s okay! There are
multiple ways to solve these projects, and you’ll learn more by seeing
others’ code.

If you’d like to extend your cheat sheet, keep adding new topics to it
as you continue to learn more HTML, CSS, and more. As you become more
advanced with CSS, you’ll also be able to improve the styling and layout
of the cheat sheet itself.

### [Solution](independent-project-html-documentation)

# Learn Links and Buttons

## Introduction

Imagine that you are a user who has arrived at the website loaded in the
web browser here. What can you interact with, what can you click on to
navigate the site? Before clicking anything, scroll through the page and
try to guess how elements might behave when clicked. After this, click
through and see what actually works. Even if you were totally correct in
your assumptions about what was clickable (because you are a competent
user of web interfaces or are very lucky!), many users would struggle to
interact with this page effectively. This site is a particularly bad
example of interface design, and there is a lot of room for improvement.

Part of the reason it is so hard to know how to interact with this
website is that there are few to no *signifiers*. To simplify an
admittedly complex concept, signifiers (and the related
<a href="https://en.wikipedia.org/wiki/Affordance"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">concept of affordances</a>) are
indicators that offer clues about how to interact with new objects or
situations. For example, a drawer handle’s shape helps indicate to a
user how they might interact with it (grab it with their hand and pull
to open).

Showing interactivity and clickability through signifiers is a
fundamental aspect of user interface design. In this lesson, we will
cover some of the high-level best practices for demonstrating
interaction and interactivity and some implementations using CSS.

### Instructions

Proceed to the next exercise when you are ready to continue.

## Browser Link Styles

Web browsers have always taken account of the importance of using
signifiers for navigation. By default, browsers include a *user agent
stylesheet*, a set of default styles included with the browser (“user
agent”) for use on all web pages. The HTML5 specification defines a set
of <a href="https://www.w3.org/TR/html5/rendering.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">default behavior for rendering
content</a>. These styles are used to ensure that a raw HTML file is
styled to be reasonably readable by any user, and user agent stylesheets
include styling for headings, tables, links, and more basic HTML
elements. Most users do not see these styles too often, because
designers override them with their own custom designs. However, it’s
important to note that maintaining a consistent user experience pattern,
like the default behavior applied by browsers, is important for creating
a consistent experience.

Traditionally, links are differentiated from regular text using blue
text and underlines to draw users’ attention to their clickability. Many
websites and user agent stylesheets still use these link styles.

Browsers also style two other link states: clicked (‘active’), and
previously visited. In most user agent stylesheets, clicked (but not yet
followed) links appear with red text, and previously visited links are
styled with purple text.

### Instructions

**1.**

If you’d like to see the current state of styling, you can open
**initial.css**. The basic layout is okay, but, no links are properly
styled. Throughout this exercise, you’ll make all your changes to
**style.css**. Let’s start by reinstating some of the classic browser
link styles. First, add a CSS rule to make `<a>` tags blue by setting
the `color` property to `blue` in order to distinguish links.

**2.**

Starting to look better already! Now, add an underline to the link text
inside `<a>` tags using the CSS <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/text-decoration"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">text-decoration</code>
property</a>.

### Solution

``` css
a {
  color: blue;
  text-decoration: underline;
}
```

## Link Styling

The most important aspect of styling links is differentiating links from
surrounding text. The default blue-text, underlined link style
accomplishes this differentiation using two CSS properties: `color` and
`text-decoration`. These are both good ways to differentiate a link, and
they are strong, familiar signifiers to most web users. Additionally,
you could use CSS properties for `background-color`, `font-weight`, or
`border`.

Link styles should not be replicated in other page text. Link color
should sufficiently contrast the text colors in the rest of the design.
For example, if links are underlined, other text should not be.

<a href="https://en.wikipedia.org/wiki/Anchor_text"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Anchor text</a>, the text itself of a
link, should be descriptive of the linked resource. Although this is not
strictly a design problem, it is important for usability, accessibility,
and <a href="https://en.wikipedia.org/wiki/Search_engine_optimization"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">SEO</a>. For example, the link at the
beginning of this paragraph would be much more difficult to parse with a
screen reader if it were re-written as follows:

``` html
Text for links, known as anchor text, should be <a href="https://en.wikipedia.org/wiki/Anchor_text" rel="noopener noreferrer" target="_blank">descriptive</a>.
```

### Instructions

**1.**

Let’s make the default link style match our color scheme a bit better.
Leave the underline, but change the link color to `#466995`.

### Solution

``` css
a {
  color: #466995;
  text-decoration: underline;
}
```

## Tooltips and Titles

In addition to providing descriptive anchor text, it is sometimes
helpful to provide additional context to explain links. This context can
be particularly helpful when a link contains or consists of an image,
icon, or another non-text element.

Additional context can be provided as text using the <a
href="https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/title"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">HTML <code
class="code__2rdF32qjRVp7mMVBHuPwDS">title</code> attribute</a>.
Although the `title` attribute can be provided to any HTML element, it
is often extremely useful as additional context or advisory text for
clickable elements.

Most browsers will display the text of a `title` attribute as a
<a href="https://en.wikipedia.org/wiki/Tooltip"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"
title="Wikipedia&#39;s entry to tooltips">tooltip</a>, meaning when a
user hovers their cursor over an element, the text will appear in a
small box near the cursor.

To add tooltips to a clickable element like a link, add it as the
`title` attribute.

``` html
<p>
  <a href="https://www.codecademy.com" title="Codecademy is an online learning platform">Codecademy</a> is the best place to learn to code!
</p>
```

Mouse over the word “Codecademy” below to see this behavior in action!

<a href="https://www.codecademy.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"
title="Codecademy is an online learning platform">Codecademy</a> is the
best place to learn to code!

**NOTE**: The `title` attribute is HTML’s built-in way of creating
tooltips, but is known to <a
href="https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/title#accessibility_concerns"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">cause a variety of accessibility
issues</a>. Developers have come up with a number of ways to create
tooltips that are more accessible, but this generally requires using CSS
and JavaScript, which fall out of the scope of this lesson. When
creating tooltips in the wild, you should research ways to make them
accessible for everyone.

### Instructions

**1.**

Let’s add some clarifying information to links via tooltips and the
`title` attribute. In **index.html**, you can find three links within
the text of the first question that read “running,” “swimming,” and
“biking.” Add a `title` attribute to each of these links to describe
them.

### Solution

``` html
<!DOCTYPE html>
<html>
  <head>
    <title>Please Participate in Our Survey!</title>
    <link href="https://fonts.googleapis.com/css?family=Oswald:300,700|Varela+Round" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="initial.css">
    <link rel="stylesheet" type="text/css" href="style.css">
  </head>
  <body>
    <div class="header">
      <a href="#question-1" class="question-link">Question 1</a>
      <a href="#question-2" class="question-link">Question 2</a>
      <a href="#question-3" class="question-link">Question 3</a>
      <a href="#question-4" class="question-link">Question 4</a>
      <a href="#question-5" class="question-link">Question 5</a>
      <a href="#question-6" class="question-link">Question 6</a>
    </div>
    <div class="welcome">
      <h1>Welcome to our survey!</h1>
      <p>We're looking forward to getting your answers so we can make sure our products and services are the best they can be!</p>
    </div>
    <div class="question-bank">
      <div class="question" id="question-1">
        <h4>Question 1</h4>
        <h2>I like participating in physical activity such as <a href="https://en.wikipedia.org/wiki/Running" title="Wikipedia entry on running.">running</a>, <a href="https://en.wikipedia.org/wiki/Swimming" title="Wikipedia entry on swimming.">swimming</a>, or <a href="https://en.wikipedia.org/wiki/Cycling" title="Wikipedia entry on cycling.">biking</a>.</h2>
        <div class="answer-bank">
          <a class="answer" href="index.html">
            Disagree
          </a>
          <a class="answer" href="index.html">
            Neutral
          </a>
          <a class="answer" href="index.html">
            Agree
          </a>
        </div>
      </div>
      <div class="question" id="question-2">
        <h4>Question 2</h4>
        <h2>I try to keep up to date with the latest fashion in active wear.</h2>
        <div class="answer-bank">
          <a class="answer" href="index.html">
            Disagree
          </a>
          <a class="answer" href="index.html">
            Neutral
          </a>
          <a class="answer" href="index.html">
            Agree
          </a>
        </div>
      </div>
      <div class="question" id="question-3">
        <h4>Question 3</h4>
        <h2>I purchase clothing online regularly.</h2>
        <div class="answer-bank">
          <a class="answer" href="index.html">
              Disagree
          </a>
          <a class="answer" href="index.html">
              Neutral
          </a>
          <a class="answer" href="index.html">
              Agree
          </a>
        </div>
      </div>
      <div class="question" id="question-4">
        <h4>Question 4</h4>
        <h2>I try to buy goods that are designed and/or manufactured in my home country.</h2>
        <div class="answer-bank">
          <a class="answer" href="index.html">
            Disagree
          </a>
          <a class="answer" href="index.html">
            Neutral
          </a>
          <a class="answer" href="index.html">
            Agree
          </a>
        </div>
      </div>
      <div class="question" id="question-5">
        <h4>Question 5</h4>
        <h2>I look to famous athletes when trying to choose what to wear when training.</h2>
        <div class="answer-bank">
          <a class="answer" href="index.html">
            Disagree
          </a>
          <a class="answer" href="index.html">
            Neutral
          </a>
          <a class="answer" href="index.html">
            Agree
          </a>
        </div>
        <div class="question" id="question-6">
          <h4>Question 6</h4>
          <h2>I enjoy taking <a href="https://en.wikipedia.org/wiki/Survey_(human_research)">surveys</a>.</h2>
          <div class="answer-bank">
            <a class="answer" href="index.html">
              Disagree
            </a>
            <a class="answer" href="index.html">
              Neutral
            </a>
            <a class="answer" href="index.html">
              Agree
            </a>
          </div>
      </div>

    </div>
  </div>
  </body>
</html>
```

## Hover States and Cursors

In addition to styling elements themselves, other signifiers and visual
feedback can be utilized during user interaction. The
<a href="https://developer.mozilla.org/en-US/docs/Web/CSS/:hover"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">CSS pseudo-class <code
class="code__2rdF32qjRVp7mMVBHuPwDS">:hover</code></a> can be used to
style elements on mouse hover. For instance, to change the color of link
anchor text from blue to orange when a user hovers over it, the
following CSS could be used:

``` css
a {
  color: blue;
}
 
a:hover {
  color: orange;
}
```

The first rule sets link colors to blue by default, and when a user
mouses over a link, the second rule will override the `color` attribute
of the `<a>` tag and cause the text to turn orange. When the user moves
the cursor away from the link, the text color will revert to blue.

In addition to any text style changes when hovering over a link, the
user’s cursor should change from the default appearance to a pointing
hand. The <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/cursor#Examples"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">CSS <code
class="code__2rdF32qjRVp7mMVBHuPwDS">cursor</code> property</a> is used
to control this behavior. For example, to add this behavior to all `<a>`
tags, the following rule could be used:

``` css
a {
  cursor: pointer;
}
```

Luckily, this behavior is generally included in browser user agent
stylesheets, and it also exists in the
<a href="https://www.w3.org/TR/html5/rendering.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">HTML5 default styles</a>.

Hover state styling should never be used as the sole indication that
something is a link. Users should not be forced to move their mouse over
an entire document to tell what might be clickable. Additionally, hover
states are not accessible in mobile browsers. Mobile devices do not
generally have on-screen cursors, and users must actually touch the
device (and possibly trigger a click event) to interact.

### Instructions

**1.**

Time to add some hover styling to the page links. Add a rule to remove
the underline <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/text-decoration"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener"><code
class="code__2rdF32qjRVp7mMVBHuPwDS">text-decoration</code> property</a>
on mouse hover. Keep the color the same so that the links are still
differentiated from other text.

**2.**

Add a declaration to also change the cursor to `pointer`. Even though
this behavior is seen when the mouse is hovered over, you should add it
to the rule for all `<a>` tags, as the browser will only change cursor
styles on hover by default. Putting the rule on an `a:hover` rule can
cause unwanted behavior in some cases.

### Solution

``` css
a {
  color: #466995;
  text-decoration: underline;
  cursor: pointer;
}

a:hover {
  text-decoration: none;
}
```

## Link States

Links have four main states: normal (not clicked), hover, active
(clicked), and visited. These four states have associated <a
href="https://developer.mozilla.org/en-US/docs/Web/CSS/Pseudo-classes"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">CSS pseudo-classes</a>: `:link`,
`:hover`, `:active`, and `:visited`. These four states can be used to
give a full range of visual feedback to users about the status of their
link interaction.

Each state should still make it clear that the element in question is a
link, meaning it should not make text identical to non-link text or
alter the link’s appearance so much that users could perceive its
behavior differently.

The ordering of link state pseudo-class rules is important to reveal the
proper information. When a user hovers and then clicks a link, those
styles should always override the static styling surrounding a user’s
history with the link (unvisited `:link` and `:visited`). The proper
order of these rules is:

- `:link`
- `:visited`
- `:hover`
- `:active`

This ordering will ensure that the rules <a
href="https://developer.mozilla.org/en-US/docs/Learn/CSS/Introduction_to_CSS/Cascade_and_inheritance"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="blank" rel="noopener">cascade properly</a> and the user can
receive the most applicable visual feedback about the state of the link.

### Instructions

**1.**

Let’s add styling for different link states using pseudo-classes. Start
by creating a rule to set the color to `#466995` for any `:visited`
`<a>` tag.

**2.**

Oops, if you click on any of the question links at the top of the page
and then scroll back up, you’ll notice that the links you’ve already
visited have now blended in with the background! These links are
internal to the page and serve to scroll the window, so we can eliminate
the separate `:visited` style. Create a rule to set the `color` of any
`:visited` `.question-link` class elements to `#ffffff`. Because the
`question-link` class is more specific than `<a>` tags in general, this
rule should override.

**3.**

Now, let’s add some behavior to cover the `:active` states. Create a
rule to set all `<a>` tags’ active `color` to `#DBE9EE`.

**4.**

Now, interact with the links to see the active state change. The
`.question-link` elements at the top of the page may seem to be behaving
oddly. Because of the specificity of the class selector of
`.question-link` versus the tag selector of `a`, question links aren’t
triggering the same active behavior as all `<a>` tags. They are,
however, showing their `:visited` pseudo-class if they’ve already been
clicked. To remedy this, add a rule to style `:active`
`.question-link`s.

### Solution

``` css
a {
  color: #466995;
  text-decoration: underline;
  cursor: pointer;
}

a:hover {
  text-decoration: none;
}
/* Checkpoint 1 */
a:visited {
  color: #466995;
}
/* Checkpoint 2 */
.question-link:visited {
  color: #ffffff;
}
/* Checkpoint 3 */
a:active {
  color: #DBE9EE;
}
/* Checkpoint 4 */
a:active, .question-link:active {
  color: #DBE9EE;
}
```

## Skeuomorphism and Flat Design

Buttons are another fundamental element of user interaction and
navigation. They are called ‘buttons’ because they are often modeled on
the appearance and behavior of real-life buttons. The concept of UI
elements that replicate or imitate real-life counterparts is known as
*skeuomorphism*.

In design, skeuomorphism is helpful for lowering the learning curve for
users. If users can draw a metaphor between a familiar real-life object
and an interface element, they are more likely to know how to use it
without training. In the example of the button, if a web button appears
similar to a real-life button on a physical interface, users can
reliably figure out that the way to interact with the button is to press
it.

*Flat design* is an alternative approach to skeuomorphism which embraces
the fact that computer interfaces do not necessarily need to model
real-life interfaces. As users grow more familiar with digital displays
and interfaces, designers have felt less need to model physical
interactions and instead rely on other signifiers to indicate
interactive elements. To generalize, flat design uses simplicity and
lack of clutter for its UI elements.

### Instructions

**1.**

There are two contrasting buttons in the workspace. Interact with them
to see how their styling changes (they won’t actually execute any
actions, just change appearance). You can examine their styles in
**style.css** if you are interested.

When ready, click the **Run** button and move on to the next exercise to
implement some of these styles yourself.

### Solution

``` html
<!DOCTYPE html>
<html>
  <head>
    <link href="https://fonts.googleapis.com/css?family=Roboto:500" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="style.css">
  </head>
  <body>
    <div class="content">
      <button>
        Standard Button
      </button>
      <button class=" skeuomorphic">
        Skeuomorphic
      </button>
      <button class=" flat">
        Flat
      </button>
    </div>
  </body>
</html>
```

``` css
.content {
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-around;
  height: 400px;
  font-family: 'Roboto', sans-serif;
}

button {
  height: 50px;
  width: 200px;
  cursor: pointer;
  font-weight: 600;
  font-size: 15px;
}

.skeuomorphic {
  border: 2px solid #0c960c;
  border-radius: 5px;
  color: #F8F8F8;
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.2), 0px -2px 2px rgba(255, 255, 255, 0.5) inset, 0 2px 2px rgba(255, 255, 255, 0.8) inset;
  background: linear-gradient(#1D1, #0ebc0e);
  text-shadow: 0 -2px #0c960c;
}

.skeuomorphic:hover {
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1), 0px -2px 2px rgba(255, 255, 255, 0.25) inset, 0 2px 2px rgba(255, 255, 255, 0.4) inset;
  background: #0ebc0e;
  background: linear-gradient(#0ebc0e, #0c960c);
  border-color: #064f06;
}

.skeuomorphic:active {
  margin-top: 2px;
  margin-bottom: -2px;
  box-shadow: 0px 2px 2px rgba(63, 63, 63, 0.1), 0px -2px 2px rgba(255, 255, 255, 0.25) inset, 0 2px 2px rgba(255, 255, 255, 0.4) inset;
  background: #0c960c;
  background: linear-gradient(#0c960c, #0ebc0e);
}

.flat {
  background-color: #1D1;
  color: #fff;
  border: 2px solid #12dd23;
  border-radius: 10px;
}

.flat:hover {
  background-color: #0c960c;
  transition: background-color .15s, font-size .15s;
  font-size: 18px;
}

.flat:active {
  border-color: #fff;
}
```

## Buttons: Skeuomorphic styling

Skeuomorphic button design aims to imitate the appearance and
interactivity of a real-life button, often including a ‘raised’
appearance while the button is unpressed and a ‘pressed’ appearance when
clicked.

Skeuomorphic button design can be implemented using image files, CSS
rules, or a combination of both. CSS styles should be preferred over
image files if possible, since they are faster to load, have smaller
file sizes, and allow for a more consistent scaling and appearance
across different screen sizes and resolutions. Modern CSS3 has support
for many 2-D and 3-D effects and animations and can create many
skeuomorphic button designs on its own.

If using CSS rules, the use of hover and/or active states is important
in order to model interaction with a real button. For example, to
implement a bare minimum 3-D button design, the following CSS ruleset
could be used:

``` css
button {
  padding: 5px;
  border: 1px solid black;
  border-radius: 5px;
  text-decoration: none;
  box-shadow: 0px 5px;
}
 
button:hover {
  cursor: pointer;
}
 
button:active {
  margin-top: 5px;
  color: black;
  box-shadow: 0px 0px;
}
```

A button element can then be created with the following HTML:

``` html
<button>Click me</button>
```

The default state of this `<button>` has some basic ‘buttony’ appearance
with a rounded border (`border` and `border-radius` properties) and a
slightly raised appearance with the use of the `box-shadow`. The
`:hover` cursor is added for visual feedback. When the button is clicked
(`:active`), the `box-shadow` is removed, and the `margin-top` moves the
button down by `5px`, making it appear to be pressed.

The above example is only one very basic implementation of a 3-D button;
there are many additional (and more attractive) ways to create
skeuomorphic buttons.

### Instructions

**1.**

Let’s update the buttons on the page to have a raised appearance.

Start by creating a rule that will apply to all elements with the
`.answer` class. Set a 1-pixel, solid
<a href="https://developer.mozilla.org/en-US/docs/Web/CSS/border"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">border</a> with the color `#466995`.

**2.**

Add a small
<a href="https://developer.mozilla.org/en-US/docs/Web/CSS/border-radius"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">border-radius</a> to all corners of
`10px` in order to round the edges.

**3.**

Add a
<a href="https://developer.mozilla.org/en-US/docs/Web/CSS/box-shadow"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">box-shadow</a> to give the button a
raised appearance. The `box-shadow` should have an `offset-x` of `0px`
and an `offset-y` of `4px`.

**4.**

Now, let’s alter the `:active` state to make the button appear to
depress downwards when clicked.

- Set the `margin-top` to `24px` and the `margin-bottom` to `16px`. This
  will make the button appear to move downward.
- Set the `box-shadow` to `0px 0px`. This will make the box-shadow
  disappear.

Next, change the color styling so that the button offers some additional
visual feedback:

- Set the `background-color` to `#C0D6DF`
- Set the `color` to `#ffffff`

### Solution

``` css
.question-link:visited {
  color: #ffffff;
}

a, .answer {
  cursor: pointer;
  text-decoration: underline;
}

a:link {
  color: #61bff9;
}

a:visited, .answer {
  color: #466995;
}

a:hover, .answer:hover { 
  text-decoration: none;
}

a:active, .answer:active {
  color: #DBE9EE;
}

.answer {
  border: 1px solid #466995;
  border-radius: 10px;
  box-shadow: 0px 4px;
}

.answer:active {
  margin-top: 24px;
  margin-bottom: 16px;
  box-shadow: 0px 0px;
  background-color: #C0D6DF;
  color: #fff;
}
```

## Buttons: Flat Design

Flat design is so-called because of its 2-D appearance. Elements appear
flat on the screen, and designers must rely on other styling and
signifiers to indicate clickability.

Flat design buttons commonly appear as rectangles, rounded rectangles,
or circles. These shapes are used ubiquitously for button elements, so
users often perceive them as buttons and expect them to be clickable.

Since there are fewer obvious signifiers surrounding buttons in a flat
design, they should be visually distinct from other page elements.

In flat designs in particular, button text is very important for
clarity—the possibility of user confusion is reduced by pairing buttons
with specific, descriptive labels. A button with ‘Click here’ leaves
many more open questions than a button that reads ‘Submit form’.

### Instructions

**1.**

We’ve reset the button styling so that we can quickly create a flat
style.

Begin by creating a `.answer` ruleset, and then, add in a rule for a
solid, one-pixel border with the color `#466995`.

**2.**

Now add some `:active` state styles for the `answer` class.

- Set the `background-color` to `#C0D6DF`
- Set the text `color` to `#ffffff`.

### Solution

``` css
.question-link:visited {
  color: #ffffff;
}

a {
  text-decoration: underline;
}

a, .answer {
  cursor: pointer;
}

a:link {
  color: #61bff9;
}

a:visited, .answer {
  color: #466995;
}

a:hover { 
  text-decoration: none;
}

a:active, .answer:active {
  color: #DBE9EE;
}

.answer {
  border: 1px solid #466995;
}

.answer:active {
  background-color: #C0D6DF;
  color: #ffffff;
}
```

## Buttons: Hover States

Just as with links, buttons should make use of hover states and the
`cursor: pointer` declaration. All the caveats about the shortcomings of
hover states on mobile devices apply to buttons, but their use is still
encouraged.

Users expect buttons to be clickable. Since buttons can consist of any
number of total elements (rectangular/circular body, text, image(s)),
all elements should be clickable, should display their clickability, and
should result in the same behavior.

### Instructions

**1.**

Let’s make sure all the buttons have correct hover states. Currently,
our `answer:active` rules change both the background-color and the text
color of the `answer` class elements. Let’s split these up so that there
are two stages of interaction.

- Create a new rule for `answer:hover` that sets the background color to
  `#C0D6DF` and remove the `background-color` declaration from your
  `.answer:active` rule.

Make sure that the `:hover` rule comes before the `:active` rule so that
the styles cascade correctly.

### Solution

``` css
.question-link:visited {
  color: #ffffff;
}

a {
  text-decoration: underline;
}

a, .answer {
  cursor: pointer;
}

a:link {
  color: #61bff9;
}

a:visited, .answer {
  color: #466995;
}

a:hover { 
  text-decoration: none;
}

a:active, .answer:active {
  color: #DBE9EE;
}

.answer {
  border: 1px solid #466995;
}

.answer:hover {
  background-color: #C0D6DF;
}

.answer:active {
  color: #ffffff;
}
```

## Review

Great work! You’ve made this survey site much easier to understand and
interact with! Let’s review what changes you made to improve usability:

1.  Added styles to make links recognizable and distinguishable from
    ordinary text.
2.  Added link styles that depend upon mouse interaction state,
    providing users with visual feedback for cursor hovering and mouse
    clicks.
3.  Added additional context text with the HTML `title` attribute.
4.  Styled buttons to be easily recognizable (in both skeuomorphic and
    flat design styles) using box shapes, border, hover, and active
    states.

Remember that the styles that you implemented here are only one of
countless ways to communicate clickability and provide users with visual
feedback. There is a huge amount of opportunity for variety and
creativity while still following best practices and common user
experience patterns.

### Instructions

Congratulations! Feel free to continue tweaking or improving the style
in the workspace or move on when you’re ready.

### Solution

``` html
<!DOCTYPE html>
<html>
  <head>
    <title>Please Participate in Our Survey!</title>
    <link href="https://fonts.googleapis.com/css?family=Oswald:300,700|Varela+Round" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="initial.css">
    <link rel="stylesheet" type="text/css" href="style.css">
  </head>
  <body>
    <div class="header">
      <a href="#question-1" class="question-link">Question 1</a>
      <a href="#question-2" class="question-link">Question 2</a>
      <a href="#question-3" class="question-link">Question 3</a>
      <a href="#question-4" class="question-link">Question 4</a>
      <a href="#question-5" class="question-link">Question 5</a>
      <a href="#question-6" class="question-link">Question 6</a>
    </div>
    <div class="welcome">
      <h1>Welcome to our survey!</h1>
      <p>We're looking forward to getting your answers so we can make sure our products and services are the best they can be!</p>
    </div>
    <div class="question-bank">
      <div class="question" id="question-1">
        <h4>Question 1</h4>
        <h2>I like participating in physical activity such as <a href="https://en.wikipedia.org/wiki/Running" title="Wikipedia: Running">running</a>, <a href="https://en.wikipedia.org/wiki/Swimming"  title="Wikipedia: Swimming">swimming</a>, or <a href="https://en.wikipedia.org/wiki/Cycling"  title="Wikipedia: Cycling">biking</a>.</h2>
        <div class="answer-bank">
          <button class="answer">
            Disagree
          </button>
          <button class="answer">
            Neutral
          </button>
          <button class="answer">
            Agree
          </button>
        </div>
      </div>
      <div class="question" id="question-2">
        <h4>Question 2</h4>
        <h2>I try to keep up to date with the latest fashion in active wear.</h2>
        <div class="answer-bank">
          <button class="answer">
            Disagree
          </button>
          <button class="answer">
            Neutral
          </button>
          <button class="answer">
            Agree
          </button>
        </div>
      </div>
      <div class="question" id="question-3">
        <h4>Question 3</h4>
        <h2>I purchase clothing online regularly.</h2>
        <div class="answer-bank">
          <button class="answer">
              Disagree
          </button>
          <button class="answer">
              Neutral
          </button>
          <button class="answer">
              Agree
          </button>
        </div>
      </div>
      <div class="question" id="question-4">
        <h4>Question 4</h4>
        <h2>I try to buy goods that are designed and/or manufactured in my home country.</h2>
        <div class="answer-bank">
          <button class="answer">
            Disagree
          </button>
          <button class="answer">
            Neutral
          </button>
          <button class="answer">
            Agree
          </button>
        </div>
      </div>
      <div class="question" id="question-5">
        <h4>Question 5</h4>
        <h2>I look to famous athletes when trying to choose what to wear when training.</h2>
        <div class="answer-bank">
          <button class="answer">
            Disagree
          </button>
          <button class="answer">
            Neutral
          </button>
          <button class="answer">
            Agree
          </button>
        </div>
        <div class="question" id="question-6">
          <h4>Question 6</h4>
          <h2>I enjoy taking <a href="https://en.wikipedia.org/wiki/Survey_(human_research)"  title="Wikipedia: Surveys in human research">surveys</a>.</h2>
          <div class="answer-bank">
            <button class="answer">
              Disagree
            </button>
            <button class="answer">
              Neutral
            </button>
            <button class="answer">
              Agree
            </button>
          </div>
        </div>
      </div>

    </div>
  
  </body>
</html>
```

``` css
.question-link:visited {
  color: #ffffff;
}

a {
  text-decoration: underline;
}

a, .answer {
  cursor: pointer;
}

a:link {
  color: #61bff9;
}

a:visited, .answer {
  color: #466995;
}

a:hover { 
  text-decoration: none;
}

a:active, .answer:active {
  color: #DBE9EE;
}

.answer {
  border: 1px solid #466995;
}

.answer:hover {
  background-color: #C0D6DF;
}

.answer:active {
  color: #ffffff;
}
```

``` css
* {
  box-sizing: border-box;
}

body {
  background-color: #ffffff;
  margin: 0px;
}

.header {
  height: 110px;
  background-color: #466995;
  padding: 20px;
  border-bottom: 1px solid #466995;
  width: 100vw;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  align-items: center;
  justify-content: space-around;
}

.question-link {
  color: #ffffff;
  display: inline-block;
  font-family: 'Oswald',sans-serif;
  font-size: 16px;
  text-align: left;
  font-weight: 300;
  text-transform: uppercase;
  padding: 0 40px;
}

h1 {
  color: #466995;
  font-family: 'Oswald',sans-serif;
  font-size: 32px;
  font-weight: 300;
  text-transform: uppercase;
  margin: 0px;
}

h2 {
  color: #333333;
  font-family: 'Varela Round',sans-serif;
  font-size: 26px;
  font-weight: 100;
}

h4 {
  color: #466995;
  font-family: 'Oswald',sans-serif;
  font-size: 18px;
  font-weight: 300;
  letter-spacing: 2px;
  text-align: center;
  text-transform: uppercase
}

p {
  color: #333333;
  font-family: 'Varela Round',sans-serif;
  font-size: 18px;
}

.welcome {
  background-color: #DBE9EE;
  text-align: center;
  width: 100vw;
  height: 200px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  padding: 40px;
}

.question-bank {
  padding: 0px 60px;
}

.question {
  margin: 60px auto;
  text-align: center;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.answer-bank {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: center;
}

.answer {
  display: flex;
  margin: 20px;
  padding: 15px;
  align-items: center;
  justify-content: center;
  width: 220px;
  color: #466995;
  font-family: 'Oswald',sans-serif;
  font-size: 18px;
  text-align: center;
  font-weight: 700;
  text-transform: uppercase;
}

a {
  cursor: default;
  text-decoration: none;
  color: #61bff9;
}
```

# Affordances, Signifiers, and Clickability

### Clickability

For users on the web, the mouse click is perhaps the most fundamental
human-computer interaction. The web *became* the web partially through
the power of *hypertext*, or text in one document that links to other
documents or resources. To this day, users navigate the web largely
through mouse clicks (and finger taps on mobile and tablet devices).

### Affordances

Objects *afford* the ability of users to interact with them in various
ways. For instance, a bench affords a person the ability to sit on it,
but if it is not affixed to the ground, it also affords the user the
ability to turn it over, throw (if the user is physically able), or
perform any number of other actions. Even though the designer was
probably not designing the bench with throwing in mind as the primary
user behavior, the object still affords this action. Potentials for
interaction are collectively called the *affordances* of an object.

### Signifiers

*Signifiers* are aspects of an object that a designer uses to indicate
potential and intended affordances of an object. For example, a teacup
with no handle affords the ability to lift it and drink out of it. But
designers and potters often add handles to *signify* that users can and
should lift up the object and take a sip. The handle is an example of a
common *user experience pattern*.

### UX Patterns

User experience (UX) patterns establish reusable solutions to common
problems. Handles are ubiquitous—they are used on objects of all shapes,
sizes, and purposes to indicate that users can initiate an action by
grabbing the handle with their hand(s).

### Affordances and Signifiers in Web Design

In computer interactions, the possible affordances of any computer are
usually relatively limited. Consider a web application in a browser—a
user can essentially click, execute key commands or type, and
potentially execute touch events or voice commands. Because of the
relatively limited range of affordances, using proper signifiers is
especially important to direct users properly. Users can click anywhere
on a page, but not every click will have a result. Often, websites and
applications use a combination of visual feedback and common UX patterns
to help solve this issue. In web browsers, one common example of visual
feedback is the cursor image itself: it can demonstrate what behavior
might be expected from a click: a pointing hand indicating that an
interaction will occur, an i-beam shape indicating that text can be
selected, a four-directional arrow showing that an element can be moved,
and <a href="https://developer.mozilla.org/en-US/docs/Web/CSS/cursor"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">many more cursor styles and
interactions</a>.

As stated above, the hovering, pointing hand cursor is a nearly
universal pattern to indicate that an element or text is clickable. But
users do not want to hover a cursor over every element to determine if
it is clickable, and mobile devices do not even have the ability to
hover a cursor! For this reason, designers also use signifiers to
demonstrate elements that afford interaction. On the web, these
signifiers come in the form of CSS styles that differentiate clickable
from non-clickable elements. A ubiquitous example is the styling of
hyperlinks—hyperlinks should be easily differentiated from other text in
a block by different colors, underline styles, or font weights.

There is no universal “right answer” to the issues surrounding
signifiers and affordances on the web, but web designers should always
keep these ideas in mind while creating web designs and interfaces.

### Further Reading

- <a href="https://www.jnd.org/dn.mss/signifiers_not_affordances.html"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Signifiers, Not Affordances</a> by Don
  Norman. This article discusses a bit of the history of thought around
  affordances and signifiers, and their importance in design.
- <a href="http://ui-patterns.com/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">UI Patterns.com</a> has many examples
  of solutions to common design patterns in web design.

Want to learn more? Check out our
<a href="https://www.codecademy.com/catalog/subject/web-design"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">courses on web design</a>.

# The Summit

Time to put some navigation design knowledge to the test! Your goal is
to improve the user experience of this ski lodge landing page.
Currently, none of the clickable elements are very clear or offer good
visual feedback to users.

The exact implementation and styling will be up to you; take the
opportunity to be creative in your designs! Keep in mind that slick
styling is cool, but it is just as important to clearly demonstrate to
users how to interact with the site. We’ll provide some hints along the
way if you’re stuck.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

## Basic link styling

1\.

The site has basic styles laid out in **starting.css**. We’ve provided a
blank **style.css** file for writing your own styles with less clutter,
but feel free to write your CSS in whichever file you want. You
shouldn’t need to edit the **index.html** file, but you can reference it
and make changes if you need to. Before you begin, take a look through
**index.html** to get acquainted with the site structure.

Start by creating some basic link color highlighting and hover state
styling for all `<a>` tags. Open the hint below if you want to see how
we implemented our styles. Throughout, we’ll provide examples of one
possible way to implement the styling task, but there are essentially
unlimited possible ways to solve each task!

2\.

Style the `.nav-link` elements at the top of the page so that they show
clickability. These elements represent the main site navigation. Because
they are internal links, don’t necessarily need to look the same as the
external links in the description below.

## Styling buttons

3\.

Style the main “get on the mountain” button. This button can be selected
with the `.btn` class. It is up to you whether to opt for a more
skeuomorphic or flat design, or whether you want to try to blend between
the two. Start by doing a basic button style, we’ll get to `:hover` and
`:active` styles in the next step.

Our implementation uses a different font from the headings which has
been loaded into the workspace. Feel free to use this declaration if you
want to follow suit: `font-family: 'Raleway', sans-serif;`

4\.

Now, create `:hover` and `:active` styles for the `.btn` class. As you
add styles, continue testing in the browser to make sure you’re creating
clear visual feedback. Remember, you can alter all sorts of CSS
properties such as text `color`, `background-color`, `font-size`,
`border` properties, and much more.

You can also use
<a href="https://developer.mozilla.org/en-US/docs/Web/CSS/transition"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">CSS transitions</a> to ease between style
states—this is optional but can help make more seamless, animated
effects.

## Activity buttons

5\.

Now it’s time to show clickability for the large activity buttons at the
bottom of the page. These buttons already look a *little* like buttons,
as they are square and have basic text, but they don’t show any
clickability.

These buttons can be targeted by class with the `.activity` selector.
Begin by showing their clickability. This is also your chance to alter
or update their basic styling if you’d like to take a more skeuomorphic
design approach.

6\.

Now, create hover and active states. As before, make sure you are
demonstrating good visual feedback to show the different states.

### [Solution](links-buttons-prj)

# Learn Secondary Navigation

## Introduction

Consider the website to the right. We can see that the site is listing
hotels in Singapore. Do you know if this site offers any other
categories of travel products (tours, flights, experiences) or products
in other regions? There is no way to tell from the current view.

#### What is primary vs secondary navigation?

- The primary navigation system typically contains the most important
  links and buttons that need to be displayed on every single page of
  the site.

- Secondary navigation, or breadcrumb navigation, usually consists of a
  clickable list of pages or attributes that led to the current page. It
  can help users understand the extent of the site and also where they
  are currently.

  For example, a shopping site may have a breadcrumb trail leading to a
  pair of shoes like so:

  <img
  src="https://content.codecademy.com/courses/ui-breadcrumbs/UI_breadcrumb.svg"
  class="img__1JGFO2nlisObc3KeOSGPRp" />

#### Why do we call them breadcrumbs?

Think about the story of Hansel and Gretel, where the kids drop
breadcrumbs as they walked in the woods so that they would be able to
find their way back.

#### Benefit of using breadcrumbs

Breadcrumb navigation provides a lot of benefits for users that come to
random pages in a website through direct links or search results. Even
if they enter to a seemingly random page on our site, they already have
an idea of where they are in the website. The breadcrumb also hints at
the extent of the site. For the example above, users could safely assume
the site had shoes for other categories, shoes in different styles, and
shoes in more colors.

Breadcrumbs also provide a way for a user to quickly jump backward in
their navigation of the site. For example, if a user wanted to browse
another style of shoe, they could click directly on the “Shoes” page and
navigate to their desired style. Without the breadcrumbs, they would
likely need to click “back” twice in their browser or start their search
over from the home page.

The decision to use breadcrumbs is a judgment call depending on the
type, depth, and complexity of your site. In this lesson, we’ll discuss
some of the benefits of including breadcrumb navigation, how to
implement it using HTML and CSS, and some of the pitfalls to avoid.

### Instructions

Proceed to the next exercise when you are ready to continue.

### Solution

``` html
<!DOCTYPE html>
  <html>

  <head>

    <title>Hotels In Singapore</title>

    <link href="https://fonts.googleapis.com/css?family=Catamaran:100|Pontano+Sans|Ruda:900" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="./style.css">

  </head>

  <body>
    <div class="jumbotron">
      <h1>Hotels In Singapore</h1>
    </div>
    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/raffles.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Raffles Hotel</h2>
          </li>
          <li>
            <h3>$500/night</h3>
          </li>
          <li>
            <p>Raffles Hotel is a colonial-style luxury hotel in Singapore. It was established by Armenian hoteliers, the Sarkies
              Brothers, in 1887. The hotel was named after British statesman Sir Thomas Stamford Raffles, the founder of
              Singapore. It is the flagship property of Raffles Hotels & Resorts, a subsidiary of Fairmont Raffles Hotels
              International.</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/conradintl.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Conrad Centennial Singapore</h2>
          </li>
          <li>
            <h3>$400/night</h3>
          </li>
          <li>
            <p>Located in the Downtown Core (near Millenia Tower), Marina Centre, Singapore. The hotel has 507 guestrooms including
              25 suites, and 31 floors with two basements. The hotel's carpark is shared with Millenia Walk. Conrad Centennial
              shares the same laundry services with sister hotel, The Ritz-Carlton Millenia Singapore. Both hotels are owned
              by the same owner, Pontiac Land (owned by the Kwee brothers).</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/damenlou.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Damenlou Hotel</h2>
          </li>
          <li>
            <h3>$300/night</h3>
          </li>
          <li>
            <p>Damenlou Hotel is a small hotel located at Ann Siang Road, in Chinatown, within the Central Area of Singapore.Damenlou
              Hotel's origins can be traced to the creation of the dish of fishhead mifen (rice vermicelli), which was invented
              by Tang Kwong Swee in the 1920s. The hotel had a famous restaurant, named Swee Kee.</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/shangrila.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Shangri-La Hotel Singapore</h2>
          </li>
          <li>
            <h3>$200/night</h3>
          </li>
          <li>
            <p>The hotel has 747 guestrooms and suites spread over the Tower Wing, Garden Wing and Valley Wing, 127 serviced
              apartments and 55 luxurious condominium units. The hotel boasts 15 acres of landscaped gardens which are visible
              through the glass walls enclosing the lobby and dining areas, and has been referred to as "Singapore's other
              botanical garden".</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/swissotel.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Swissotel The Stamford</h2>
          </li>
          <li>
            <h3>$100/night</h3>
          </li>
          <li>
            <p>Designed by architect I.M. Pei, at a height of 226 meters it is one of Southeast Asia's tallest hotels. Situated
              at 2 Stamford Road, the hotel sits above City Hall MRT Station. The 5-star hotel has 1,261 rooms and suites,
              16 restaurants and bars, Raffles City Convention Centre, and one of Asia's largest spas.</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

  </body>

  </html>
```

``` css
body{
    padding: 0px;
    margin: 0px;
    background-color: #1E1E24;
    text-align: center;
}
.jumbotron{
    background-image: url(https://images.unsplash.com/photo-1444882158336-bcfbd9298309?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb);
    height: 200px;
    background-position: bottom center;
}
h1{
    color: #fff;
    font-family: 'Ruda', sans-serif;
    font-size: 70px;
    font-weight: 900;
    margin: 0px;
    padding-top: 20px;
    text-align: center;
    text-transform: uppercase;
}
h2{
    color: #fff;
    font-family: 'Catamaran', sans-serif;
    margin: 0px;
    text-align: left;
}
h3{
    color: #d7263d;
    font-family: 'Ruda',sans-serif;
    font-size: 32px;
    margin: 0px;
    position: relative;
    text-align: left;
    text-transform: uppercase;
}
p{
    color: rgba(255,255,255,0.75);
    font-family: 'Pontano Sans',sans-serif;
    margin: 0px;
    text-align: left;
}
.hotel{
    border: 1px solid #ffffff;
    margin: 60px auto;
    padding: 10px 0px 0px 0px;
    width: 90%;
}
.hotel-img{
    display: inline-block;
    margin-top: 20px;
}
.hotel-description{
    display: inline-block;
    width: 70%;
}
.book{
    margin-top: 30px;
    width: 100%;
}
a{
    background-color: #D7263D;
    color: #fff;
    display: block;
    font-family: 'Pontano Sans', sans-serif;
    font-size: 16px;
    padding: 14px;
    text-align: center;
    text-decoration: none;
    text-transform: uppercase;
}
ul{
    padding: 0px;
    margin: 10px 0px;
}
li{
    margin: 0px;
    list-style: none;
}
```

## Simple Example of Breadcrumbs

As you saw in the introduction, it is difficult to understand where you
are on a website that lacks breadcrumb navigation. By adding it to a
site, users can get a quick feel for where they are on a site.

It also hints at the breadth of the site. If a user sees something like
“Fashion \> Shoes” in the breadcrumb structure, they could reasonably
expect the site contains other clothing items or accessories besides
shoes.

Breadcrumbs are usually displayed as a horizontal list of pages and take
up minimal space. Users expect to find them in the header, left-aligned,
and below any primary navigation. Typically they are separated with a
“\>” or a “/“ symbol.

Let’s practice setting CSS rules to conform to the expectations for
breadcrumb navigation. You will start with a plain looking list, but by
the end you will have created a breadcrumb!

### Instructions

**1.**

Breadcrumbs are typically displayed next to each other, on the same
line. First, set the display property to `inline` for the
`.breadcrumb > li` selector in order to put list items on the same line.

**2.**

Another common feature of breadcrumbs is that they are separated by a
symbol, often **\>** or **/**.

Instead of having to manually add this to all of the breadcrumbs in our
breadcrumb trail, we can use a CSS pseudo-element.

This requires some complicated CSS, but it will save us time in the long
run!

`.breadcrumb li+li::before` is the selector that we want! View the hint
if you want more information about how this complicated selector works!

In `styles.css`, find the selector (`.breadcrumb li+li::before`). Set
the `content` property to “\>” to place the greater than sign between
each adjacent breadcrumb.

**3.**

Another feature of breadcrumbs is that they are often not underlined.
Underlines are used to communicate that text within paragraph elements
can be clicked, but we want our users to recognize breadcrumbs as part
of the site navigation, rather than just like any other clickable text.

Remove the link underline by changing the `text-decoration` property of
the `breadcrumb a` selector to have the value `none`.

**4.**

Breadcrumbs should change when you hover over them to highlight their
clickability.

Change the `color` property of the `.breadcrumb a:hover` selector to
have the value `red`.

### Solution

``` html
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="./styles.css">

<ul class="breadcrumb">
  <li>
    <a href="shopping">Shopping</a>
  </li>
  <li>
    <a href="fashion">Fashion</a>
  </li>
  <li>
    <a href="shoes">Shoes</a>
  </li>
  <li>
    <a href="flats">Flats</a>
  </li>
  <li>
    <a href="brown">Brown</a>
  </li>
</ul>
</html>
```

``` css
.breadcrumb > li {
  display: inline;

}

.breadcrumb li+li::before {
    padding: 10px;
  content: ">";

}

.breadcrumb a {
    text-decoration: none;
}

.breadcrumb a:hover {
    color: red;
}
```

## Where do Breadcrumbs Lead

In the previous examples, if you clicked on any of the breadcrumbs, it
wouldn’t take you to a new page. This is because we have set `href="#"`.
With this value, a click on the link will cause the page to scroll to
the top of the current page.

In a full site, these breadcrumbs would link to their respective pages.
This is accomplished by setting the `href` property to the appropriate
page.

Since breadcrumbs are typically relative to the current page, the
breadcrumb list on each page needs to be different. However, as a user
moves around the breadcrumb list, they should expect the breadcrumb
style and list to stay consistent.

For example, if the breadcrumb list was:

`Fashion > Shoes > Flats > Brown`

and a user clicked on “Flats”, the breadcrumb list on that page should
look like:

`Fashion > Shoes > Flats`

It would be confusing for a user if the categories or order of them
changed like:

`Shoes > Shopping > Flats`

### Instructions

**1.**

The code on the right has a simple breadcrumb structure implemented.
However, these breadcrumbs don’t link anywhere.

Within **brownshoes.html**, update the `href` property for the
breadcrumb links so they link to the correct pages. Our other pages are
within the same directory as **brownshoes.html** so you won’t need to
add any additional path:

- shoes -\> **shoes.html**
- flats -\> **flats.html**
- brown -\> leave this as `'#'` since we are already on that page

**2.**

Using the breadcrumbs we can now navigate to the generic flats and shoes
pages.

Now these pages need an appropriate breadcrumb list.

Add breadcrumbs to **flats.html** with links to the appropriate pages.

**3.**

Add breadcrumbs to **shoes.html** with links to the appropriate pages.
Since “shoes” is the starting breadcrumb, this page will only have one
breadcrumb that links to this page (`'#'`).

This single breadcrumb may not look useful, but users expect the site to
stay consistent.

### Solution

``` html
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="./styles.css">
  <h1> Brown Shoes </h1>
  <ul class="breadcrumb">
    <li>
      <a href="shoes.html">Shoes</a>
    </li>
    <li>
      <a href="flats.html">Flats</a>
    </li>
    <li>
      <a href="#">Brown</a>
    </li>
  </ul>
</html>
```

``` html
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="./styles.css">
  <h1>Flats</h1>
  <ul class="breadcrumb">
        <li>
      <a href="shoes.html">Shoes</a>
    </li>
    <li>
      <a href="#">Flats</a>
    </li>
  </ul>
</html>
```

``` html
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="./styles.css">
  <h1>Shoes</h1>
  <ul class="breadcrumb">
        <li>
      <a href="#">Shoes</a>
    </li>
  </ul>
</html>
```

## Where am I?

This provides a basic breadcrumb structure that will display like the
image below: <img
src="https://content.codecademy.com/courses/ui-breadcrumbs/simpleBreadcrumb.png"
class="img__1JGFO2nlisObc3KeOSGPRp" />

In the exercises, you will replicate this behavior for our travel
website.

### Instructions

**1.**

In the code to the right, we’ve included the page “Singapore Hotels”. It
currently has no breadcrumbs - you’ll be adding them!

The first step is to create an HTML unordered list within **index.html**
below the jumbotron div. The list should have the class of
`"breadcrumb"` and the list items should be “Asia”, “Singapore”,
“Tourism”, and “Hotels”.

For now, set the breadcrumb items to link to `"#"`.

**2.**

Add CSS to **breadcrumb.css** to configure the display of the
breadcrumbs. (We’ve already added a bit of CSS to remove some of the
existing styling within **style.css**).

You can style the breadcrumbs how you like, but at a minimum, it should
set the `.breadcrumb li` elements to display inline and you should use
the `.breadcrumb li+li::before` selector to insert a “\>” between the
items.

If you’d like to see our approach, please look in the hint.

### Solution

``` html
<!DOCTYPE html>
  <html>

  <head>

    <title>Hotels In Singapore</title>

    <link href="https://fonts.googleapis.com/css?family=Catamaran:100|Pontano+Sans|Ruda:900" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="./style.css">
    <link rel="stylesheet" type="text/css" href="./breadcrumb.css">

  </head>

  <body>
    <div class="jumbotron">
      <h1>Hotels In Singapore</h1>
    </div>
    <ul class="breadcrumb">
      <li><a href="#">Asia</a></li>
      <li><a href="#">Singapore</a></li>
      <li><a href="#">Tourism</a></li>
      <li><a href="#">Hotels</a></li>
    </ul>
    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/raffles.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Raffles Hotel</h2>
          </li>
          <li>
            <h3>$500/night</h3>
          </li>
          <li>
            <p>Raffles Hotel is a colonial-style luxury hotel in Singapore. It was established by Armenian hoteliers, the Sarkies
              Brothers, in 1887. The hotel was named after British statesman Sir Thomas Stamford Raffles, the founder of
              Singapore. It is the flagship property of Raffles Hotels & Resorts, a subsidiary of Fairmont Raffles Hotels
              International.</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/conradintl.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Conrad Centennial Singapore</h2>
          </li>
          <li>
            <h3>$400/night</h3>
          </li>
          <li>
            <p>Located in the Downtown Core (near Millenia Tower), Marina Centre, Singapore. The hotel has 507 guestrooms including
              25 suites, and 31 floors with two basements. The hotel's carpark is shared with Millenia Walk. Conrad Centennial
              shares the same laundry services with sister hotel, The Ritz-Carlton Millenia Singapore. Both hotels are owned
              by the same owner, Pontiac Land (owned by the Kwee brothers).</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/damenlou.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Damenlou Hotel</h2>
          </li>
          <li>
            <h3>$300/night</h3>
          </li>
          <li>
            <p>Damenlou Hotel is a small hotel located at Ann Siang Road, in Chinatown, within the Central Area of Singapore.Damenlou
              Hotel's origins can be traced to the creation of the dish of fishhead mifen (rice vermicelli), which was invented
              by Tang Kwong Swee in the 1920s. The hotel had a famous restaurant, named Swee Kee.</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/shangrila.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Shangri-La Hotel Singapore</h2>
          </li>
          <li>
            <h3>$200/night</h3>
          </li>
          <li>
            <p>The hotel has 747 guestrooms and suites spread over the Tower Wing, Garden Wing and Valley Wing, 127 serviced
              apartments and 55 luxurious condominium units. The hotel boasts 15 acres of landscaped gardens which are visible
              through the glass walls enclosing the lobby and dining areas, and has been referred to as "Singapore's other
              botanical garden".</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/swissotel.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Swissotel The Stamford</h2>
          </li>
          <li>
            <h3>$100/night</h3>
          </li>
          <li>
            <p>Designed by architect I.M. Pei, at a height of 226 meters it is one of Southeast Asia's tallest hotels. Situated
              at 2 Stamford Road, the hotel sits above City Hall MRT Station. The 5-star hotel has 1,261 rooms and suites,
              16 restaurants and bars, Raffles City Convention Centre, and one of Asia's largest spas.</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

  </body>

  </html>
```

``` css
.breadcrumb li {
  display: inline;
}
.breadcrumb li+li::before {
  color: gray;
  content: ">";
}
```

## Breadcrumb Styles

The previous exercise demonstrated the most basic styling for
breadcrumbs. When designing your own site, you’ll need to make a
judgment call if this approach is sufficient. If you want to invite the
user to interact with the breadcrumbs, you can style them to make them a
more prominent part of the page design.

The example below makes use of a couple of CSS tricks to create an arrow
effect. We’re using the `::before` and `::after` pseudo-elements to add
filled rectangles (with empty content) before and after each list item:

``` css
.breadcrumb li a::before, .breadcrumb li a::after {
  content: "";
  position: absolute;
  border-color: darkcyan;
  border-style: solid;
  border-width: 15px 5px;
}
```

By setting a portion of the border to transparent, it creates the “tail”
of the arrow:

``` css
.breadcrumb li a::before {
  left: -10px;
  border-left-color: transparent;
}
```

This effect works because the element borders are drawn from the center
of the element. We use similar CSS to draw the head of the arrow.

We’ll walk through the individual steps in the exercises so you can see
how each step affects the resulting look.

### Instructions

**1.**

In the pane to the right, **breadcrumb.css** contains the styles from
our previous breadcrumb implementation. Remove the existing “\>” symbols
from between the list items.

**2.**

Replace the `.breadcrumb a` CSS section with:

``` css
.breadcrumb a {
  color: #fff;
  background: darkcyan;
  text-decoration: none;
  position: relative;
  height: 30px;
  line-height: 30px;
  text-align: center;
  margin-right: 15px;
  padding: 0 5px;
}
```

Change the existing `.breadcrumb li` from `display: inline` to
`float: left`:

``` css
.breadcrumb li {
  float: left;
}
```

In the browser, you should see that we have created the “body” of the
arrows.

**3.**

Next, we create the before and after pseudo-elements. Copy the following
CSS and see how it affects the output:

``` css
.breadcrumb a::before,
.breadcrumb a::after {
  content: "";
  position: absolute;
  border-color: darkcyan;
  border-style: solid;
  border-width: 15px 5px;
}
```

You’ll notice that we have added pseudo-elements, but they are on top of
our existing elements.

**4.**

The total width of our pseudo-elements is 10px, since the border has 5px
on the left and 5px on the right. Given this, move the pseudo-elements
to the proper location using the following CSS:

``` css
.breadcrumb a::before {
  left: -10px;
}
.breadcrumb a::after {
  left: 100%;
}
```

**5.**

The last step is to use the CSS trick to turn these into arrows. Style
the after elements as “heads” by setting the border color to transparent
except for the `border-left-color`:

``` css
.breadcrumb a::after {
  left: 100%;
  border-color: transparent;
  border-left-color: darkcyan;
}
```

**6.**

Style the before elements as “tails” by setting the `border-left-color`
to transparent for the `:before` elements.

**7.**

These breadcrumbs are looking how we want, but lets add a hover state
for a little more style:

``` css
.breadcrumb a:hover {
  background-color: blue;
}
.breadcrumb a:hover::before {
  border-color: blue;
  border-left-color: transparent;
}
.breadcrumb a:hover::after {
  border-left-color: blue;
}
```

### Solution

``` css
.breadcrumb {
  text-align: left;
}
.breadcrumb li {
  float: left;
}
.breadcrumb a {
  color: #fff;
  background: darkcyan;
  text-decoration: none;
  position: relative;
  height: 30px;
  line-height: 30px;
  text-align: center;
  margin-right: 15px;
  padding: 0 5px;
}

.breadcrumb a::before,
.breadcrumb a::after {
  content: "";
  position: absolute;
  border-color: darkcyan;
  border-style: solid;
  border-width: 15px 5px;
}

.breadcrumb a::before {
  left: -10px;
  border-left-color: transparent;
}

.breadcrumb a::after {
  left: 100%;
  border-color: transparent;
  border-left-color: darkcyan;
}
.breadcrumb a:hover {
  background-color: blue;
}
.breadcrumb a:hover::before {
  border-color: blue;
  border-left-color: transparent;
}
.breadcrumb a:hover::after {
  border-left-color: blue;
}
```

## Breadcrumb Types

There are three major types of breadcrumbs:

- Location
- Attribute
- Path

You’ve seen the first two types in our examples so far.

**Location** based breadcrumbs are based on where you are with respect
to the navigation structure of the website. In our previous shoe
shopping example, the first three `li` elements are location based. We
are in the “shoes” section of the website, which is contained within the
“fashion” section, which is contained within the “shopping” section.

**Attribute** based breadcrumbs are based on the attributes of the page
or product that you are browsing. In our previous example, the final two
`li` elements are attribute based. We are shopping for shoes that are
“flats” and “brown”. Since the order of these attributes is not
prescriptive, you’ll see some sites display these at the same level in
the UI. If you want to allow users to remove attributes, provide an (x)
button or similar to indicate they can be removed.

Finally, breadcrumbs can be based on a user’s unique **path** through
the site. For example, if they landed on the home page, browsed to the
about page and finally the registration page, their breadcrumb trail may
look like:

`Home > About > Register`

Note that this breadcrumb trail will be different for each user and each
visit. For even mildly complex sites, the number of steps will become
large. To simplify the display, the beginning of the trail is often
abbreviated:

`... > About > Register`

### Instructions

**1.**

In the pane to the right, we have the basic breadcrumbs structure for
the travel website. We’ve added a couple of attribute based breadcrumbs.

Add an `attribute` class to the `li` elements that are attribute based
and a `location` class to the breadcrumbs that are location based.

**2.**

Modify the CSS to only put the “\>” character between location based
breadcrumbs.

**3.**

Color the “attribute” anchor tags gray to indicate that they are
different than the “location” ones.

**4.**

Add a “close” indication using the `:after` pseudoselector:

``` css
.attribute a::after {
  content: " x";
  font-size: 8px;
  vertical-align: super;
}
```

Note that this functionality has not been implemented, we are focused on
the display of the page only.

### Solution

``` html
<!DOCTYPE html>
<html>

  <head>

    <title>Hotels In Singapore</title>

    <link href="https://fonts.googleapis.com/css?family=Catamaran:100|Pontano+Sans|Ruda:900" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="./style.css">
    <link rel="stylesheet" type="text/css" href="./breadcrumb.css">

  </head>

  <body>
    <div class="jumbotron">
      <h1>Hotels In Singapore</h1>
    </div>
    <ul class="breadcrumb">
      <li class="location"><a href="">...</a></li>
      <li class="location"><a href="">Hotels</a></li>
      <li class="attribute"><a href="">Pets</a></li>
      <li class="attribute"><a href="">Queen Bed</a></li>
    </ul>
    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/raffles.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Raffles Hotel</h2>
          </li>
          <li>
            <h3>$500/night</h3>
          </li>
          <li>
            <p>Raffles Hotel is a colonial-style luxury hotel in Singapore. It was established by Armenian hoteliers, the Sarkies
              Brothers, in 1887. The hotel was named after British statesman Sir Thomas Stamford Raffles, the founder of
              Singapore. It is the flagship property of Raffles Hotels & Resorts, a subsidiary of Fairmont Raffles Hotels
              International.</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/conradintl.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Conrad Centennial Singapore</h2>
          </li>
          <li>
            <h3>$400/night</h3>
          </li>
          <li>
            <p>Located in the Downtown Core (near Millenia Tower), Marina Centre, Singapore. The hotel has 507 guestrooms including
              25 suites, and 31 floors with two basements. The hotel's carpark is shared with Millenia Walk. Conrad Centennial
              shares the same laundry services with sister hotel, The Ritz-Carlton Millenia Singapore. Both hotels are owned
              by the same owner, Pontiac Land (owned by the Kwee brothers).</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/damenlou.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Damenlou Hotel</h2>
          </li>
          <li>
            <h3>$300/night</h3>
          </li>
          <li>
            <p>Damenlou Hotel is a small hotel located at Ann Siang Road, in Chinatown, within the Central Area of Singapore.Damenlou
              Hotel's origins can be traced to the creation of the dish of fishhead mifen (rice vermicelli), which was invented
              by Tang Kwong Swee in the 1920s. The hotel had a famous restaurant, named Swee Kee.</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/shangrila.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Shangri-La Hotel Singapore</h2>
          </li>
          <li>
            <h3>$200/night</h3>
          </li>
          <li>
            <p>The hotel has 747 guestrooms and suites spread over the Tower Wing, Garden Wing and Valley Wing, 127 serviced
              apartments and 55 luxurious condominium units. The hotel boasts 15 acres of landscaped gardens which are visible
              through the glass walls enclosing the lobby and dining areas, and has been referred to as "Singapore's other
              botanical garden".</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/swissotel.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Swissotel The Stamford</h2>
          </li>
          <li>
            <h3>$100/night</h3>
          </li>
          <li>
            <p>Designed by architect I.M. Pei, at a height of 226 meters it is one of Southeast Asia's tallest hotels. Situated
              at 2 Stamford Road, the hotel sits above City Hall MRT Station. The 5-star hotel has 1,261 rooms and suites,
              16 restaurants and bars, Raffles City Convention Centre, and one of Asia's largest spas.</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

  </body>

</html>
```

``` css
.breadcrumb {
  text-align: left;
}
.breadcrumb li {
  display: inline;
}
.breadcrumb li.location+li.location::before {
  color: gray;
  content: ">";
}
.breadcrumb a {
  display: inline;
}
.attribute a {
  color: gray;
}
.attribute a::after {
  content: " x";
  font-size: 8px;
  vertical-align: super;
}
```

## Breadcrumb Pitfalls

Sometimes it is not appropriate to use breadcrumbs as a means of
secondary navigation within a website. Users expect breadcrumbs to
behave a certain way and attempts to deviate from this may confuse them.
Most users are expecting breadcrumbs to expose the hierarchy of the site
or display attributes of the page they are on.

Path based breadcrumbs are unique to a user’s journey and are not
commonly implemented. Only use this type of breadcrumbs if there is a
compelling reason for it.

While breadcrumbs are common, it is not the primary way users will
navigate a site. Don’t make the breadcrumbs the only navigation
structure.

In general, the rule of not adding anything extraneous to the design
applies here. If the site only contains a few pages or if the pages in
the breadcrumbs are already available through primary navigation, there
is little reason to include breadcrumbs in the design.

### Instructions

Take a moment to observe how we’ve implemented breadcrumbs in the
mini-browser.

After you’ve taken note of your observations, continue to the next
exercise.

### Solution

``` html
<!DOCTYPE html>
<html>

  <head>

    <title>Hotels In Singapore</title>

    <link href="https://fonts.googleapis.com/css?family=Catamaran:100|Pontano+Sans|Ruda:900" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="./style.css">
    <link rel="stylesheet" type="text/css" href="./breadcrumb.css">

  </head>

  <body>
    <div class="jumbotron">
      <h1>Hotels In Singapore</h1>
    </div>
    <ul class="breadcrumb">
      <li class="location"><a href="">...</a></li>
      <li class="location"><a href="">Hotels</a></li>
      <li class="attribute"><a href="">Pets</a></li>
      <li class="attribute"><a href="">Queen Bed</a></li>
    </ul>
    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/raffles.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Raffles Hotel</h2>
          </li>
          <li>
            <h3>$500/night</h3>
          </li>
          <li>
            <p>Raffles Hotel is a colonial-style luxury hotel in Singapore. It was established by Armenian hoteliers, the Sarkies
              Brothers, in 1887. The hotel was named after British statesman Sir Thomas Stamford Raffles, the founder of
              Singapore. It is the flagship property of Raffles Hotels & Resorts, a subsidiary of Fairmont Raffles Hotels
              International.</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/conradintl.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Conrad Centennial Singapore</h2>
          </li>
          <li>
            <h3>$400/night</h3>
          </li>
          <li>
            <p>Located in the Downtown Core (near Millenia Tower), Marina Centre, Singapore. The hotel has 507 guestrooms including
              25 suites, and 31 floors with two basements. The hotel's carpark is shared with Millenia Walk. Conrad Centennial
              shares the same laundry services with sister hotel, The Ritz-Carlton Millenia Singapore. Both hotels are owned
              by the same owner, Pontiac Land (owned by the Kwee brothers).</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/damenlou.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Damenlou Hotel</h2>
          </li>
          <li>
            <h3>$300/night</h3>
          </li>
          <li>
            <p>Damenlou Hotel is a small hotel located at Ann Siang Road, in Chinatown, within the Central Area of Singapore.Damenlou
              Hotel's origins can be traced to the creation of the dish of fishhead mifen (rice vermicelli), which was invented
              by Tang Kwong Swee in the 1920s. The hotel had a famous restaurant, named Swee Kee.</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/shangrila.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Shangri-La Hotel Singapore</h2>
          </li>
          <li>
            <h3>$200/night</h3>
          </li>
          <li>
            <p>The hotel has 747 guestrooms and suites spread over the Tower Wing, Garden Wing and Valley Wing, 127 serviced
              apartments and 55 luxurious condominium units. The hotel boasts 15 acres of landscaped gardens which are visible
              through the glass walls enclosing the lobby and dining areas, and has been referred to as "Singapore's other
              botanical garden".</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/swissotel.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Swissotel The Stamford</h2>
          </li>
          <li>
            <h3>$100/night</h3>
          </li>
          <li>
            <p>Designed by architect I.M. Pei, at a height of 226 meters it is one of Southeast Asia's tallest hotels. Situated
              at 2 Stamford Road, the hotel sits above City Hall MRT Station. The 5-star hotel has 1,261 rooms and suites,
              16 restaurants and bars, Raffles City Convention Centre, and one of Asia's largest spas.</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

  </body>

</html>
```

``` css
.breadcrumb {
  text-align: left;
}
.breadcrumb li {
  display: inline;
}
.breadcrumb li.location+li.location::before {
  color: white;
  content: ">";
}
.breadcrumb a {
  display: inline;
}
.attribute a {
  color: white;
}
.attribute a::after {
  content: " x";
  font-size: 8px;
  vertical-align: super;
}
```

## Summary

In this lesson we covered the concept of using breadcrumbs as a
secondary navigation method for a site:

- Use breadcrumbs to indicate where a user is and the extent of the site
- Breadcrumbs are implemented using unordered lists in HTML with custom
  CSS styling
- Three types of breadcrumbs exist:
  - **location** - based on hierarchical structure of site
  - **attribute** - based on attributes of current page or item
  - **path** - unique to a user’s journey on the site
- Path-based breadcrumbs can be confusing, only use if needed
- Ensure breadcrumbs will add value before adding to a site

### Instructions

Our completed styled breadcrumbs are shown on the right.

### Solution

``` html
<!DOCTYPE html>
<html>

  <head>

    <title>Hotels In Singapore</title>

    <link href="https://fonts.googleapis.com/css?family=Catamaran:100|Pontano+Sans|Ruda:900" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="./style.css">
    <link rel="stylesheet" type="text/css" href="./breadcrumb.css">

  </head>

  <body>
    <div class="jumbotron">
      <h1>Hotels In Singapore</h1>
    </div>
    <ul class="breadcrumb">
      <li class="location"><a href="">...</a></li>
      <li class="location"><a href="">Hotels</a></li>
      <li class="attribute"><a href="">Pets</a></li>
      <li class="attribute"><a href="">Queen Bed</a></li>
    </ul>
    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/raffles.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Raffles Hotel</h2>
          </li>
          <li>
            <h3>$500/night</h3>
          </li>
          <li>
            <p>Raffles Hotel is a colonial-style luxury hotel in Singapore. It was established by Armenian hoteliers, the Sarkies
              Brothers, in 1887. The hotel was named after British statesman Sir Thomas Stamford Raffles, the founder of
              Singapore. It is the flagship property of Raffles Hotels & Resorts, a subsidiary of Fairmont Raffles Hotels
              International.</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/conradintl.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Conrad Centennial Singapore</h2>
          </li>
          <li>
            <h3>$400/night</h3>
          </li>
          <li>
            <p>Located in the Downtown Core (near Millenia Tower), Marina Centre, Singapore. The hotel has 507 guestrooms including
              25 suites, and 31 floors with two basements. The hotel's carpark is shared with Millenia Walk. Conrad Centennial
              shares the same laundry services with sister hotel, The Ritz-Carlton Millenia Singapore. Both hotels are owned
              by the same owner, Pontiac Land (owned by the Kwee brothers).</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/damenlou.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Damenlou Hotel</h2>
          </li>
          <li>
            <h3>$300/night</h3>
          </li>
          <li>
            <p>Damenlou Hotel is a small hotel located at Ann Siang Road, in Chinatown, within the Central Area of Singapore.Damenlou
              Hotel's origins can be traced to the creation of the dish of fishhead mifen (rice vermicelli), which was invented
              by Tang Kwong Swee in the 1920s. The hotel had a famous restaurant, named Swee Kee.</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/shangrila.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Shangri-La Hotel Singapore</h2>
          </li>
          <li>
            <h3>$200/night</h3>
          </li>
          <li>
            <p>The hotel has 747 guestrooms and suites spread over the Tower Wing, Garden Wing and Valley Wing, 127 serviced
              apartments and 55 luxurious condominium units. The hotel boasts 15 acres of landscaped gardens which are visible
              through the glass walls enclosing the lobby and dining areas, and has been referred to as "Singapore's other
              botanical garden".</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

    <div class="hotel">
      <div class="hotel-img">
        <img src="https://content.codecademy.com/courses/ui-breadcrumbs/swissotel.jpg" width="250px">
      </div>

      <div class="hotel-description">
        <ul>
          <li>
            <h2>Swissotel The Stamford</h2>
          </li>
          <li>
            <h3>$100/night</h3>
          </li>
          <li>
            <p>Designed by architect I.M. Pei, at a height of 226 meters it is one of Southeast Asia's tallest hotels. Situated
              at 2 Stamford Road, the hotel sits above City Hall MRT Station. The 5-star hotel has 1,261 rooms and suites,
              16 restaurants and bars, Raffles City Convention Centre, and one of Asia's largest spas.</p>
          </li>
        </ul>
      </div>
      <div class="book">
        <a href="#">Book Now</a>
      </div>
    </div>

  </body>

</html>
```

``` css
.breadcrumb {
  text-align: left;
}

.breadcrumb a {
  float: left;
  color: #fff;
  background: darkcyan;
  text-decoration: none;
  position: relative;
  height: 30px;
  line-height: 30px;
  text-align: center;
  margin-right: 15px;
  padding: 0 5px;
}
.breadcrumb .attribute a {
  background-color: inherit;
}
.breadcrumb .location a::before,
.breadcrumb .location a::after {
  content: "";
  position: absolute;
  border-color: darkcyan;
  border-style: solid;
  border-width: 15px 5px;
}

.breadcrumb .location a::after {
  left: 100%;
  border-color: transparent;
  border-left-color: darkcyan;
}
.breadcrumb .location a::before {
  left: -10px;
  border-left-color: transparent;
}

.attribute a{
  color: gray;
}

.breadcrumb .location a:hover {
  background-color: blue;
}
.breadcrumb .location a:hover::before {
  border-color: blue;
  border-left-color: transparent;
}
.breadcrumb .location a:hover::after {
  border-left-color: blue;
}
```

# FreshDeals: Blueberries

In the browser to the right, you should see a site for buying groceries.
The currently selected product is “Organic Blueberries”. If you landed
on this page, you may have some questions.

Can I buy anything besides blueberries?

Is everything on this site organic or can I buy conventional produce?

Does this site offer non-produce items?

By adding breadcrumbs to this site, you will be adding a UI element that
hints to some of the questions above. By doing so, users will have a
better feeling for what the site provides and the optional attributes of
the product they are purchasing.

We are focused on the layout of this page and will be implementing the
breadcrumbs via HTML and CSS. The links to the breadcrumbs will not
function.

Check off the project steps as you complete them.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

## Adding basic breadcrumbs

1\.

Add breadcrumbs in **blueberries.html** directly above the site hero
using an unordered list.

Make sure to place the text for each trail item within an anchor tag
(use `"#"` as the href attribute).

Use the following trail for this page:

- Shop
- Groceries
- Blueberries
- Organic

2\.

Assign the class `"breadcrumb"` to the unordered list.

3\.

Next, adjust the CSS in **breadcrumb.css** so the breadcrumb list
elements display inline.

4\.

Add a character of your choosing with CSS to separate the breadcrumbs.
This is typically a **\>** or **/**.

5\.

Existing CSS removed the underline and set the hover state for the
breadcrumbs. If you’d like to adjust it, you may do so.

You now have a basic breadcrumb UI!

## Separating Breadcrumbs by Type

6\.

You may have noticed that the existing breadcrumb trail mixes location
and attribute breadcrumbs. Specifically, “Organic” is an attribute of
these blueberries and we should make it obvious that its an option or
filter.

Add classes to the breadcrumb list elements to designate if they are an
`"attribute"` or a `"location"`.

7\.

Update the CSS so that there is no longer a breadcrumb denoting symbol
between “Blueberries” and “Organic”.

8\.

Style the attribute breadcrumb to make it obvious that it is an
attribute. Try changing the color or setting `::after` content to make a
“close” notation.

This will make it obvious to the user that they can interact with it in
a different way from the location breadcrumbs.

9\.

Feel free to continue styling the breadcrumbs to get a feel for the CSS.
Consult some of your favorite sites to get inspiration.

When you are ready, move on to the end of the project.

### [Solution](ui-breadcrumb-proj)

# What are Wireframes?

[What are wireframes?](https://www.youtube.com/watch?v=CbIMO5EcCD8)

# From Design to Website

[From Design to Website](https://www.youtube.com/watch?v=XTMYbqJaEOY)

# Everything You Need to Know about Wireframes and Prototypes

→ **<a
href="https://theblog.adobe.com/everything-you-need-to-know-about-wireframes-and-prototypes/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Everything You Need to Know about
Wireframes and Prototypes</a>**

In this article, you will learn about wireframes and prototypes: what
they are, why they’re useful and how they’re involved with the user
experience design process. This is helpful if you’d like to understand
the design process before development and how multiple iterations of a
design must be critiqued and revised in order to present the ideal
product to the user. After you finish reading the article, return to
this page and complete the following assessments.

Why should a mobile app design team focus on a wireframe before a
prototype?

- [x] A wireframe is a low-fidelity representation of an app’s layout
  that all team members can reference and critique before focusing on
  visual design and user interactions.
- [ ] A mobile app design team should actually focus on a prototype
  first before committing to a wireframe.
- [ ] Building a wireframe first serves as a high-fidelity
  representation of an app’s layout and can be used to evaluate user
  interaction.
- [ ] Wireframes are complex, time-consuming designs and developers must
  build prototypes as soon as the wireframes are revealed by the
  designers.

👏 Yes! Sketching out a wireframe can save you and your team hours of
work by understanding the basic skeleton of what you’re building.

What is the primary purpose of a prototype?

- [ ] A prototype is a final product release to the public where
  feedback is taken based on reviews and interviews.
- [ ] A prototype can act as a skeleton so that all stakeholders can
  understand how each layout should be constructed.
- [ ] A prototype can serve as documentation for designers and
  developers as a reference point for functional specifications.
- [x] A prototype is meant to serve as a bridge between the user and the
  actual product so that designers can test how users interact with the
  interface.

👏 Correct! Prototypes allow for testing user flow through an app or
website.

Which of the following is NOT a valid method of prototyping?

- [ ] Design software
- [x] Paper prototyping
- [ ] Presentation software
- [ ] Native prototyping

👏 Great work! Wireframes can be created on paper, but creating a
prototype requires digital software.

# Challenge Project: Build a Website Design System

#### Overview

This project is slightly different than others you have encountered thus
far on Codecademy. Instead of a step-by-step tutorial, this project
contains a series of open-ended requirements which describe the project
you’ll be building. There are many possible ways to correctly fulfill
all of these requirements, and you should expect to use the internet,
Codecademy, and other resources when you encounter a problem that you
cannot easily solve.

#### Project Goals

In this project, you’ll be building your own basic design system for a
website. In essence, you’ll be building a website to help you build MORE
websites in the future! On your site, you’ll collect all the colors,
fonts, and some of the repeating styles.

#### Setup Instructions

If you choose to do this project on your computer instead of Codecademy,
you can download what you’ll need by clicking the “Download” button
below. If you need help setting up your computer, read our
<a href="https://www.codecademy.com/articles/visual-studio-code"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">article about setting up a text editor for HTML/CSS
development</a>.

### Instructions

Mark the tasks as complete by checking them off

## Prerequisites

1\.

To complete this project, you should have completed the Codecademy
lessons covering the <a
href="https://www.codecademy.com/courses/learn-css/lessons/box-model-intro"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">CSS box model</a>, <a
href="https://www.codecademy.com/courses/learn-css/lessons/css-display-positioning"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">display and positioning</a>,
<a href="https://www.codecademy.com/courses/learn-css/lessons/color"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">colors</a>, and <a
href="https://www.codecademy.com/courses/learn-css/lessons/css-typography"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">typography</a>. You can use more advanced CSS layout
concepts like flexbox, CSS grid, or responsive design, but they won’t be
required.

## Project Requirements

2\.

In this project, you’ll build a style guide/design system for your
website. Developers and designers use design systems in order to
organize the look and feel of a website or web application. Design
systems help to document the visual vocabulary and reusable components
of a large website.

As your websites grow larger and more complex, having a consistent set
of styles will help them stay cohesive and enjoyable for users! It also
helps as you start working with other developers, as you can have a
consistent reference for how your website should be built.

Your style guide/design system will include at least a section on
colors, fonts, and specific text styles, but it can be extended to as
many other areas as you’d like. You can take a look at our <a
href="https://content.codecademy.com/PRO/independent-practice-projects/website-design-system/example/index.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">basic example site</a> for a taste of
what you’ll be building (yours will be customized).

3\.

Your style guide should include a labeled section outlining the colors
to be used.

Each color should have:

- A name (you can come up with this name yourself)
- A box displaying the color itself.
- The CSS value used to create the color (in hex, `rgb()`, `rgba()`,
  `hsl()`, or `hsla()`).
- An optional description of how you intend to use the colors.

4\.

Your style should include a labeled section of the fonts to be used (we
recommend importing fonts from <a href="https://fonts.google.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Google Fonts</a>).

For each font, the goal is to to demonstrate the various styles that you
intend to use (font weight, style, size, and text decorations). To do
this, you should include the following for every font:

- The font name
- A series of styles that you intend to use (for example, styles could
  include: plain, bold and italic, underlined).
- For each style, include a sentence or series of words to demonstrate
  the text style (our example site uses <a
  href="https://en.wikipedia.org/wiki/The_quick_brown_fox_jumps_over_the_lazy_dog"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">the quick brown fox…</a>).

Make sure to display each of the sections in the proper font, size, and
style.

5\.

In addition to the list of possible fonts, your style guide should
include a section for specific text styles for page elements. For
example, you could set main heading (`<h1>`) guidelines about text size,
fonts, font styles, font weight, and more.

Include at least 3 element styles, and ideally as many as you’d like to
use in future sites.

For each page element, include:

- A page element name (for example, “Subheading”).
- All style rules (for example, font-weight: 700).

6\.

Add any additional styles that you’d like to include to make your style
guide/design system look great. This could include positioning, layout,
additional colors, box model properties, and more.

If you’d like some inspiration, you can look to the following samples:

- Salesforce’s
  <a href="https://lightningdesignsystem.com/utilities/text/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Lightning Design System</a>
- Google’s <a href="https://material.io/design/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Material Design</a>
- Twitter’s <a href="https://getbootstrap.com/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Bootstrap</a>.

## Solution and Extensions

7\.

Great work! Visit <a
href="https://discuss.codecademy.com/t/build-a-website-style-guide-challenge-project-html-css/462395"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">our forums</a> to compare your project to
our sample solution code. You can also learn how to host your own
solution on GitHub so you can share it with other learners! Your
solution might look different from ours, and that’s okay! There are
multiple ways to solve these projects, and you’ll learn more by seeing
others’ code.

If you’d like to extend your site, consider:

- Adding additional components (you could document the various
  <a href="https://getbootstrap.com/docs/4.0/components/buttons/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">buttons</a> that you’d like to use).
- Learning how and then implementing a
  <a href="https://www.codecademy.com/learn/learn-responsive-design"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank">responsive design</a> so that your site looks great on
  all screen sizes.
- Adding navigation and splitting up your site so that each section has
  its own HTML page.

### [Solution](independent-project-web-design-system)

# Review: Improved Styling with CSS

Congratulations! The goal of this unit was to introduce more
intermediate topics in CSS styles. You also learned more about
navigation design.

Having completed this unit, you are now able to:

- Apply more custom colors and fonts
- Style navigation elements like links and buttons
- Create secondary (breadcrumb) navigation

If you are interested in learning more about these topics, here are some
additional resources:

- Book: <a
  href="https://bookshop.org/books/html-and-css-design-and-build-websites/9781118008188"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">HTML & CSS</a>, Jon Duckett, Chapters
  11 (pp. 246-262) and 12 (pp. 264-298)

Learning is social. Whatever you’re working on, be sure to connect with
the Codecademy community in the
<a href="https://discuss.codecademy.com/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">forums</a>. Remember to check in with the
community regularly, including for things like asking for code reviews
on your project work and providing code reviews to others in the
<a href="https://discuss.codecademy.com/c/project/1833"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">projects category</a>, which can help to
reinforce what you’ve learned.
