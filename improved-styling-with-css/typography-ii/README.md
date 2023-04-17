# Typography

Aoife Conleavy is a novelist who has been writing about her travels for
nearly two decades. Before the launch of her new novel *Tide Blade*,
which features the stories of real-life characters in Morocco, the
author wants to spruce up her professional website. You’ll modify the
typography on her site, changing the size, style, and font families, to
make the page easier to read.

Using your understanding of typography, help Aoife Conleavy improve the
readability of her site for her readers.



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

## [Solution](https://datttrian.github.io/codecademy/improved-styling-with-css/typography-ii/index.html)
