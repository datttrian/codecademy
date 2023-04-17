# Wine Festival Schedule

The Aguillar Family is hosting their annual wine festival and they have
asked you to build a web page for the event schedule! Use your knowledge
of HTML to display a table to the attendees.

You can preview the final version <a
href="https://content.codecademy.com/courses/learn-html-tables/index.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">at this link</a>.

Let’s begin!

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.



Mark the tasks as complete by checking them off

1\.

In **index.html**, inside of the `<div>` element that has the attribute
`class` with a value of `"container"`, create a new `<table>` element.

2\.

Inside of the `<table>` element, add a section for table headings using
`<thead>`.

Then, add two rows inside of it using the *table row* element.

3\.

Inside the first table row element, from task 2, add a *table heading*
element.

Inside of that, include an `<h1>` with the following text:
`Wine Festival Schedule`.

4\.

Inside the second table row element, from task 2, add two `<th>`s:

- In the first, add an `<h2>` that says `Time`.

- In the second, add an `<h2>` that says `Event`.

5\.

You may notice that “Wine Festival Schedule” does not stretch across the
entire table. Let’s fix that!

In the opening `<th>` tag of this element, add `colspan="2"`.

6\.

Below the closing `</thead>` tag, section off the table using the *table
body* element.

7\.

Inside of the table body you created in the previous task, create 5 rows
using the *table row* element.

8\.

Inside each row, create two cells using the *table data* element.

The first table data in each row should have the attribute `class` with
the value `"left"`.

9\.

Inside each of the 5 `<td class="left">` elements, add `<h3>` elements
that include the times of the events:

- `12:00 PM`
- `01:00 PM`
- `02:00 PM`
- `03:00 PM`
- `04:00 PM`

Feel free to look back at the <a
href="https://content.codecademy.com/courses/learn-html-tables/index.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">live site</a> to compare.

10\.

Inside each of the `<td>` elements that does not have a `class`
attribute with a value of `"left"`, add `<h3>` elements that include the
name of events:

- `Welcome Reception`
- `Storytelling & Tasting`
- `Wine Luncheon`
- `Aguillar Family Wines`
- `Wine & Cheese Tasting`

You have created the events table. Cheers!

## [Solution](https://datttrian.github.io/codecademy/fundamentals-of-html/html-wine-festival-schedule/index.html)