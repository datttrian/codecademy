# New York City Blog

After researching New York City, you decide to create a blog for your
viewers who want to know more about the city. It’s time to create a blog
to show off how amazing the Big Apple is. You got this!

Don’t forget to save your code after each step. By pressing save to run
your code you will see the changes you’ve made in the browser.

**Note:** While you are developing the webpage, you will notice that the
elements are automatically assigned colors, borders, and positioned
properly. This is because of the CSS file. Don’t worry about CSS right
now, it’s only there so that the webpage looks nice.

### Instructions

Mark the tasks as complete by checking them off

## Navigation Bar

1\.

A common usage of a navigation bar is to create shortcuts for a webpage.
This will allow the user to go directly to the information they want to
access through the navigation links.

Create a `<nav>` element underneath the opening `<body>` tag.

2\.

Within the `<nav>` element, create a `<ul>` element to create an
unordered list.

The unordered list should contain the following three items:

- Blog
- Media
- About

Use an `<li>` element with `<a href=""></a>` nested within the `<li>`
element to link the content to the nav bar. You may notice that the
navbar doesn’t work right now but don’t worry, once the content is
added, the navbar will be fully functional!

**Note:** Save your work to see your progress.

## Blog Content

3\.

You need to title your blog, so people know what you’re writing about.
Create a `<header>` element under the closing `</nav>` tag.

Within the `<header>` element, create an `<h1>` element which should
contain the following:

``` html
New York City
```

4\.

Create a `<main>` element below the closing `</header>` tag.

Within the `<main>` element, create a `<section>` element with an id of
“blog”.

This `<section>` element will hold the main content of your webpage. You
are giving this element an id so that you can target it with the nav
bar.

5\.

Create an `<article>` element within the `<section>` element.

Then, create a `<p>` element within `<article>` that has the following:

``` html
New York City is made up of five boroughs which include Queens, Manhattan, Brooklyn, the Bronx, and Staten Island. The city is the home of approximately 8 million people. In 1876, France gifted the City of New York what is known as the Statue of Liberty, which is currently located on Liberty Island and commonly visited by tourists. However, it took 10 years to assemble and therefore wasn’t unveiled until 1886. Another tourist destination is Times Square. Times Square is commonly known for the big buildings, Broadway shows, and bright neon signs. This famous location was named after The New York Times after the Times moved to that location. Prior to that, it was named Longacre Square. New York City is also known for its bridges that connect the boroughs and allow ease of transportation.
```

**Note:** Save your work to see your progress.

6\.

Now that our blog has some content, the next step is adding media to
enhance our blog.

You can do this by using the `<figure>` element. Under the closing
`</section>` tag create a `<figure>` element.

7\.

Create an `<img>` tag within `<figure>` and use the following link as
the `src`:

<a
href="https://content.codecademy.com/courses/Semantic%20HTML/statue-of-liberty.jpeg"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank"
rel="noopener">https://content.codecademy.com/courses/Semantic%20HTML/statue-of-liberty.jpeg</a>

8\.

Let’s describe the image for those who don’t know what statue this is!

Using `<figcaption>` add this description of the image:

``` html
This is the Statue of Liberty, a popular tourist attraction located on Liberty Island.
```

**Note:** Save your work to see your progress.

## Aside Content

9\.

For our blog post, you need to add additional content to enhance the
post, you can do this by using the `<aside>` element.

Under the closing `</figure>` tag create an `<aside>` element.

Within `<aside>`, create a `<p>` element containing the following
information:

``` html
New York City is very popular for the variety of great food it has. Some of the top food items in NYC include:
```

10\.

New York is known for its amazing food. Our blog should list some of the
top food options in NYC. You can do this by creating an ordered list!

Create an ordered list by using the `<ol>` element within the `<aside>`
element. In an ordered list the first item is ranked one, the second
item is ranked two and so on.

The ordered list should contain the following seven items in this order:

1.  Pizza
2.  Bagels
3.  Burgers and Sandwiches
4.  Ramen
5.  Tacos
6.  Pasta
7.  Desserts

**Note:** Save your work to see your progress.

## Media

11\.

Right now our blog post consists of only one image. Adding more media
can help give a better visual representation of New York. Let’s create a
section for the media content.

Create a `<section>` element with an id of “media” under the closing
`</aside>` tag.

Within the new `<section>` element, create an `<article>` element.

Then, create an `<h2>` element within `<article>` that says:

``` html
The Scenery in NYC
```

12\.

You are going to add a little description to explain the media. Add a
`<p>` element directly underneath the closing `</h2>` tag but within the
`<article>` element with the following paragraph:

``` html
While the view in the city is beautiful, the sounds are not as lovely. Below you'll see an example of the view and the sounds you'll deal with in NYC on a daily basis.
```

**Note:** Save your work to see your progress.

13\.

New York City has a beautiful skyline, so let’s show that with a video.

Under the closing `</article>` tag, create a `<video>` element with the
attribute `controls`. Use the following URL as the `src`:
`"https://content.codecademy.com/courses/Semantic%20HTML/nyc-skyline-timelapse.mp4"`.

14\.

During the night time, the New York City skyline can light up the whole
sky! This time you are going to use `<embed>` to display an image of the
skyline.

Create an `<embed>` element under the closing `</video>` tag. Use the
following URL as the `src`:
`"https://content.codecademy.com/courses/Semantic%20HTML/nyc-skyline.jpeg"`.

15\.

New York City is known as “the city that never sleeps.” At any point in
the day, you can hear the traffic as you make your way through the city.
Let’s add an audio clip to show how loud NYC can be.

Create an `<audio>` tag with the attribute `controls` directly below the
`<embed>` element. (Don’t forget the closing tag.)

Inside the `<audio>` tag, insert an audio file with the following URL as
the `src`:
`"https://content.codecademy.com/courses/Semantic%20HTML/nyc-sounds.mov"`.

**Note:** Save your work to see your progress.

## Footer

16\.

At the bottom of a page, you can add a footer to credit you for the
creation of this blog!

Create a `<footer>` element with an id of “about” under the closing
`</main>` tag.

Inside, add the following content:

- A `<p>` tag with “Posted by:” followed by your name.

- A `<p>` tag that provides one type of contact information for people
  to reach you at. For example:

  ``` html
  Contact information: Blogger@NYC.com
  ```

## The Endgame!

17\.

Congratulations! You successfully created a webpage using only semantic
elements. Now that you’ve learned about the importance of Semantic HTML
along with its benefits, it’s time to incorporate this knowledge into
your future projects.

Think about ways you could improve this project or create your very own
project using semantic elements. Need some suggestions? Check the hint
for some ideas to get you started!

### [Solution](https://datttrian.github.io/codecademy/fundamentals-of-html/semantic-html-nyc-blog/index.html)