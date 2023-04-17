# Introduction: Making a Website Accessible

In this unit, you will learn about the best accessibility (a11y)
practices.

The goal of this unit is to refactor your website to follow the best
accessibility (a11y) practices.

After this unit, you will be able to:

- Understand what accessibility (a11y) means
- Understand the necessity for a11y on the web
- Add features for improved screen reader usage

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

# What is Digital Accessibility?

In this article, you’ll learn about digital accessibility and why it is
important to incorporate aspects of digital accessibility into websites.

## What is Accessibility?

Accessibility refers to designing devices, products, and environments
such that individuals with disabilities or sensory impairments can
successfully use the device or product.

In 1990, the United States Congress passed the Americans with
Disabilities Act, commonly referred to as the ADA. The ADA mandates that
public and private spaces be made accessible to individuals with
disabilities that include (but are not limited to):

- Sensory impairments
- Cognitive impairments
- Physical limitations

For example, the ADA requires on-ramps as an alternative way of
accessing a staircase for individuals who may use a wheelchair. Another
example is that stop lights use hues of green, yellow, or red that are
readily discernible to individuals with visual impairments (like color
blindness).

Although the ADA has forced public and private spaces to incorporate
accessibility best practices, one frontier that has been mostly
untouched has been digital accessibility, or, accessibility in digital
media, like websites and mobile apps. In this article, we’ll explore
digital accessibility and why it is essential on the Internet.

## What is Digital Accessibility?

Although the concept of digital accessibility refers specifically to
digital media, it’s not much different from the general idea of
accessibility.

The requirements for accessibility in digital media are, of course, very
different, however.

Some examples include (but are not limited to):

- Screen readers that parse a website for a user with visual impairments
- Videos on websites are closed-captioned for individuals with hearing
  impairments
- Images include “alt text” for individuals with visual impairments
- Websites must be navigable by keyboard for users who may not be able
  to operate a mouse (i.e., navigating using the “Tab” on a keyboard)

The examples above demonstrate only a subset of how websites or mobile
apps incorporate digital accessibility. For the full list of digital
accessibility guidelines, there is a global standard known as the **Web
Content Accessibility Guidelines 2.1** (WCAG). Per WCAG’s abstract, WCAG
“covers a wide range of recommendations for making Web content more
accessible.”

To learn more, visit WCAG at the following link:

- <a href="https://www.w3.org/TR/WCAG21/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Web Content Accessibility Guidelines
  2.1</a>

## Why is Digital Accessibility Important?

**Evolving Technology**

The ADA was passed during a time where the Internet was still growing
and evolving (1990). Since that time, the popularity of the Internet
(and general accessibility to it) has exploded. As new technologies are
invented, the methods they use to incorporate elements of accessibility
will have to be revisited, perhaps even by challenging the current ADA.

**Legal Ramifications**

The Internet’s explosion in popularity has emphasized the accessibility
of websites and other digital media. As such, it also has pushed the ADA
to new limits. Should the statutes in the ADA cover digital media as
well? The U.S. Department of Justice certainly thinks so:

> \[T\]he Department has long considered websites to be covered by Title
> III despite the fact that there are no specific technical requirements
> for websites currently in the regulation or ADA Standards.

In the past, accessibility lawsuits focused on lack of on-ramps, lack of
braille in signs, and the like. Today, accessibility lawsuits also focus
on the lack of accessibility in digital media, which emphasizes the user
demand behind incorporating accessibility best practices.

**Capturing Total Markets**

Upwards of <a
href="https://techcrunch.com/2016/12/19/79-percent-of-americans-now-shop-online-but-its-cost-more-than-convenience-that-sways-them/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">80% of the United States population shops
online</a>, which, naturally, was unheard of before the widespread
popularity of the Internet.

For individuals with physical impairments, what might’ve been an
inconvenient shopping experience in the past may now be much more
convenient online. For individuals with visual or auditory impairments,
however, an online shopping experience can be inconvenient if there is a
lack of digital accessibility. This lack of accessibility can prevent
them from shopping online. For business owners, this also represents a
failure to capture the total market, demonstrating how digital
accessibility, overall, is best for business.

**New Jobs**

The recognition that accessible web design is good for business is also
reflected in the job market. Simply searching “web accessibility” on job
search websites like <a href="https://www.linkedin.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">LinkedIn</a> or
<a href="https://www.indeed.com"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Indeed</a> demonstrates the immense
amount of job postings for developers, designers, and UI designers
related to web accessibility.

**Universal Design Benefits All**

Earlier, you read about one example that showcases an ADA mandate:
on-ramps should accompany staircases to accommodate individuals with
physical impairments. The reality is that this mandate doesn’t just
benefit those with physical impairments; it also benefits individuals
with baby strollers, bicycles, and more.

The same is true for digital accessibility. For example, having `alt`
tags that explain the content of images is useful to all users whenever
images don’t load due to connectivity problems. Writing more semantic
HTML tags and image captions also can improve your website’s standing in
search engines, as they provide the search engine more information about
the content that your site delivers. In short, incorporating
accessibility (digital or otherwise) contributes to a universal design
that ultimately benefits all, which can improve the user experience for
everyone.

## Conclusion

The general concept of accessibility, which previously applied mostly to
physical, public, and private spaces, now applies to the digital world,
thanks to the widespread popularity of a new technology: the Internet.

New technologies, litigation, business strategies, and more continue to
push the definition of accessibility. Today, this definition has
expanded to include digital media, like websites and mobile apps. The
Internet continues to provide digital solutions to a wider audience,
making it imperative for web developers to incorporate elements of
digital accessibility.

# Accessible Design

## Introduction

In this lesson, you are going to learn about using contrast to create
appealing, intuitive, and accessible designs.

Contrast is one of the main tools designers have to draw people’s
attention to parts of the site that they want to highlight, and make
sure that their site is accessible to people with vision impairments.

There are a wide variety of users with vision impairments that use their
sight to navigate the web. This includes people with low vision and
color blindness.

Designing with visual accessibility in-mind will drive you towards
creating sites that are easier for everyone to read and navigate,
whether or not they have a vision impairment.

For more background about what digital accessibility is and why it
matters, check out <a
href="https://www.codecademy.com/articles/what-is-digital-accessibility"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">this article on Digital Accessibility</a>.

Press next when you are ready to get started!

## Contrast

Contrast refers to the opposition of different properties (color, size,
shape, font, etc) to make one object visually distinct from another.

Careful use of contrast will aid all users in skimming or navigating our
pages, by directing our user’s attention, and by visually communicating
what is most important and what is not as important.

Making sure that enough contrast exists between different elements can
help us ensure that our site is accessible to users with vision
impairments.

In this lesson, we will cover creating accessibility-enhancing contrast
through:

- Headings
- Font choices
- Color

You will apply these principles to fix the “Creamy Chocolate Cupcakes”
website so that it has a more accessible and more attractive design,
with a more judicious use of contrast.

Press next when you are ready to continue.



Move on to the next exercise when you are ready!

## Introduction to Headings

Text is used differently on the web than it is in a book. Users are
often trying to navigate websites as quickly as possible.

Breaking large chunks of text into different sections that have their
own headings and subheadings is essential to helping them find the
content that they are looking for.

In HTML, there are six heading elements, `<h1>` - `<h6>`. The heading
elements decrease in importance and size as the heading number
increases. This means that an `<h1>` carries a higher rank than an
`<h6>`.

Heading elements in HTML accomplish several things:

- they create structure, dividing your page into groups of increasingly
  specific content
- they create visual contrast, with lower-numbered headers like `h1`
  displaying in a larger and more striking format
- they provide navigation and contextual information to web browsers,
  plugins, and assistive technologies like screen readers.

As an added benefit, having a keyword in an `h1` tag will typically
impact search results more than having the same keyword in a `p` tag,
because it is assumed that words used in your main heading are very
important to the topic of your entire website.



Press next when you are ready to continue!



``` html
<!DOCTYPE html>
    <html>
        <head>
            <title>Creamy Chocolate Cupcakes</title>
            <link href="https://fonts.googleapis.com/css?family=Alice|Lobster|Poppins:300,400,500,600,700" rel="stylesheet">
            <link rel="stylesheet" type="text/css" href="styles.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        </head>
    <body>
        <div class="overlay">
            <div class="header">
                <h1>Creamy Chocolate Cupcakes</h1>
            </div>
        </div>
        <div class="wrap">
            <div class="search">
                <input type="text" class="searchTerm" placeholder="Search for more recipes!">
                <button type="submit" class="searchButton">
                    <i class="fa fa-search"></i> Search
                </button>
            </div>
        </div>
        <div id="recipe">
            <div class="info">
                <ul class="ingredients">
                    <h2>Ingredients</h2>
                    <li>3/4 cup unsweetened cocoa powder</li>
                    <li>3/4 cup all-purpose flour</li>
                    <li>1/2 teaspoon baking powder</li>
                    <li>1/4 teaspoon salt</li>
                    <li>3/4 cup (1.5 sticks) unsalted butter</li>
                    <li>1 cup sugar</li>
                    <li>3 large eggs</li>
                    <li>1 teaspoon vanilla extract</li>
                    <li>1/2 cup sour cream</li>
                    <li>Easy White Icing</li>
                    <li>Sprinkles (optional)</li>
                </ul>
                <ul class="nutrition">
                    <h2>Nutrition</h2>
                    <li>
                        <h3>Calories</h3>
                        <p>650</p>
                    </li>
                    <li>
                        <h3>Fat</h3>
                        <p>10g</p>
                    </li>
                    <li>
                        <h3>Protein</h3>
                        <p>2g</p>
                    </li>
                </ul>
            </div>
            <div class="steps">
                <div class = "tips">
                    <p>You can bake the cupcakes the night before and decorate these the next day. I would frost them the same day you plan on serving them for best results. The frosting will keep in the refrigerator in a piping bag for several days. If you refrigerate it, let it get to room temperature before piping.</p>  
                </div>
                <ul>
                    <li>Preheat oven to 350 degrees. Line 12-cup standard muffin tin with paper liners.</li>
    
                    <li>Into a medium bowl, sift together cocoa, flour, baking powder, and salt; set aside. </li>
    
                    <li>In a mixing bowl, cream butter and sugar until light and fluffy. Add eggs, one at a time, beating well after each, then beat in vanilla. </li>
    
                    <li>With mixer on low speed, add flour mixture in two batches, alternating with sour cream and beginning and ending with flour.</li>
    
                    <li>Pour batter into cups, filling each 3/4 full. Bake until a toothpick inserted in centers comes out clean, 20 to 25 minutes.</li>
    
                    <li>Cool in pan 5 minutes; transfer to a wire rack to cool completely, then spread with Easy White Icing using a table knife or small offset spatula. Decorate with sprinkles, if desired.</li>
                </ul>
            </div>
        </div>
    </body>
    </html>
    </DOCTYPE!>
    
```

