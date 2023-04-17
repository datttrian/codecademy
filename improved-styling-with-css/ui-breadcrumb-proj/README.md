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

## [Solution](https://datttrian.github.io/codecademy/improved-styling-with-css/ui-breadcrumb-proj/index.html)

