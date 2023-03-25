# Tsunami Coffee

Use your knowledge of relative units and responsive web design to help
Tsunami Coffee make their website come to life.

Throughout this project, you’ll edit the existing Tsunami Coffee website
code so that the website appears correctly on varying screen sizes. In
addition, you’ll contribute styles that will make this website more
visually appealing.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

1\.

The website needs a background image in the main section at the top of
the page.

Navigate to **style.css** and add the following image to the `.main`
class as a cover-sized background image:

    https://content.codecademy.com/courses/freelance-1/unit-5/tsunami-coffee/images/bg-photo.png

2\.

The navigation items at the top of the page need more padding.

Add a padding of `0.75rem` to the top and bottom, and `1.25rem` to the
left and right of the navigation’’s list items.

3\.

The coffee beans image under the main banner in the supporting section
is too large.

Inside of the `.supporting img` selector, set the height and width
dimensions to 10 percent.

4\.

The coffee beans image looks better now, but the text to the right of it
needs to be spaced out further from the image.

Set the right margin of the image to 5 percent.

5\.

The font size of the rating should be increased within the rating
section.

Use `rem` units to make the `h1` text equivalent to 40 pixels. This can
be calculated based on the `html` element’s font size.

6\.

The map image near the bottom of the page should span the page’s width,
instead of overflowing.

Add a width of 100 percent to the `.location img` CSS rule.

7\.

Now the page looks better on large screens. When the page is resized to
a smaller width, the page needs to resize and reorganize its elements
using media queries.

Write a media query that targets the screen when its width is under 960
pixels and smaller.

8\.

When the page is resized to a width less than 960 pixels, note that the
navigation bar has empty space above it. Within the media query you
wrote in the last step, set the top padding of the `.main` class to `0`.

9\.

Resize the browser from large to small. Notice that the coffee beans
image in the supporting section causes the supporting paragraph to
become too thin.

Write a media query for screens under 700 pixels.

10\.

Inside the media query, make the image disappear by ensuring that the
`.supporting img` selector displays nothing.

You can make an element disappear using the following property and
value:

``` css
display: none;
```

11\.

Continue to resize the width of the browser until the website is the
size of a small screen.

Write a media query that targets a screen width less than 470 pixels.

12\.

Inside the media query for small screens, you’’ll need to apply a
variety of styles.

First, make the rating’s `h1` font size the equivalent of 32 pixels
using `rem` units.

13\.

The images in the gallery are too small for small screens.

Select the images in the gallery and style them so that they fill the
width of the screen.

Then set their margin to `0` so they span across the entire page.

14\.

The footer’s text is not formatted correctly on small screen sizes.

Hide the `nav` inside the `footer` to appear better on small screens.

Then, resize the screen from small to large and watch your website
change its appearance to best fit the screen size. You just built a
responsive website!

### [Solution](https://datttrian.github.io/codecademy/making-a-website-responsive/tsunami-coffee/index.html)