``` css
@import url(https://fonts.googleapis.com/css?family=Open+Sans);

body{
    background-color: #FFFFFF;
    margin: 0px;
    padding:40px 0px;
}
/** header styles **/
.header{
    background-image: url(https://images.unsplash.com/photo-1426869884541-df7117556757?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb);
    background-position: center bottom;
    height: 450px;
    margin: 0 auto;
    position: relative;
    text-align: center;
    width: 90%;
}
.overlay:before {
    content: " ";
    z-index: 1;
    display: block;
    position: absolute;   
    height: 450px;
    top: 40;
    left: 5%;
    width: 90%;
    background: rgba(0, 0, 0, 0.6);
}
.overlay * {
    position: relative; /* Makes elements display above overlay. */
}
h1{
    color: white;
    font-family: 'Lobster', sans-serif;
    font-size: 80px;
    margin: 0px;
    padding-top: 12%;
    text-align: center;
    z-index: 2;
}
h2{
    font-family: 'Alice' , sans-serif;
    font-size: 26px;
    color: white;
    font-weight: bold;
}
h3{
    font-family: 'Alice' , sans-serif;
    font-size: 22px;
    color: white;
}
h4{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 16px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
h5{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 12px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
h6{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 10px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
p{
    color: #011C27;
    font-size: 20px;
    font-family: 'Poppins',sans-serif;
    font-weight: 500;
}
.tips p {
    color: midnightblue;
    font-size: 20px;
    font-family: 'Poppins',sans-serif;
    font-weight: 500; 
}
.tips h3 {
    font-family: 'Alice' , sans-serif;
    font-size: 22px;
    color: midnightblue;
}
ul{
    list-style: none;
    padding: 0px;
}
li{
    font-family: 'Poppins', sans-serif;
    font-weight: 300;
    font-size: 20px;
}
.info{
    display: flex;
    width: 100%;
}
.info ul{
    display: table-cell;
    width: 50%;
}
.steps{
    border: 1px solid #dddddd;
    padding: 40px;
}
#recipe{
    margin: 0 auto;
    width: 90%;
    margin-top: 27px;
}
.ingredients{
    background-color: midnightblue;
    padding: 30px;
    width: 50%;
}
.steps li{
    color: #011C27;
    font-size: 18px !important;
    margin-top: 20px;
    list-style-type: circle;
    margin-left: 20px;
}
.ingredients li{
    color: #ffffff;
    line-height: 18px;
    margin-top: 30px;
    text-align: left;
}
.nutrition{
    background-color: lightgray;
    padding: 30px;
    width: 50%;
}
.nutrition li{
    margin-top: 20px;
    color: midnightblue;
}
.nutrition h2{
    color:midnightblue;
}
.nutrition h3{
    color:midnightblue;
    font-family: 'Poppins', sans-serif;
    font-size: 16px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
.nutrition p{
    font-size: 24px;
    font-family: 'Poppins',sans-serif;
    font-weight: 700;
    margin: 0px;
    color: midnightblue;
}

body{
    font-family: 'Open Sans', sans-serif;
}

.search {
    width: 100%;
    position: relative;
    margin-top: 20px;
}

.searchTerm {
    float: left;
    width: 100%;
    border: 3px solid midnightblue;
    padding: 5px;
    height: 36px;
    border-radius: 5px;
    outline: none;
    color: lightskyblue;
}

.searchTerm:focus{
    color: midnightblue;
}

.searchButton {
    position: absolute;  
    right: -10px;
    top: 8px;
    width: auto;
    height: 36px;
    border: 1px solid midnightblue;
    background: midnightblue;
    text-align: center;
    color: #fff;
    border-radius: 5px;
    cursor: pointer;
    font-size: 20px;
}

.wrap{
    width: 50%;
    padding: 10px;
    position: relative;
    top: 10;
    left: 50%;
    transform: translate(-50%, -50%);
}
```

## Headings Hierarchy

Heading elements should be used in order and it is considered best
practice not to skip heading elements when possible.

Let’s take a look at an example:

``` html
<h1>Main Site Header</h1>
<section>
 <h2>Section Header</h2>
</section>
<section>
 <h2>Section Header</h2>
 <h3>Section Sub-Header</h3>
</section>    
<footer>
 <h2>Footer Header</h2>
</footer>
```

In this example, we have one main site heading. This content uses the
`<h1>` element and is assigned the highest rank as it is the most
important. Note that each web page should only contain one `<h1>`
element.

This `<h1>` is considered the label for the entire document and it
should clearly define the purpose of the web page. After that, we use
the `<h2>` element to assign the same level of importance to each
sibling section.

This provides our users with a clean and consistent level of hierarchy
when viewing our websites and also conforms to today’s web standards by
providing a clear content outline.

Let’s apply what you’ve learned about headings to improve the “Creamy
Chocolate Cupcakes” site.



**1.**

It’s best practice not to skip any headings. The code currently skips
from`h1` to `h5`! Change any `h5` tags to `h2`, and any `h6` tags to
`h3`.



``` html
<!DOCTYPE html>
    <html>
        <head>
            <title>Creamy Chocolate Cupcakes</title>
            <link href="https://fonts.googleapis.com/css?family=Alice|Lobster|Poppins:300,400,500,600,700" rel="stylesheet">
            <link rel="stylesheet" type="text/css" href="styles.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        </head>
    <body>
        <div class="overlay">
            <div class="header">
                <h1>Creamy Chocolate Cupcakes</h1>
            </div>
        </div>
        <div class="wrap">
            <div class="search">
                <input type="text" class="searchTerm" placeholder="Search for more recipes!">
                <button type="submit" class="searchButton">
                    <i class="fa fa-search"></i>
                </button>
            </div>
        </div>
        <div id="recipe">
            <div class="info">
                <ul class="ingredients">
                    <h2>Ingredients</h2>
                    <li>3/4 cup unsweetened cocoa powder</li>
                    <li>3/4 cup all-purpose flour</li>
                    <li>1/2 teaspoon baking powder</li>
                    <li>1/4 teaspoon salt</li>
                    <li>3/4 cup (1.5 sticks) unsalted butter</li>
                    <li>1 cup sugar</li>
                    <li>3 large eggs</li>
                    <li>1 teaspoon vanilla extract</li>
                    <li>1/2 cup sour cream</li>
                    <li>Easy White Icing</li>
                    <li>Sprinkles (optional)</li>
                </ul>
                <ul class="nutrition">
                    <h2>Nutrition</h2>
                    <li>
                        <h3>Calories</h3>
                        <p>650</p>
                    </li>
                    <li>
                        <h3>Fat</h3>
                        <p>10g</p>
                    </li>
                    <li>
                        <h3>Protein</h3>
                        <p>2g</p>
                    </li>
                </ul>
            </div>
            <div class="steps">
                <div class = "tips">
                    <p>You can bake the cupcakes the night before and decorate these the next day. I would frost them the same day you plan on serving them for best results. The frosting will keep in the refrigerator in a piping bag for several days. If you refrigerate it, let it get to room temperature before piping.</p>  
                </div>
                <ul>
                    <li>Preheat oven to 350 degrees. Line 12-cup standard muffin tin with paper liners.</li>
    
                    <li>Into a medium bowl, sift together cocoa, flour, baking powder, and salt; set aside. </li>
    
                    <li>In a mixing bowl, cream butter and sugar until light and fluffy. Add eggs, one at a time, beating well after each, then beat in vanilla. </li>
    
                    <li>With mixer on low speed, add flour mixture in two batches, alternating with sour cream and beginning and ending with flour.</li>
    
                    <li>Pour batter into cups, filling each 3/4 full. Bake until a toothpick inserted in centers comes out clean, 20 to 25 minutes.</li>
    
                    <li>Cool in pan 5 minutes; transfer to a wire rack to cool completely, then spread with Easy White Icing using a table knife or small offset spatula. Decorate with sprinkles, if desired.</li>
                </ul>
            </div>
        </div>
    </body>
    </html>
```

## Font Accessibility

<h1>
Text Accessibility
</h1>

Highly accessible websites use real text instead of images of text, use
text with high contrast with its background, and choose highly legible
font sizes.

Let’s dive into each of these concepts a bit more.

#### Real text vs text within images

Using real text instead of text within graphics provides a website with
several key benefits:

- screen readers can transform the text into a voice-over
- users can scale or magnify the text for better legibility without
  losing image quality
- it’s less taxing on the browser to load real text versus requesting
  large image assets from a server.

#### Contrasting colors

Text is much easier to read when there is a high level of contrast
between the text and the text’s background color. According to the Web
Content Accessibility Guidelines, a ratio of at least 4.5:1 should be
used on all standard text sizes. This means the lighter color must have
four and a half times the luminance of its paired darker color.

Readability can be preserved with less contrast for larger font sizes,
24 pixels or larger. A ratio of at least 3:1 should be used for larger
text sizes.

Interested in testing a set of colors to see if they pass the WCAG’s
guidelines? Head over to
<a href="https://webaim.org/resources/contrastchecker/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">WebAIM</a> and use their color contrast
checker.

#### Font sizes

Lastly, we need to consider setting proper font sizes on our websites.
The standard font size for most modern web browsers is 16 pixels. This
allows users to scan your website and consume information without
straining their eyes. While smaller type sizes can be used, they should
be reserved for nonessential content or design aesthetic only.



**1.**

The text on top of the cupcake isn’t very readable.

In **styles.css**, find the `h1` selector. Change the color property to
white.

**2.**

The font size of many of the list items within this website is too
small! Change the `font-size` property under the `li` selector to
`20px`.

**3.**

The site is still pretty hard to look at! Don’t worry, we’ll keep fixing
it.

Press next when you are ready to continue.



``` css
@import url(https://fonts.googleapis.com/css?family=Open+Sans);

body{
    background-color: #FFFFFF;
    margin: 0px;
    padding:40px 0px;
}
/** header styles **/
.header{
    background-image: url(https://images.unsplash.com/photo-1426869884541-df7117556757?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb);
    background-position: center bottom;
    height: 450px;
    margin: 0 auto;
    position: relative;
    text-align: center;
    width: 90%;
}
.overlay:before {
    content: " ";
    z-index: -1;
    display: block;
    position: absolute;   
    height: 450px;
    top: 40;
    left: 5%;
    width: 90%;
    background: rgba(0, 0, 0, 0.6);
}
.overlay * {
    position: relative; /* Makes elements display above overlay. */
}
h1{
    color: white;
    font-family: 'Lobster', sans-serif;
    font-size: 80px;
    margin: 0px;
    padding-top: 12%;
    text-align: center;
    z-index: 0;
}
h2{
    font-family: 'Alice' , sans-serif;
    font-size: 26px;
    color: white;
    font-weight: bold;
}
h3{
    font-family: 'Alice' , sans-serif;
    font-size: 22px;
    color: white;
}
h4{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 16px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
h5{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 12px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
h6{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 10px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
p{
    color: #011C27;
    font-size: 20px;
    font-family: 'Poppins',sans-serif;
    font-weight: 500;
}
.tips p {
    color: midnightblue;
    font-size: 20px;
    font-family: 'Poppins',sans-serif;
    font-weight: 500; 
}
.tips h3 {
    font-family: 'Alice' , sans-serif;
    font-size: 22px;
    color: midnightblue;
}
ul{
    list-style: none;
    padding: 0px;
}
li{
    font-family: 'Poppins', sans-serif;
    font-weight: 300;
    font-size: 20px;
}
.info{
    display: flex;
    width: 100%;
}
.info ul{
    display: table-cell;
    width: 50%;
}
.steps{
    border: 1px solid #dddddd;
    padding: 40px;
}
#recipe{
    margin: 0 auto;
    width: 90%;
    margin-top: 27px;
}
.ingredients{
    background-color: orange;
    padding: 30px;
    width: 50%;
}
.steps li{
    color: #011C27;
    font-size: 18px !important;
    margin-top: 20px;
}
.ingredients li{
    color: #ffffff;
    line-height: 18px;
    margin-top: 30px;
    text-align: left;
}
.nutrition{
    background-color: cyan;
    padding: 30px;
    width: 50%;
}
.nutrition li{
    margin-top: 20px;
    color: midnightblue;
}
.nutrition h2{
    color:midnightblue;
}
.nutrition h3{
    color:midnightblue;
    font-family: 'Poppins', sans-serif;
    font-size: 16px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
.nutrition p{
    font-size: 24px;
    font-family: 'Poppins',sans-serif;
    font-weight: 700;
    margin: 0px;
    color: midnightblue;
}

body{
    font-family: 'Open Sans', sans-serif;
}

.search {
    width: 100%;
    position: relative;
    margin-top: 20px;
}

.searchTerm {
    float: left;
    width: 100%;
    border: 3px solid midnightblue;
    padding: 5px;
    height: 36px;
    border-radius: 5px;
    outline: none;
    color: lightskyblue;
}

.searchTerm:focus{
    color: midnightblue;
}

.searchButton {
    position: absolute;  
    right: -10px;
    top: 8px;
    width: auto;
    height: 36px;
    border: 1px solid midnightblue;
    background: midnightblue;
    text-align: center;
    color: #fff;
    border-radius: 5px;
    cursor: pointer;
    font-size: 20px;
}

.wrap{
    width: 50%;
    padding: 10px;
    position: relative;
    top: 10;
    left: 50%;
    transform: translate(-50%, -50%);
}
```

## Color Accessibility

When using color in our designs, it’s important to note the contrast
between elements in the foreground and those in the background.

Sufficient color contrast can improve the usability of your site for
users with low vision or color blindness.

For instance, using the combination of black (`#00000`) as a foreground
color and white (`#ffffff`) as a background color provides maximum
contrast.

While this is a fairly common color combination for text on a page, the
high contrast can also cause glare that will increase strain on the
user’s eyes over time.

On the other hand, using colors that are too similar, or lacking
adequate contrast, can hinder users from being able to comprehend the
content on the screen.

Let’s explore how users perceive colors, and how we can effectively make
decisions on what colors to use to reduce issues with legibility.



**1.**

There just isn’t enough contrast between the background and the text,
for either the instructions or the ingredients!

Let’s try a color scheme that uses dark blue, light gray, and white.
This provides more color and a softer design than black text on a white
background, but still gives us plenty of contrast for readability.

Let’s start by changing the background color of the div with the
`.nutrition` class.

In **styles.css**, change the `background-color` property to
`lightgray`.

**2.**

Now, let’s change the background for the `.ingredients` div.

In **styles.css**, change the `background-color` property to
`midnightblue`.



``` css
@import url(https://fonts.googleapis.com/css?family=Open+Sans);

body{
    background-color: #FFFFFF;
    margin: 0px;
    padding:40px 0px;
}
/** header styles **/
.header{
    background-image: url(https://images.unsplash.com/photo-1426869884541-df7117556757?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb);
    background-position: center bottom;
    height: 450px;
    margin: 0 auto;
    position: relative;
    text-align: center;
    width: 90%;
}
.overlay:before {
    content: " ";
    z-index: -1;
    display: block;
    position: absolute;   
    height: 450px;
    top: 40;
    left: 5%;
    width: 90%;
    background: rgba(0, 0, 0, 0.6);
}
.overlay * {
    position: relative; /* Makes elements display above overlay. */
}
h1{
    color: white;
    font-family: 'Lobster', sans-serif;
    font-size: 80px;
    margin: 0px;
    padding-top: 12%;
    text-align: center;
    z-index: 0;
}
h2{
    font-family: 'Alice' , sans-serif;
    font-size: 26px;
    color: white;
    font-weight: bold;
}
h3{
    font-family: 'Alice' , sans-serif;
    font-size: 22px;
    color: white;
}
h4{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 16px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
h5{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 12px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
h6{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 10px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
p{
    color: #011C27;
    font-size: 20px;
    font-family: 'Poppins',sans-serif;
    font-weight: 500;
}
.tips p {
    color: midnightblue;
    font-size: 20px;
    font-family: 'Poppins',sans-serif;
    font-weight: 500; 
}
.tips h3 {
    font-family: 'Alice' , sans-serif;
    font-size: 22px;
    color: midnightblue;
}
ul{
    list-style: none;
    padding: 0px;
}
li{
    font-family: 'Poppins', sans-serif;
    font-weight: 300;
    font-size: 20px;
}
.info{
    display: flex;
    width: 100%;
}
.info ul{
    display: table-cell;
    width: 50%;
}
.steps{
    border: 1px solid #dddddd;
    padding: 40px;
}
#recipe{
    margin: 0 auto;
    width: 90%;
    margin-top: 27px;
}
.ingredients{
    background-color: midnightblue;
    padding: 30px;
    width: 50%;
}
.steps li{
    color: #011C27;
    font-size: 18px !important;
    margin-top: 20px;
    list-style-type: circle;
    margin-left: 20px;
}
.ingredients li{
    color: #ffffff;
    line-height: 18px;
    margin-top: 30px;
    text-align: left;
}
.nutrition{
    background-color: lightgray;
    padding: 30px;
    width: 50%;
}
.nutrition li{
    margin-top: 20px;
    color: midnightblue;
}
.nutrition h2{
    color:midnightblue;
}
.nutrition h3{
    color:midnightblue;
    font-family: 'Poppins', sans-serif;
    font-size: 16px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
.nutrition p{
    font-size: 24px;
    font-family: 'Poppins',sans-serif;
    font-weight: 700;
    margin: 0px;
    color: midnightblue;
}

body{
    font-family: 'Open Sans', sans-serif;
}

.search {
    width: 100%;
    position: relative;
    margin-top: 20px;
}

.searchTerm {
    float: left;
    width: 100%;
    border: 3px solid midnightblue;
    padding: 5px;
    height: 36px;
    border-radius: 5px;
    outline: none;
    color: lightskyblue;
}

.searchTerm:focus{
    color: midnightblue;
}

.searchButton {
    position: absolute;  
    right: -10px;
    top: 8px;
    width: auto;
    height: 36px;
    border: 1px solid midnightblue;
    background: midnightblue;
    text-align: center;
    color: #fff;
    border-radius: 5px;
    cursor: pointer;
    font-size: 20px;
}

.wrap{
    width: 50%;
    padding: 10px;
    position: relative;
    top: 10;
    left: 50%;
    transform: translate(-50%, -50%);
}
```

## Color Blindness

A user with color blindness has a reduced ability to differentiate
between colors. In general, about 8% of men and 0.5% of women have a
color vision deficiency.

Designing color combinations for color-blind users can enhance the
overall impact it will have on everyone visiting your site.

There are many forms of color blindness. The most common is red-green
color blindness, where those two colors are often indistinguishable. For
instance, if a red-green colorblind user is looking at the color purple,
it may appear blue as they do not perceive the red pigment.

People can also have blue-yellow color vision deficiency, and total
color blindness, however, these affect a much smaller percentage of the
population.

Here are some practical steps you can take to improve the color
accessibility of your design:

- Choosing highly contrasting colors (opposite from each other on a
  <a href="https://en.wikipedia.org/wiki/Color_wheel"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">color wheel</a>) will aid users with
  partial color blindness.
- Using a color scheme with multiple shades of brightness for a single
  color will create contrast for users with partial or total color
  blindness. Think about how it would look in grayscale: light blue
  would still be differentiable from dark blue.
- Pairing color with other forms of conveying information (text, icons,
  etc) is the most general solution. For example, an invalid entry in a
  form on a website should not just turn the entry field red, it should
  also display text that explains the error.

Color is a valuable tool for conveying information, but it should never
be the only tool that your site uses to communicate any essential
content.

<a href="https://www.toptal.com/designers/colorfilter"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Toptal</a> has created a colorblind web
page filter tool to test your designs with different types of color
blindness.

Let’s take a look at some best practices of applying accessibility
features to core components in design.



**1.**

Right now, the color of the “tips” part of the recipe is only
differentiated from the actual steps of the recipe by color. Let’s add
more contrast, to make this accessible to color blind users.

First, let’s add bullet points to the list of steps. In **styles.css**,
add a property `list-style-type` with the value `circle`.

Remember, look for the CSS selector that will find the `li` tags within
the `.steps` class.

**2.**

Now let’s change the left margin of this same section, so that the
bullet points of the list line up with the text above.

Try giving the `.steps li` selector a `margin-left` property of 20px.



``` css
@import url(https://fonts.googleapis.com/css?family=Open+Sans);

body{
    background-color: #FFFFFF;
    margin: 0px;
    padding:40px 0px;
}
/** header styles **/
.header{
    background-image: url(https://images.unsplash.com/photo-1426869884541-df7117556757?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb);
    background-position: center bottom;
    height: 450px;
    margin: 0 auto;
    position: relative;
    text-align: center;
    width: 90%;
}
.overlay:before {
    content: " ";
    z-index: -1;
    display: block;
    position: absolute;   
    height: 450px;
    top: 40;
    left: 5%;
    width: 90%;
    background: rgba(0, 0, 0, 0.6);
}
.overlay * {
    position: relative; /* Makes elements display above overlay. */
}
h1{
    color: white;
    font-family: 'Lobster', sans-serif;
    font-size: 80px;
    margin: 0px;
    padding-top: 12%;
    text-align: center;
    z-index: 0;
}
h2{
    font-family: 'Alice' , sans-serif;
    font-size: 26px;
    color: white;
    font-weight: bold;
}
h3{
    font-family: 'Alice' , sans-serif;
    font-size: 22px;
    color: white;
}
h4{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 16px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
h5{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 12px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
h6{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 10px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
p{
    color: #011C27;
    font-size: 20px;
    font-family: 'Poppins',sans-serif;
    font-weight: 500;
}
.tips p {
    color: midnightblue;
    font-size: 20px;
    font-family: 'Poppins',sans-serif;
    font-weight: 500; 
}
.tips h3 {
    font-family: 'Alice' , sans-serif;
    font-size: 22px;
    color: midnightblue;
}
ul{
    list-style: none;
    padding: 0px;
}
li{
    font-family: 'Poppins', sans-serif;
    font-weight: 300;
    font-size: 20px;
}
.info{
    display: flex;
    width: 100%;
}
.info ul{
    display: table-cell;
    width: 50%;
}
.steps{
    border: 1px solid #dddddd;
    padding: 40px;
}
#recipe{
    margin: 0 auto;
    width: 90%;
    margin-top: 27px;
}
.ingredients{
    background-color: midnightblue;
    padding: 30px;
    width: 50%;
}
.steps li{
    color: #011C27;
    font-size: 18px !important;
    margin-top: 20px;
    list-style-type: circle;
    margin-left: 20px;
}
.ingredients li{
    color: #ffffff;
    line-height: 18px;
    margin-top: 30px;
    text-align: left;
}
.nutrition{
    background-color: lightgray;
    padding: 30px;
    width: 50%;
}
.nutrition li{
    margin-top: 20px;
    color: midnightblue;
}
.nutrition h2{
    color:midnightblue;
}
.nutrition h3{
    color:midnightblue;
    font-family: 'Poppins', sans-serif;
    font-size: 16px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
.nutrition p{
    font-size: 24px;
    font-family: 'Poppins',sans-serif;
    font-weight: 700;
    margin: 0px;
    color: midnightblue;
}

body{
    font-family: 'Open Sans', sans-serif;
}

.search {
    width: 100%;
    position: relative;
    margin-top: 20px;
}

.searchTerm {
    float: left;
    width: 100%;
    border: 3px solid midnightblue;
    padding: 5px;
    height: 36px;
    border-radius: 5px;
    outline: none;
    color: lightskyblue;
}

.searchTerm:focus{
    color: midnightblue;
}

.searchButton {
    position: absolute;  
    right: -10px;
    top: 8px;
    width: auto;
    height: 36px;
    border: 1px solid midnightblue;
    background: midnightblue;
    text-align: center;
    color: #fff;
    border-radius: 5px;
    cursor: pointer;
    font-size: 20px;
}

.wrap{
    width: 50%;
    padding: 10px;
    position: relative;
    top: 10;
    left: 50%;
    transform: translate(-50%, -50%);
}
```

## Best Practices

New web design trends come and go, and many times they are aesthetically
appealing, but they are not always the most usable or accessible.

You now know enough principles of accessibility and usability to be able
to judge if these trends will create problems for your users. Let’s
reason through a few examples.

#### Text Overlaid on Images

White text overlaid on an image is a popular design trend. However, it
doesn’t adhere to standards as the contrast is often too low. Adding a
dark transparent overlay on top of the image could increase the contrast
and provide better legibility.

#### Removing Input Labels

Another trend often seen in web design is the removal of labels above
input fields, sometimes relying on placeholder text instead to identify
the input field.

While this enhances the aesthetic quality of a design in some instances,
it can hinder a user’s ability to identify which input they are
attempting to fill out. This is particularly true for low vision users
because the placeholder text is often light gray and low contrast. This
also creates problems for users employing screen readers, because the
form’s placeholder text is not always narrated.

#### Buttons and Links

There has been a trend towards
<a href="https://www.nngroup.com/articles/flat-design/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">flat and minimal design</a> in recent
years. This trend has improved usability in some ways, as it has
encouraged designers to remove visual effects that are not contributing
to the usability of their site.

However, minimalism can go too far, especially if it obscures how users
should navigate the site. Visual contrast is especially important for
buttons and links because these are the tools our users employ to
navigate. Color alone should not be used to indicate clickability, as
this will cause challenges for low vision and color-blind users.

Taking into consideration color choices, contrast, and font legibility
will help you evaluate new design trends, and reduce the chance of new
designs introducing accessibility barriers.



**1.**

Our site is almost there, but there are a few other best practices to
conform to that will make the site look even better.

Let’s get started by adding the word search to the search button. This
will make this feature more obvious to users with low vision, more
accessible to people using screen readers, and it will also save the
function of our site if that icon ever fails to load!

In **index.html**, add the word `Search` after this piece of code:
`<i class="fa fa-search"></i>`. For more on what this means, see the
hint!

**2.**

The white title font on top of the cupcake image could still be more
readable. Let’s fix this by arranging a semi-transparent overlay, to
make the image darker and the contrast with the white font more
striking.

The overlay is actually already created for you, you just need to move
everything in the right order!

The CSS `z-index` property determines the order in which different
elements are stacked. An element with a greater value is stacked in
front of elements with lesser values.

The overlay is currently behind the main image. Change this in
**styles.css** by setting the `overlay:before` selector to have a
`z-index` property of 1.

**3.**

Great, now we can see that the overlay is making the image darker. But
oops, now the overlay is also making our title text darker! That’s not
good for contrast.

Change the `z-index` of our title (hint: look for the `h1` CSS selector)
to equal 2.



``` html
<!DOCTYPE html>
    <html>
        <head>
            <title>Creamy Chocolate Cupcakes</title>
            <link href="https://fonts.googleapis.com/css?family=Alice|Lobster|Poppins:300,400,500,600,700" rel="stylesheet">
            <link rel="stylesheet" type="text/css" href="styles.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        </head>
    <body>
        <div class="overlay">
            <div class="header">
                <h1>Creamy Chocolate Cupcakes</h1>
            </div>
        </div>
        <div class="wrap">
            <div class="search">
                <input type="text" class="searchTerm" placeholder="Search for more recipes!">
                <button type="submit" class="searchButton">
                    <i class="fa fa-search"></i> Search
                </button>
            </div>
        </div>
        <div id="recipe">
            <div class="info">
                <ul class="ingredients">
                    <h2>Ingredients</h2>
                    <li>3/4 cup unsweetened cocoa powder</li>
                    <li>3/4 cup all-purpose flour</li>
                    <li>1/2 teaspoon baking powder</li>
                    <li>1/4 teaspoon salt</li>
                    <li>3/4 cup (1.5 sticks) unsalted butter</li>
                    <li>1 cup sugar</li>
                    <li>3 large eggs</li>
                    <li>1 teaspoon vanilla extract</li>
                    <li>1/2 cup sour cream</li>
                    <li>Easy White Icing</li>
                    <li>Sprinkles (optional)</li>
                </ul>
                <ul class="nutrition">
                    <h2>Nutrition</h2>
                    <li>
                        <h3>Calories</h3>
                        <p>650</p>
                    </li>
                    <li>
                        <h3>Fat</h3>
                        <p>10g</p>
                    </li>
                    <li>
                        <h3>Protein</h3>
                        <p>2g</p>
                    </li>
                </ul>
            </div>
            <div class="steps">
                <div class = "tips">
                    <p>You can bake the cupcakes the night before and decorate these the next day. I would frost them the same day you plan on serving them for best results. The frosting will keep in the refrigerator in a piping bag for several days. If you refrigerate it, let it get to room temperature before piping.</p>  
                </div>
                <ul>
                    <li>Preheat oven to 350 degrees. Line 12-cup standard muffin tin with paper liners.</li>
    
                    <li>Into a medium bowl, sift together cocoa, flour, baking powder, and salt; set aside. </li>
    
                    <li>In a mixing bowl, cream butter and sugar until light and fluffy. Add eggs, one at a time, beating well after each, then beat in vanilla. </li>
    
                    <li>With mixer on low speed, add flour mixture in two batches, alternating with sour cream and beginning and ending with flour.</li>
    
                    <li>Pour batter into cups, filling each 3/4 full. Bake until a toothpick inserted in centers comes out clean, 20 to 25 minutes.</li>
    
                    <li>Cool in pan 5 minutes; transfer to a wire rack to cool completely, then spread with Easy White Icing using a table knife or small offset spatula. Decorate with sprinkles, if desired.</li>
                </ul>
            </div>
        </div>
    </body>
    </html>
    </DOCTYPE!>
```

``` css
@import url(https://fonts.googleapis.com/css?family=Open+Sans);

body{
    background-color: #FFFFFF;
    margin: 0px;
    padding:40px 0px;
}
/** header styles **/
.header{
    background-image: url(https://images.unsplash.com/photo-1426869884541-df7117556757?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb);
    background-position: center bottom;
    height: 450px;
    margin: 0 auto;
    position: relative;
    text-align: center;
    width: 90%;
}
.overlay:before {
    content: " ";
    z-index: 1;
    display: block;
    position: absolute;   
    height: 450px;
    top: 40;
    left: 5%;
    width: 90%;
    background: rgba(0, 0, 0, 0.6);
}
.overlay * {
    position: relative; /* Makes elements display above overlay. */
}
h1{
    color: white;
    font-family: 'Lobster', sans-serif;
    font-size: 80px;
    margin: 0px;
    padding-top: 12%;
    text-align: center;
    z-index: 2;
}
h2{
    font-family: 'Alice' , sans-serif;
    font-size: 26px;
    color: white;
    font-weight: bold;
}
h3{
    font-family: 'Alice' , sans-serif;
    font-size: 22px;
    color: white;
}
h4{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 16px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
h5{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 12px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
h6{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 10px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
p{
    color: #011C27;
    font-size: 20px;
    font-family: 'Poppins',sans-serif;
    font-weight: 500;
}
.tips p {
    color: midnightblue;
    font-size: 20px;
    font-family: 'Poppins',sans-serif;
    font-weight: 500; 
}
.tips h3 {
    font-family: 'Alice' , sans-serif;
    font-size: 22px;
    color: midnightblue;
}
ul{
    list-style: none;
    padding: 0px;
}
li{
    font-family: 'Poppins', sans-serif;
    font-weight: 300;
    font-size: 20px;
}
.info{
    display: flex;
    width: 100%;
}
.info ul{
    display: table-cell;
    width: 50%;
}
.steps{
    border: 1px solid #dddddd;
    padding: 40px;
}
#recipe{
    margin: 0 auto;
    width: 90%;
    margin-top: 27px;
}
.ingredients{
    background-color: midnightblue;
    padding: 30px;
    width: 50%;
}
.steps li{
    color: #011C27;
    font-size: 18px !important;
    margin-top: 20px;
    list-style-type: circle;
    margin-left: 20px;
}
.ingredients li{
    color: #ffffff;
    line-height: 18px;
    margin-top: 30px;
    text-align: left;
}
.nutrition{
    background-color: lightgray;
    padding: 30px;
    width: 50%;
}
.nutrition li{
    margin-top: 20px;
    color: midnightblue;
}
.nutrition h2{
    color:midnightblue;
}
.nutrition h3{
    color:midnightblue;
    font-family: 'Poppins', sans-serif;
    font-size: 16px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
.nutrition p{
    font-size: 24px;
    font-family: 'Poppins',sans-serif;
    font-weight: 700;
    margin: 0px;
    color: midnightblue;
}

body{
    font-family: 'Open Sans', sans-serif;
}

.search {
    width: 100%;
    position: relative;
    margin-top: 20px;
}

.searchTerm {
    float: left;
    width: 100%;
    border: 3px solid midnightblue;
    padding: 5px;
    height: 36px;
    border-radius: 5px;
    outline: none;
    color: lightskyblue;
}

.searchTerm:focus{
    color: midnightblue;
}

.searchButton {
    position: absolute;  
    right: -10px;
    top: 8px;
    width: auto;
    height: 36px;
    border: 1px solid midnightblue;
    background: midnightblue;
    text-align: center;
    color: #fff;
    border-radius: 5px;
    cursor: pointer;
    font-size: 20px;
}

.wrap{
    width: 50%;
    padding: 10px;
    position: relative;
    top: 10;
    left: 50%;
    transform: translate(-50%, -50%);
}
```

## Review

Congratulations! You made the cupcake recipe site look much better! You
practiced some new CSS syntax, and you learned the power of visual
contrast, for both overall design, and for accessibility.

You gained some knowledge on web accessibility and how to make your
websites usable for all users.

Remember, the keys to building a more visually inclusive Web are:

- Using contrast so our text and colors provide better visual cues
- Using correct font size so our content is legible
- Creating user interfaces that are enhanced by, but not dependent on,
  color

Following these guidelines can increase the usability of our websites.
In the next lesson, you will learn semantic HTML tags, which improve the
accessibility of sites for people using a screen reader.



``` html
<!DOCTYPE html>
    <html>
        <head>
            <title>Creamy Chocolate Cupcakes</title>
            <link href="https://fonts.googleapis.com/css?family=Alice|Lobster|Poppins:300,400,500,600,700" rel="stylesheet">
            <link rel="stylesheet" type="text/css" href="styles.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        </head>
    <body>
        <div class="overlay">
            <div class="header">
                <h1>Creamy Chocolate Cupcakes</h1>
            </div>
        </div>
        <div class="wrap">
            <div class="search">
                <input type="text" class="searchTerm" placeholder="Search for more recipes!">
                <button type="submit" class="searchButton">
                    <i class="fa fa-search"></i> Search
                </button>
            </div>
        </div>
        <div id="recipe">
            <div class="info">
                <ul class="ingredients">
                    <h2>Ingredients</h2>
                    <li>3/4 cup unsweetened cocoa powder</li>
                    <li>3/4 cup all-purpose flour</li>
                    <li>1/2 teaspoon baking powder</li>
                    <li>1/4 teaspoon salt</li>
                    <li>3/4 cup (1.5 sticks) unsalted butter</li>
                    <li>1 cup sugar</li>
                    <li>3 large eggs</li>
                    <li>1 teaspoon vanilla extract</li>
                    <li>1/2 cup sour cream</li>
                    <li>Easy White Icing</li>
                    <li>Sprinkles (optional)</li>
                </ul>
                <ul class="nutrition">
                    <h2>Nutrition</h2>
                    <li>
                        <h3>Calories</h3>
                        <p>650</p>
                    </li>
                    <li>
                        <h3>Fat</h3>
                        <p>10g</p>
                    </li>
                    <li>
                        <h3>Protein</h3>
                        <p>2g</p>
                    </li>
                </ul>
            </div>
            <div class="steps">
                <div class = "tips">
                    <p>You can bake the cupcakes the night before and decorate these the next day. I would frost them the same day you plan on serving them for best results. The frosting will keep in the refrigerator in a piping bag for several days. If you refrigerate it, let it get to room temperature before piping.</p>  
                </div>
                <ul>
                    <li>Preheat oven to 350 degrees. Line 12-cup standard muffin tin with paper liners.</li>
    
                    <li>Into a medium bowl, sift together cocoa, flour, baking powder, and salt; set aside. </li>
    
                    <li>In a mixing bowl, cream butter and sugar until light and fluffy. Add eggs, one at a time, beating well after each, then beat in vanilla. </li>
    
                    <li>With mixer on low speed, add flour mixture in two batches, alternating with sour cream and beginning and ending with flour.</li>
    
                    <li>Pour batter into cups, filling each 3/4 full. Bake until a toothpick inserted in centers comes out clean, 20 to 25 minutes.</li>
    
                    <li>Cool in pan 5 minutes; transfer to a wire rack to cool completely, then spread with Easy White Icing using a table knife or small offset spatula. Decorate with sprinkles, if desired.</li>
                </ul>
            </div>
        </div>
    </body>
    </html>
    </DOCTYPE!>
    
```

``` css
@import url(https://fonts.googleapis.com/css?family=Open+Sans);

body{
    background-color: #FFFFFF;
    margin: 0px;
    padding:40px 0px;
}
/** header styles **/
.header{
    background-image: url(https://images.unsplash.com/photo-1426869884541-df7117556757?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb);
    background-position: center bottom;
    height: 450px;
    margin: 0 auto;
    position: relative;
    text-align: center;
    width: 90%;
}
.overlay:before {
    content: " ";
    z-index: 1;
    display: block;
    position: absolute;   
    height: 450px;
    top: 40;
    left: 5%;
    width: 90%;
    background: rgba(0, 0, 0, 0.6);
}
.overlay * {
    position: relative; /* Makes elements display above overlay. */
}
h1{
    color: white;
    font-family: 'Lobster', sans-serif;
    font-size: 80px;
    margin: 0px;
    padding-top: 12%;
    text-align: center;
    z-index: 2;
}
h2{
    font-family: 'Alice' , sans-serif;
    font-size: 26px;
    color: white;
    font-weight: bold;
}
h3{
    font-family: 'Alice' , sans-serif;
    font-size: 22px;
    color: white;
}
h4{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 16px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
h5{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 12px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
h6{
    color: white;
    font-family: 'Poppins', sans-serif;
    font-size: 10px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
p{
    color: #011C27;
    font-size: 20px;
    font-family: 'Poppins',sans-serif;
    font-weight: 500;
}
.tips p {
    color: midnightblue;
    font-size: 20px;
    font-family: 'Poppins',sans-serif;
    font-weight: 500; 
}
.tips h3 {
    font-family: 'Alice' , sans-serif;
    font-size: 22px;
    color: midnightblue;
}
ul{
    list-style: none;
    padding: 0px;
}
li{
    font-family: 'Poppins', sans-serif;
    font-weight: 300;
    font-size: 20px;
}
.info{
    display: flex;
    width: 100%;
}
.info ul{
    display: table-cell;
    width: 50%;
}
.steps{
    border: 1px solid #dddddd;
    padding: 40px;
}
#recipe{
    margin: 0 auto;
    width: 90%;
    margin-top: 27px;
}
.ingredients{
    background-color: midnightblue;
    padding: 30px;
    width: 50%;
}
.steps li{
    color: #011C27;
    font-size: 18px !important;
    margin-top: 20px;
    list-style-type: circle;
    margin-left: 20px;
}
.ingredients li{
    color: #ffffff;
    line-height: 18px;
    margin-top: 30px;
    text-align: left;
}
.nutrition{
    background-color: lightgray;
    padding: 30px;
    width: 50%;
}
.nutrition li{
    margin-top: 20px;
    color: midnightblue;
}
.nutrition h2{
    color:midnightblue;
}
.nutrition h3{
    color:midnightblue;
    font-family: 'Poppins', sans-serif;
    font-size: 16px;
    font-weight: 300;
    margin: 0px;
    text-transform: uppercase;

}
.nutrition p{
    font-size: 24px;
    font-family: 'Poppins',sans-serif;
    font-weight: 700;
    margin: 0px;
    color: midnightblue;
}

body{
    font-family: 'Open Sans', sans-serif;
}

.search {
    width: 100%;
    position: relative;
    margin-top: 20px;
}

.searchTerm {
    float: left;
    width: 100%;
    border: 3px solid midnightblue;
    padding: 5px;
    height: 36px;
    border-radius: 5px;
    outline: none;
    color: lightskyblue;
}

.searchTerm:focus{
    color: midnightblue;
}

.searchButton {
    position: absolute;  
    right: -10px;
    top: 8px;
    width: auto;
    height: 36px;
    border: 1px solid midnightblue;
    background: midnightblue;
    text-align: center;
    color: #fff;
    border-radius: 5px;
    cursor: pointer;
    font-size: 20px;
}

.wrap{
    width: 50%;
    padding: 10px;
    position: relative;
    top: 10;
    left: 50%;
    transform: translate(-50%, -50%);
}
```

# Accessibility

## Introduction to Accessibility

When designing a website, it is important to keep in mind that some
users access the Internet in many different ways. For example, many
users with a visual impairment use screen readers to access content on
the Internet.

A screen reader is a piece of software that provides an audio
description of a web page’s content. A screen reader not only reads the
visual content out loud, it also reads out element names and other
attributes that make it easier for visually impaired users to navigate a
web page.

In the early days of the Internet, many pages were saturated with
graphics and flash animations. Screen readers, unfortunately, could not
interpret these types of elements. As such, a person with a visual
impairment might not have been able to perceive important information on
a website. For this reason, the
<a href="https://en.wikipedia.org/wiki/Web_Accessibility_Initiative"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Web Accessibility Initiative</a> (led by
W3C) developed standards for making information on the Internet
accessible to all.

These standards fall under a group of guidelines called
<a href="https://en.wikipedia.org/wiki/WAI-ARIA"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">ARIA</a>, or Accessible Rich Internet
Applications. These guidelines are easily implemented and make web pages
accessible to a broader audience. We’ll learn how to use ARIA roles and
properties in this lesson to improve access for people who are visually
impaired.

In this lesson, we will cover these practices:

1.  Semantic Elements
2.  ARIA Roles
3.  ARIA Properties
4.  `alt` Attributes



Think about the following questions while you explore **index.html**:

1.  What is unfamiliar to you?
2.  Which elements convey information?
3.  Which elements are for appearance only?
4.  If you read this document from top to bottom, how much sense would
    it make to you?



``` html
<!DOCTYPE html>
<html>

<head>
  <title>A Brief History of Programming</title>
  <link href="style.css" type="text/css" rel="stylesheet">
  <link href="hidden.css" type="text/css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Space+Mono" rel="stylesheet">
</head>
<body>

  <header>
    <h3>A BRIEF HISTORY OF</h3>
    <h1>PROGRAMMING</h1>
  </header>

  <nav>
    <ul role="presentation">
      <li><a href="#early">Early</a></li>
      <li><a href="#middle">Middle</a></li>
      <li><a href="#late">Late</a></li>
      <li><a href="#current">Current</a></li>
    </ul>
  </nav>

  <div id="early" class="container">
    <span class="aside" role="note">Ada Lovelace is the favorite programmer of the author of this web page!</span>

    <h2>Early</h2>
    <h4>Pre-1900</h4>
    <div class="p-container" role="presentation">
      <p>Below is an image of Ada Lovelace, born in 1815 (<em>Died: 1852</em>). She worked with Charles Babbage and is known as the first programmer.</p>
      <p>Below is an image of Charles Babbage, born in 1791 (<em>Died: 1871</em>). Babbage is considered the father of the computer.</p>
    </div>

    <img src="
https://content.codecademy.com/courses/freelance-1/unit-4/img-lovelace.jpg" alt="Ada Lovelace"/>
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-babbage.jpg" alt="Charles Babbage"/>

    <div class="timeline" role="presentation">
      <div class="date-square" role="presentation">
        <p aria-label="Date of Lovelace photo">1840</p>
      </div>
      <div class="date-square" role="presentation">
        <p aria-label="Date of Babbage photo">1850</p>
      </div>
    </div>

  </div>

  <div id="middle" class="container">

    <h2>Middle</h2>
    <h4>1900-1980</h4>
    <div class="p-container" role="presentation">
      <p>Below is an image of Grace Hopper, born in 1906 (<em>Died: 1992</em>). She invented the first compiler and contributed to the COBOL language.</p>
      <p>Below is an image of Dennis Ritchie, born in 1941 (<em>Died: 2011</em>). He created the C programming language (1972) and helped develop Unix.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-hopper.jpg" alt="Grace Hopper"/>
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-ritchie.jpg" alt="Dennis Ritchie"/>

    <div class="timeline" role="presentation">
      <div class="date-square" role="presentation">
        <p aria-label="Date of Hopper photo">1950</p>
      </div>
      <div class="date-square" role="presentation">
        <p aria-label="Date of Ritchie photo">1978</p>
      </div>
    </div>

  </div>

  <div id="late" class="container">

    <h2>Late</h2>
    <h4>1980 - 2000</h4>
    <div class="p-container" role="presentation">
      <p>Below is an image of Guido Van Rossum, born in 1956. He helped to create the Python language in 1991.</p>
      <p>Below is an image of Yukihiro Matsumoto, born in 1965. He developed Ruby, which was first available in 1995.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-vanrossum.jpg" alt="Guido Van Rossum"/>
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-matusmoto.jpg" alt="Yukihiro Matsumoto"/>

    <div class="timeline" role="presentation">
      <div class="date-square" role="presentation">
        <p aria-label="Date of Van Rossum photo">1991</p>
      </div>
      <div class="date-square" role="presentation">
        <p aria-label="Date of Matsumoto photo">1995</p>
      </div>
    </div>

  </div>

  <div id="current" class="container">

    <h2>Current</h2>
    <h4>2000 - Present</h4>
    <div class="p-container" role="presentation">
      <p>Below is an image of Robert Griesemer. He was on the Google team that developed GOLANG, which first appeared in 2009.</p>
      <p>Below is an image of Chris Lattner, a developer at Apple. He helped to write Swift, which first appeared in 2014.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-griesemer.jpg" alt="Robert Griesemer"/>
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-lattner.jpg" alt="Chris Lattner"/>

    <div class="timeline" role="presentation">
      <div class="date-square" role="presentation">
        <p aria-label="Date of Griesemer photo">2010</p>
      </div>
      <div class="date-square" role="presentation">
        <p aria-label="Date of Lattner photo">2014</p>
      </div>
    </div>

  </div>

  <footer>
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-logo2.png" id="logo" />
    <ul role="presentation">
      <li>The Programming Historical Society</li>
      <li>about@programminghs.org</li>
    </ul>
  </footer>

</body>
</html>
```

## Semantic HTML Elements

The quickest way of improving accessibility for screen readers is to use
the appropriate tags for a given task.

For example, developers should wrap a navigation bar in a `<header>`
element. Although the navigation bar could be wrapped in a `<div>`
element with a `class="header"`, the *native semantics* of a `<header>`
element allows someone using a screen reader to understand and navigate
a web page more efficiently.

``` html
<div id="header">
 <!-- Header Elements -->
</div>
```

In the example above, header content is wrapped in a `<div>` element
with `id="header"`. While this is valid HTML, an individual using a
screen reader will not understand the purpose of the `<div>` and will
have to piece the web page together as child elements are read out loud
to them.

Native semantics of an element describes the element’s intended purpose.
For example, the `<header>` element is intended to contain introductory
and navigational elements such as a logo, links, or a search bar.

``` html
<header>
 <!--Header Elements-->
</header>
```

In the example above, the HTML will render the same exact content
present in the first example. However, this example uses the correct
semantic element (`<header>`), which allows an individual using a screen
reader to easily identify the purpose of the elements inside of the
header.

<a href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Here</a> is a list of all the semantic
HTML elements that exist.



**1.**

The header of this website is wrapped in a `<div>` tag with
`id="header"`. In `index.html`, remove this `<div>` tag and wrap this
section with opening and closing `<header>` tags instead.

**2.**

The CSS no longer functions correctly because we changed the name of the
element.

In `style.css`, change the `#header` selector to `header`.

**3.**

The navigation of this website is wrapped in a `<div>` tag with
`id="nav"`. In `index.html`, remove this `<div>` tag and wrap this
section with opening and closing `<nav>` tags instead.

**4.**

Once again, we’ll have to update the CSS stylesheet since we modified
the HTML.

In `style.css`, change all three `#nav` selectors to `nav`.

**5.**

The footer of this website is wrapped in a `<div>` tag with
`id="footer"`. In `index.html`, remove this `<div>` tag and wrap this
section with opening and closing `<footer>` tags instead.

**6.**

Let’s update the CSS stylesheet one more time.

In `style.css`, change both `#footer` selectors to `footer`.



``` html
<!DOCTYPE html>
<html>

<head>
  <title>A Brief History of Programming</title>
  <link href="style.css" type="text/css" rel="stylesheet">
  <link href="hidden.css" type="text/css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Space+Mono" rel="stylesheet">
</head>
<body>

  <header>
    <h3>A BRIEF HISTORY OF</h3>
    <h1>PROGRAMMING</h1>
  </header>

  <nav>
    <ul>
      <li><a href="#early">Early</a></li>
      <li><a href="#middle">Middle</a></li>
      <li><a href="#late">Late</a></li>
      <li><a href="#current">Current</a></li>
    </ul>
  </nav>

  <div id="early" class="container">
      <span class="aside">Ada Lovelace is the favorite programmer of the author of this web page!</span>
    <div class="topline"></div>
    <h2>Early</h2>
    <h4>Pre-1900</h4>
    <div class="p-container">
      <p>Below is an image of Ada Lovelace, born in 1815 (<em>Died: 1852</em>). She worked with Charles Babbage and is known as the first programmer.</p>
      <p>Below is an image of Charles Babbage, born in 1791 (<em>Died: 1871</em>). Babbage is considered the father of the computer.</p>
    </div>

    <img src="
https://content.codecademy.com/courses/freelance-1/unit-4/img-lovelace.jpg" />
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-babbage.jpg" />

    <div class="timeline">
      <div class="date-square">
        <p>1840</p>
      </div>
      <div class="date-square">
        <p>1850</p>
      </div>
    </div>
  </div>

  <div id="middle" class="container">
    <div class="topline"></div>
    <h2>Middle</h2>
    <h4>1900-1980</h4>
    <div class="p-container">
      <p>Below is an image of Grace Hopper, born in 1906 (<em>Died: 1992</em>). She invented the first compiler and contributed to the COBOL language.</p>
      <p>Below is an image of Dennis Ritchie, born in 1941 (<em>Died: 2011</em>). He created the C programming language (1972) and helped develop Unix.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-hopper.jpg" />
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-ritchie.jpg" />

    <div class="timeline">
      <div class="date-square">
        <p>1950</p>
      </div>
      <div class="date-square">
        <p>1978</p>
      </div>
    </div>
  </div>

  <div id="late" class="container">
    <div class="topline"></div>
    <h2>Late</h2>
    <h4>1980 - 2000</h4>
    <div class="p-container">
      <p>Below is an image of Guido Van Rossum, born in 1956. He helped to create the Python language in 1991.</p>
      <p>Below is an image of Yukihiro Matsumoto, born in 1965. He developed Ruby, which was first available in 1995.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-vanrossum.jpg" />
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-matusmoto.jpg" />

    <div class="timeline">
      <div class="date-square">
        <p>1991</p>
      </div>
      <div class="date-square">
        <p>1995</p>
      </div>
    </div>
  </div>

  <div id="current" class="container">
    <div class="topline"></div>
    <h2>Current</h2>
    <h4>2000 - Present</h4>
    <div class="p-container">
      <p>Below is an image of Robert Griesemer. He was on the Google team that developed GOLANG, which first appeared in 2009.</p>
      <p>Below is an image of Chris Lattner, a developer at Apple. He helped to write Swift, which first appeared in 2014.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-griesemer.jpg" />
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-lattner.jpg" />

    <div class="timeline">
      <div class="date-square">
        <p>2010</p>
      </div>
      <div class="date-square">
        <p>2014</p>
      </div>
    </div>
  </div>

  <footer>
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-logo2.png" id="logo" />
    <ul>
      <li>
        The Programming Historical Society
      </li>
      <li>
        about@programminghs.org
      </li>
    </ul>
  </footer>

</body>
</html>
```

``` css
header {
  background-color: #0e0e0e;
  color: white;
  padding: 5px;
  position: fixed;
  width: 100%;
  z-index: 2;
}

nav {
  text-align: right;
  margin-bottom: 10px;
  position: fixed;
  top: 87px;
  width: 100%;
  z-index: 2;
}

nav li {
  display: inline-block;
  width: 60px;
  padding: 5px;
  text-align: center;
}

nav a {
  text-decoration: none;
  color: white;
}

p {
  color: white;
  height: 200px;
  width: 200px;
  display: inline-block;
  margin: 0px 5%;
}

footer {
  height: 100px;
  color: white;
  position: relative;
  top: 150px;
}

footer li {
 display: inline;
}

.container {
  text-align: center;
  max-width: 980px;
  min-width: 625px;
  position: relative;
  top: 120px;
  padding-top: 120px;
}

.date-square {
  width: 55px;
  height: 50px;
  background-color: white;
  position: relative;
  bottom: 25px;
  display: inline-block;
  z-index: 1;
}

.date-square p {
  color: black;
  width: 50px;
  height: 30px;
  background-color: white;
  text-align: center;
  margin: 0;
  position: relative;
  top: 10px;
}

#logo {
  height: 100px;
  width: auto;
  margin: 0px;
  position: absolute;
  right: 5px;
  bottom: 5px;
}
```

## ARIA Role

Text on a web page can communicate different types of information. Some
text may make up the main content of the page, other text may describe
navigation icons, still other text might describe input fields or menus.
It can be challenging to place text in the context of a web page without
knowing where it is positioned or the type of information it is meant to
communicate.

Take a moment to think about how a screen reader would interpret the
Codecademy web page you are looking at right now. It would be difficult
for someone using a screen reader to understand the difference in
significance between the code editor to the right and what you are
currently reading.

To help add context to web page information, ARIA provides an HTML
attribute called `role`. The value of an element’s role changes how a
screen reader communicates the element.

``` html
<div id="code-editor" role="complementary">
 ...
</div>
```

In the example above, imagine the `...` represents an exercise’s code
editor — the section of the page containing the files of code you edit
in an exercise. The `role` for the div is set to `complementary`.
Visually, it makes sense that the information in the code editor is
related to the information in the narrative (what you are reading right
now). A user who uses a screen reader does not receive that visual cue.

Instead, the `role="complementary"` attribute and value can help a
screen reader user understand that the information in the code editor is
*complementary* (or supporting) to the information you are reading right
now. It helps users of screen readers identify the relationship between
the two sections of the page.

<a
href="https://www.w3.org/TR/html-aria/#allowed-aria-roles-states-and-properties"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">This</a> link has a list of acceptable
ARIA roles, where you can read more about the `complementary` role and
other roles as well.



**1.**

Look up the `"note"` role in the <a
href="https://www.w3.org/TR/html-aria/#allowed-descendants-of-aria-roles"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">documentation</a> of descendants of ARIA
roles. Add `role="note"` to the `<span>` with the text
`Ada Lovelace is the favorite programmer of the author of this web page!`.



``` html
<!DOCTYPE html>
<html>

<head>
  <title>A Brief History of Programming</title>
  <link href="style.css" type="text/css" rel="stylesheet">
  <link href="hidden.css" type="text/css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Space+Mono" rel="stylesheet">
</head>
<body>

  <header>
    <h3>A BRIEF HISTORY OF</h3>
    <h1>PROGRAMMING</h1>
  </header>

  <nav>
    <ul>
      <li><a href="#early">Early</a></li>
      <li><a href="#middle">Middle</a></li>
      <li><a href="#late">Late</a></li>
      <li><a href="#current">Current</a></li>
    </ul>
  </nav>

  <div id="early" class="container">
    <span class="aside" role="note">Ada Lovelace is the favorite programmer of the author of this web page!</span>

    <h2>Early</h2>
    <h4>Pre-1900</h4>
    <div class="p-container">
      <p>Below is an image of Ada Lovelace, born in 1815 (<em>Died: 1852</em>). She worked with Charles Babbage and is known as the first programmer.</p>
      <p>Below is an image of Charles Babbage, born in 1791 (<em>Died: 1871</em>). Babbage is considered the father of the computer.</p>
    </div>

    <img src="
https://content.codecademy.com/courses/freelance-1/unit-4/img-lovelace.jpg" />
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-babbage.jpg" />

    <div class="timeline">
      <div class="date-square">
        <p>1840</p>
      </div>
      <div class="date-square">
        <p>1850</p>
      </div>
    </div>

  </div>

  <div id="middle" class="container">

    <h2>Middle</h2>
    <h4>1900-1980</h4>
    <div class="p-container">
      <p>Below is an image of Grace Hopper, born in 1906 (<em>Died: 1992</em>). She invented the first compiler and contributed to the COBOL language.</p>
      <p>Below is an image of Dennis Ritchie, born in 1941 (<em>Died: 2011</em>). He created the C programming language (1972) and helped develop Unix.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-hopper.jpg" />
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-ritchie.jpg" />

    <div class="timeline">
      <div class="date-square">
        <p>1950</p>
      </div>
      <div class="date-square">
        <p>1978</p>
      </div>
    </div>

  </div>

  <div id="late" class="container">

    <h2>Late</h2>
    <h4>1980 - 2000</h4>
    <div class="p-container">
      <p>Below is an image of Guido Van Rossum, born in 1956. He helped to create the Python language in 1991.</p>
      <p>Below is an image of Yukihiro Matsumoto, born in 1965. He developed Ruby, which was first available in 1995.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-vanrossum.jpg" />
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-matusmoto.jpg" />

    <div class="timeline">
      <div class="date-square">
        <p>1991</p>
      </div>
      <div class="date-square">
        <p>1995</p>
      </div>
    </div>

  </div>

  <div id="current" class="container">

    <h2>Current</h2>
    <h4>2000 - Present</h4>
    <div class="p-container">
      <p>Below is an image of Robert Griesemer. He was on the Google team that developed GOLANG, which first appeared in 2009.</p>
      <p>Below is an image of Chris Lattner, a developer at Apple. He helped to write Swift, which first appeared in 2014.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-griesemer.jpg" />
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-lattner.jpg" />

    <div class="timeline">
      <div class="date-square">
        <p>2010</p>
      </div>
      <div class="date-square">
        <p>2014</p>
      </div>
    </div>

  </div>

  <footer>
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-logo2.png" id="logo" />
    <ul>
      <li>The Programming Historical Society</li>
      <li>about@programminghs.org</li>
    </ul>
  </footer>

</body>
</html>
```

## ARIA Role: Presentation

Some HTML elements, like `<ul>` and `<ol>`, only serve to organize
information on a web page. When a screen reader navigates a page,
however, it reads out to the user each element’s name as it encounters
them. Therefore, reading “`ol`“ outloud will slow down visually impaired
users.

We can instruct screen readers to skip reading unnecessary elements by
setting the `role` attribute to `presentation`.

``` html
<ol role="presentation">
 <li>List Item 1</li>
 <li>List Item 2</li>
</ol>
```

In the example above, the `<ol>` element is assigned a `role` of
`presentation`, meaning a screen reader will not read the element’s name
(“ordered list”). This is acceptable, as a user does not need to hear
the element’s name (“ordered list”) to understand the content of a list.

The `presentation` role skips over elements and their *necessary*
children. The `<ol>` and `<ul>` elements require `<li>` children.
Therefore, adding `role="presentation"` to an `<ol>` tag will cause the
screen reader to skip directly to the text between the `<li>` tags (it
will not read the names of the `<li>` elements).

``` html
<div id="container" role="presentation">
 <p>I'm content you want to hear!</p>
</div>
```

In the example above, a screen reader won’t read “div” outloud, but it
will read the name of the paragraph element and the content of the
paragraph. This happens because the paragraph is not a necessary child
of the div.

To read more about the presentation role, click
<a href="https://w3c.github.io/using-aria/#presentation"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">here</a>.



**1.**

Add `role="presentation"` to the `<ul>` elements in the `<nav>` and
`<footer>` of **index.html**.

**2.**

Add `role="presentation"` to all `<div>`s with a class of `"timeline"`.
We will add this attribute to all other presentation elements for you.



## ARIA Properties

ARIA properties are attributes that you can add to HTML elements. These
attributes provide additional information about elements that might not
be obvious to users of screen readers. Let’s explore a property called
`aria-label`.

``` html
<img src="#" alt="A painting of the Shenandoah Valley"/>
<p>Armand Cabrera, 2010</p>
```

In the example above, a person looking at the web page would likely see
“Armand Cabrera” below the image and use visual clues to infer that he
is the artist. However, for someone using a screen reader it might not
be clear what the paragraph below the image means. The property
`aria-label` gives the screen reader additional information to read out
loud to the user.

``` html
<img src="#" alt="A painting of the Shenandoah Valley"/>
<p aria-label="Artist">Armand Cabrera, 2010</p>
```

In the improved HTML above, a user of a screen reader will know how this
paragraph relates to the image above it.

Other ARIA properties are useful in more complex websites using HTML
forms, JavaScript, and other advanced tools.

For a complete list of ARIA properties, visit the following resource:

- <a
  href="https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/ARIA_Techniques"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">ARIA Techniques</a>



**1.**

In the `<p>` tag containing `1840`, add an `aria-label` attribute that
says `Date of Lovelace photo`.

**2.**

In the `<p>` tag containing `1850`, add an `aria-label` attribute that
says `Date of Babbage photo`. We will add the appropriate `aria-label`
to the rest of the squares containing the dates of the images for you.



``` html
<!DOCTYPE html>
<html>

<head>
  <title>A Brief History of Programming</title>
  <link href="style.css" type="text/css" rel="stylesheet">
  <link href="hidden.css" type="text/css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Space+Mono" rel="stylesheet">
</head>
<body>

  <header>
    <h3>A BRIEF HISTORY OF</h3>
    <h1>PROGRAMMING</h1>
  </header>

  <nav>
    <ul role="presentation">
      <li><a href="#early">Early</a></li>
      <li><a href="#middle">Middle</a></li>
      <li><a href="#late">Late</a></li>
      <li><a href="#current">Current</a></li>
    </ul>
  </nav>

  <div id="early" class="container">
    <span class="aside" role="note">Ada Lovelace is the favorite programmer of the author of this web page!</span>

    <h2>Early</h2>
    <h4>Pre-1900</h4>
    <div class="p-container" role="presentation">
      <p>Below is an image of Ada Lovelace, born in 1815 (<em>Died: 1852</em>). She worked with Charles Babbage and is known as the first programmer.</p>
      <p>Below is an image of Charles Babbage, born in 1791 (<em>Died: 1871</em>). Babbage is considered the father of the computer.</p>
    </div>

    <img src="
https://content.codecademy.com/courses/freelance-1/unit-4/img-lovelace.jpg" />
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-babbage.jpg" />

    <div class="timeline" role="presentation">
      <div class="date-square" role="presentation">
        <p aria-label="Date of Lovelace photo">1840</p>
      </div>
      <div class="date-square" role="presentation">
        <p aria-label="Date of Babbage photo">1850</p>
      </div>
    </div>

  </div>

  <div id="middle" class="container">

    <h2>Middle</h2>
    <h4>1900-1980</h4>
    <div class="p-container" role="presentation">
      <p>Below is an image of Grace Hopper, born in 1906 (<em>Died: 1992</em>). She invented the first compiler and contributed to the COBOL language.</p>
      <p>Below is an image of Dennis Ritchie, born in 1941 (<em>Died: 2011</em>). He created the C programming language (1972) and helped develop Unix.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-hopper.jpg" />
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-ritchie.jpg" />

    <div class="timeline" role="presentation">
      <div class="date-square" role="presentation">
        <p>1950</p>
      </div>
      <div class="date-square" role="presentation">
        <p>1978</p>
      </div>
    </div>

  </div>

  <div id="late" class="container">

    <h2>Late</h2>
    <h4>1980 - 2000</h4>
    <div class="p-container" role="presentation">
      <p>Below is an image of Guido Van Rossum, born in 1956. He helped to create the Python language in 1991.</p>
      <p>Below is an image of Yukihiro Matsumoto, born in 1965. He developed Ruby, which was first available in 1995.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-vanrossum.jpg" />
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-matusmoto.jpg" />

    <div class="timeline" role="presentation">
      <div class="date-square" role="presentation">
        <p>1991</p>
      </div>
      <div class="date-square" role="presentation">
        <p>1995</p>
      </div>
    </div>

  </div>

  <div id="current" class="container">

    <h2>Current</h2>
    <h4>2000 - Present</h4>
    <div class="p-container" role="presentation">
      <p>Below is an image of Robert Griesemer. He was on the Google team that developed GOLANG, which first appeared in 2009.</p>
      <p>Below is an image of Chris Lattner, a developer at Apple. He helped to write Swift, which first appeared in 2014.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-griesemer.jpg" />
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-lattner.jpg" />

    <div class="timeline" role="presentation">
      <div class="date-square" role="presentation">
        <p>2010</p>
      </div>
      <div class="date-square" role="presentation">
        <p>2014</p>
      </div>
    </div>

  </div>

  <footer>
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-logo2.png" id="logo" />
    <ul role="presentation">
      <li>The Programming Historical Society</li>
      <li>about@programminghs.org</li>
    </ul>
  </footer>

</body>
</html>
```

## Alt Attribute

Some HTML elements have a built-in attribute called `alt` that works
like `aria-label` but has additional functionality.

The `alt` attribute is used to describe an image (or several other
elements). A screen reader will read the value of the `alt` attribute
out loud. However, if the element cannot be visually seen — whether it
is because the user is visually impaired, an incorrect source is
referenced, or the page is being accessed over a slow connection — the
`alt` attribute will be displayed in its place.

On the other hand, the value of `aria-label` will never be displayed on
the screen and is a better choice for elements that do not support the
`alt` attribute.

``` html
<img src="#" alt="a kitten snuggling a puppy"/>
```

In the example above, a screen reader will read out loud “image: a
kitten snuggling a puppy” to the user. If the image doesn’t load
properly, the browser will display this text as a tooltip.

When using the `alt` attribute, you should adhere to these conventions:

1.  In general, the value of `alt` should concisely describe the image.
2.  For images that are also `<a>` elements, the `alt` attribute should
    describe the source that the link targets.
3.  If an image conveys no information (such as a decorative border),
    the `alt` attribute should be empty, but should never be omitted.
4.  If an image is described by text near the image, do not duplicate
    the description in the `alt` attribute. Use an empty `alt` attribute
    instead.
5.  The value of an `alt` attribute should be no more than 150
    characters.



**1.**

Give the logo an `alt` attribute with the value `company logo`. This
element can be found in the footer of **index.html**.

**2.**

Give the image of Ada Lovelace an `alt` attribute with the value
`Ada Lovelace`.

**3.**

Give the image of Charles Babbage an `alt` attribute with the value
`Charles Babbage`. We will add the rest of the `alt` tags for you.



``` html
<!DOCTYPE html>
<html>

<head>
  <title>A Brief History of Programming</title>
  <link href="style.css" type="text/css" rel="stylesheet">
  <link href="hidden.css" type="text/css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Space+Mono" rel="stylesheet">
</head>
<body>

  <header>
    <h3>A BRIEF HISTORY OF</h3>
    <h1>PROGRAMMING</h1>
  </header>

  <nav>
    <ul role="presentation">
      <li><a href="#early">Early</a></li>
      <li><a href="#middle">Middle</a></li>
      <li><a href="#late">Late</a></li>
      <li><a href="#current">Current</a></li>
    </ul>
  </nav>

  <div id="early" class="container">
    <span class="aside" role="note">Ada Lovelace is the favorite programmer of the author of this web page!</span>

    <h2>Early</h2>
    <h4>Pre-1900</h4>
    <div class="p-container" role="presentation">
      <p>Below is an image of Ada Lovelace, born in 1815 (<em>Died: 1852</em>). She worked with Charles Babbage and is known as the first programmer.</p>
      <p>Below is an image of Charles Babbage, born in 1791 (<em>Died: 1871</em>). Babbage is considered the father of the computer.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-lovelace.jpg" alt="Ada Lovelace"/>
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-babbage.jpg" alt="Charles Babbage"/>

    <div class="timeline" role="presentation">
      <div class="date-square" role="presentation">
        <p aria-label="Date of Lovelace photo">1840</p>
      </div>
      <div class="date-square" role="presentation">
        <p aria-label="Date of Babbage photo">1850</p>
      </div>
    </div>

  </div>

  <div id="middle" class="container">

    <h2>Middle</h2>
    <h4>1900-1980</h4>
    <div class="p-container" role="presentation">
      <p>Below is an image of Grace Hopper, born in 1906 (<em>Died: 1992</em>). She invented the first compiler and contributed to the COBOL language.</p>
      <p>Below is an image of Dennis Ritchie, born in 1941 (<em>Died: 2011</em>). He created the C programming language (1972) and helped develop Unix.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-hopper.jpg" />
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-ritchie.jpg" />

    <div class="timeline" role="presentation">
      <div class="date-square" role="presentation">
        <p aria-label="Date of Hopper photo">1950</p>
      </div>
      <div class="date-square" role="presentation">
        <p aria-label="Date of Ritchie photo">1978</p>
      </div>
    </div>

  </div>

  <div id="late" class="container">

    <h2>Late</h2>
    <h4>1980 - 2000</h4>
    <div class="p-container" role="presentation">
      <p>Below is an image of Guido Van Rossum, born in 1956. He helped to create the Python language in 1991.</p>
      <p>Below is an image of Yukihiro Matsumoto, born in 1965. He developed Ruby, which was first available in 1995.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-vanrossum.jpg" />
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-matusmoto.jpg" />

    <div class="timeline" role="presentation">
      <div class="date-square" role="presentation">
        <p aria-label="Date of Van Rossum photo">1991</p>
      </div>
      <div class="date-square" role="presentation">
        <p aria-label="Date of Matsumoto photo">1995</p>
      </div>
    </div>

  </div>

  <div id="current" class="container">

    <h2>Current</h2>
    <h4>2000 - Present</h4>
    <div class="p-container" role="presentation">
      <p>Below is an image of Robert Griesemer. He was on the Google team that developed GOLANG, which first appeared in 2009.</p>
      <p>Below is an image of Chris Lattner, a developer at Apple. He helped to write Swift, which first appeared in 2014.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-griesemer.jpg" />
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-lattner.jpg" />

    <div class="timeline" role="presentation">
      <div class="date-square" role="presentation">
        <p aria-label="Date of Griesemer photo">2010</p>
      </div>
      <div class="date-square" role="presentation">
        <p aria-label="Date of Lattner photo">2014</p>
      </div>
    </div>

  </div>

  <footer>
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-logo2.png" id="logo" alt="company logo"/>
    <ul role="presentation">
      <li>The Programming Historical Society</li>
      <li>about@programminghs.org</li>
    </ul>
  </footer>

</body>
</html>
```

## Review: Accessibility

Using ARIA roles and properties, `alt` attributes, and semantic elements
in your HTML is a simple way to make your website accessible to
visually-impaired Internet users.

1.  Using semantic HTML elements whenever possible (such as `<header>`
    instead of `<div id="header">`) will allow screen reader users to
    navigate your website more efficiently.
2.  The `role` attribute is used to communicate information about the
    role of specific elements.
3.  `role="presentation"` allows a screen reader to skip markup elements
    that don’t directly contain useful information.
4.  `aria-label` and other ARIA properties can be used to help users
    perceive information that is communicated visually but not through
    text.
5.  The `alt` attribute should be added to every image element (and all
    other elements that support it) instead of `aria-label`. When used,
    its value should be a useful description of the image.



Note that the changes we’ve made in this lesson do not alter the
appearance of your web page. However, they have vastly improved the
experience for anyone who might access your web page using a screen
reader. Feel free to explore the code more and move on when you’re
ready!



``` html
<!DOCTYPE html>
<html>

<head>
  <title>A Brief History of Programming</title>
  <link href="style.css" type="text/css" rel="stylesheet">
  <link href="hidden.css" type="text/css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Space+Mono" rel="stylesheet">
</head>
<body>

  <header>
    <h3>A BRIEF HISTORY OF</h3>
    <h1>PROGRAMMING</h1>
  </header>

  <nav>
    <ul role="presentation">
      <li><a href="#early">Early</a></li>
      <li><a href="#middle">Middle</a></li>
      <li><a href="#late">Late</a></li>
      <li><a href="#current">Current</a></li>
    </ul>
  </nav>

  <div id="early" class="container">
    <span class="aside" role="note">Ada Lovelace is the favorite programmer of the author of this web page!</span>

    <h2>Early</h2>
    <h4>Pre-1900</h4>
    <div class="p-container" role="presentation">
      <p>Below is an image of Ada Lovelace, born in 1815 (<em>Died: 1852</em>). She worked with Charles Babbage and is known as the first programmer.</p>
      <p>Below is an image of Charles Babbage, born in 1791 (<em>Died: 1871</em>). Babbage is considered the father of the computer.</p>
    </div>

    <img src="
https://content.codecademy.com/courses/freelance-1/unit-4/img-lovelace.jpg" alt="Ada Lovelace"/>
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-babbage.jpg" alt="Charles Babbage"/>

    <div class="timeline" role="presentation">
      <div class="date-square" role="presentation">
        <p aria-label="Date of Lovelace photo">1840</p>
      </div>
      <div class="date-square" role="presentation">
        <p aria-label="Date of Babbage photo">1850</p>
      </div>
    </div>

  </div>

  <div id="middle" class="container">

    <h2>Middle</h2>
    <h4>1900-1980</h4>
    <div class="p-container" role="presentation">
      <p>Below is an image of Grace Hopper, born in 1906 (<em>Died: 1992</em>). She invented the first compiler and contributed to the COBOL language.</p>
      <p>Below is an image of Dennis Ritchie, born in 1941 (<em>Died: 2011</em>). He created the C programming language (1972) and helped develop Unix.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-hopper.jpg" alt="Grace Hopper"/>
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-ritchie.jpg" alt="Dennis Ritchie"/>

    <div class="timeline" role="presentation">
      <div class="date-square" role="presentation">
        <p aria-label="Date of Hopper photo">1950</p>
      </div>
      <div class="date-square" role="presentation">
        <p aria-label="Date of Ritchie photo">1978</p>
      </div>
    </div>

  </div>

  <div id="late" class="container">

    <h2>Late</h2>
    <h4>1980 - 2000</h4>
    <div class="p-container" role="presentation">
      <p>Below is an image of Guido Van Rossum, born in 1956. He helped to create the Python language in 1991.</p>
      <p>Below is an image of Yukihiro Matsumoto, born in 1965. He developed Ruby, which was first available in 1995.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-vanrossum.jpg" alt="Guido Van Rossum"/>
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-matusmoto.jpg" alt="Yukihiro Matsumoto"/>

    <div class="timeline" role="presentation">
      <div class="date-square" role="presentation">
        <p aria-label="Date of Van Rossum photo">1991</p>
      </div>
      <div class="date-square" role="presentation">
        <p aria-label="Date of Matsumoto photo">1995</p>
      </div>
    </div>

  </div>

  <div id="current" class="container">

    <h2>Current</h2>
    <h4>2000 - Present</h4>
    <div class="p-container" role="presentation">
      <p>Below is an image of Robert Griesemer. He was on the Google team that developed GOLANG, which first appeared in 2009.</p>
      <p>Below is an image of Chris Lattner, a developer at Apple. He helped to write Swift, which first appeared in 2014.</p>
    </div>

    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-griesemer.jpg" alt="Robert Griesemer"/>
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-lattner.jpg" alt="Chris Lattner"/>

    <div class="timeline" role="presentation">
      <div class="date-square" role="presentation">
        <p aria-label="Date of Griesemer photo">2010</p>
      </div>
      <div class="date-square" role="presentation">
        <p aria-label="Date of Lattner photo">2014</p>
      </div>
    </div>

  </div>

  <footer>
    <img src="https://content.codecademy.com/courses/freelance-1/unit-4/img-logo2.png" id="logo" />
    <ul role="presentation">
      <li>The Programming Historical Society</li>
      <li>about@programminghs.org</li>
    </ul>
  </footer>

</body>
</html>
```

``` css
header {
  background-color: #0e0e0e;
  color: white;
  padding: 5px;
  position: fixed;
  width: 100%;
  z-index: 2;
}

nav {
  text-align: right;
  margin-bottom: 10px;
  position: fixed;
  top: 87px;
  width: 100%;
  z-index: 2;
}

nav li {
  display: inline-block;
  width: 60px;
  padding: 5px;
  text-align: center;
}

nav a {
  text-decoration: none;
  color: white;
}

p {
  color: white;
  height: 200px;
  width: 200px;
  display: inline-block;
  margin: 0px 5%;
}

footer {
  height: 100px;
  color: white;
  position: relative;
  top: 150px;
}

footer li {
 display: inline;
}

.container {
  text-align: center;
  max-width: 980px;
  min-width: 625px;
  position: relative;
  top: 120px;
  padding-top: 120px;
}

.date-square {
  width: 55px;
  height: 50px;
  background-color: white;
  position: relative;
  bottom: 25px;
  display: inline-block;
  z-index: 1;
}

.date-square p {
  color: black;
  width: 50px;
  height: 30px;
  background-color: white;
  text-align: center;
  margin: 0;
  position: relative;
  top: 10px;
}

#logo {
  height: 100px;
  width: auto;
  margin: 0px;
  position: absolute;
  right: 5px;
  bottom: 5px;
}
```

# Setting Up and Using Screen Readers

This article explains how to set up and use a screen reader in order to
think critically about the accessibility of the websites that you’re
building.

Creating a good user experience requires us to think carefully about the
diverse needs and devices of our users. We as designers and developers
know that not everyone sees, hears, or reads content in the same way.

A screen reader is an assistive technology that is used by individuals
who are blind, visually impaired, or need additional assistance
navigating a website. This article will guide you through how to set up
and use a screen reader in order to assess the web accessibility of
various websites, including your own.

More users than you might expect are using some kind of assistive
device. According to the <a href="https://nei.nih.gov/eyedata/pbd1"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">National Institute of Health</a>, about 1
in 30 Americans over the age of 40 will experience visual impairment.
Producing accessible websites is both equitable and good for business.

The screen reader provides a text-to-speech (TTS) experience for the
user to translate the information on the screen into speech, which can
be heard through speakers, headphones or braille. This is why it’s
extremely important to utilize semantic HTML code and appropriate
WAI-ARIA attributes.

A visually impaired user will use a combination of screen reader
commands and operating system commands to accomplish the many tasks a
computer is capable of performing. These commands are prompted through
keyboard shortcuts or mouse actions, like scrolling and clicking.

Although basic screen readers will not help blind users navigate a
computer, screen readers with additional features can give individuals
with visual impairments much more independence.

Screen readers can vary based on the operating system you are using.
However, they can also be implemented through the browser. Please note
that when using a browser’s screen reader, it’s best to turn off the
operating system’s screen reader.

### Screen Reader Options

Here are a few screen reader options that are free for your computer or
browser.

#### (OS X) VoiceOver

Apple computers come with a screen reader built in, called VoiceOver.
You can access it easily by pressing Command-F5. If VoiceOver is on,
pressing Command-F5 turns it off.

If this is your first time opening VoiceOver, you can listen to the
Quick Start Tutorial, which will give you an interactive tour of
VoiceOver navigation and interaction basics.

The benefit to VoiceOver is that it is already installed and ready to
use on your Apple computer and also works with websites.

#### (Windows) NVDA

NVDA (NonVisual Desktop Access) is a free screen reader for Windows,
which allows blind and vision-impaired people to use computers. It reads
the text on the screen in a computerized voice.

The user can easily control what is read to them by moving the cursor to
the relevant area of text with a mouse or using the arrows on the
keyboard. NVDA provides the key to education and employment for many
blind people. It also provides access to social networking, online
shopping, banking, and news. NVDA can also convert the text into braille
if the computer user owns a device called a “braille display”.
<a href="https://www.nvaccess.org/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">NVDA can be installed</a> on your Windows
machine or used on a USB stick. This screen reader is unique because
it’s an open source program, which means developers can contribute to
improving this software.

#### (Google Chrome) ChromeVox

ChromeVox is built using only web technologies like HTML5, CSS, and
Javascript. ChromeVox (Classic) was designed from the start to enable
unprecedented access to modern web apps, including those that utilize
W3C ARIA (Access to Rich Internet Applications) to provide a rich,
desktop-like experience.

This enables visually impaired users to experience the power of web
applications while also giving developers a way to verify the
accessibility of their web applications.

ChromeVox can be easily added to your Chrome browser as an extension
through the <a
href="https://chrome.google.com/webstore/detail/chromevox/kgejglhpjiefppelpmljglcjbhoiplfn?hl=en"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Chrome Web Store</a>. Once installed, you
can use <a href="http://www.chromevox.com/keyboard_shortcuts.html"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">these keyboard shortcuts</a>. If you want
to change the keyboard shortcuts, just click the browser extension icon,
then click “options”.

### Testing Accessibility

Now, let’s test one of them out.

Choose one of the screen readers listed above that fits your operating
system or browser to test websites such as NY Times, Facebook, GitHub,
and Dribbble. Getting the full experience through the screen reader will
help you understand how it’s used and the difficulties the visually
impaired experience when a website lacks accessibility.

Be sure to mouse and click around or use your keyboard to have the
screen reader focus on specific areas.

Starting with the New York Times and moving down the list, let’s check
out the screen reader experience.

#### New York Times

- Click on the main section of the page
- Tab through and notice the focus is on the headlines and the comments
- Hit enter when you land on comments
- Tab through this experience

Was it easy to read the comments on the article or were you prompted to
read about the article first? How could this experience be improved?

#### Facebook

- Tab through the content to get to the main section of the page
- On your keyboard click “Alt + /”
- Tab through the “jump to” menu to get to the news feed

#### GitHub

GitHub is a development platform that provides tools for people to share
their code with others, make edits to shared projects, and keep track of
all versions and changes.

- Click on a repository to go to it’s landing page.
- If there isn’t a repository you want to explore, try looking at
  <a href="https://github.com/expressjs/express"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">Express</a>, a common JavaScript
  framework that we teach at Codecademy
- Tab through until you reach the section that tells you how many
  commits, branches, releases and contributors the repository contains
- Notice how these are considered “list items”
- Tab once more until you can see the list of languages used
- Notice how this is considered an ordered list and lists each tab by
  number

What did you think about this experience? Did it lack any critical
information? Is there anything you think GitHub needs to consider or
improve?

#### Dribbble

Dribble is a design-focused social network that allows designers to
share their own work and explore the work of others.

- On the landing page tab through until you reach the first item
- Notice how the screen reader reads the numbers without the description
  of what the number correlates to
- On the top right under the black navigation bar, choose a different
  display layout
- Allow the screen reader to read through the posts in the different
  layouts

What did you think about the experience when you changed the layout? Was
it easier to follow along on a larger layout vs. another?

#### Your Own Website

If you have ever made your own website, maybe for a course on
Codecademy, or for your personal portfolio, try visiting it with a
screen reader now. What is or is not possible for users visiting your
site using a screen reader?

### Conclusion

Of the websites that you visited, which one was easier or more
accessible to visit? What issues did you face that you think would get
better with more practice using a screen reader, and what issues were
problems with the designs of the sites that you visited?

After considering which one was easier, check out
<a href="https://www.facebook.com/help/141636465971794"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">this accessibility guide from
Facebook</a> to read about how to get the most out of Facebook as a user
with disabilities. You can also look at the
<a href="https://www.facebook.com/accessibility"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Facebook Accessibility page</a> to get
news and updates from the Facebook Accessibility team.

As you can see, it can be somewhat challenging to use a screen reader.
That’s why it’s our job as designers to make the web an accessible place
for everyone. Next time you design a website, keep these tests and your
experience in mind.

# Review: Making a Website Accessible

In this unit, you learned about web accessibility (a11y) practices.

Congratulations! The goal of this unit was to introduce you to website
accessibility (a11y), why it is necessary and how to include it in your
website design.

Having completed this unit, you are now able to:

- Understand what accessibility (a11y) means
- Understand the necessity for a11y on the web
- Add features for improved screen reader usage

If you are interested in learning more about these topics, here are some
additional resources:

- Article: <a href="https://www.boia.org/blog/what-is-a11y"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">What is a11y?</a>
- Resource: <a href="https://www.a11yproject.com/checklist/"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">The a11y Project Checklist</a>
- Article: <a
  href="https://developer.mozilla.org/en-US/docs/Learn/Accessibility/CSS_and_JavaScript"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">CSS and JavaScript accessibility best
  practices</a>

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
