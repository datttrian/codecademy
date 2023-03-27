# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `yarn start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `yarn test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `yarn build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `yarn eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `yarn build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)
=======
# Authorization Form

A client just called you to say that they love their new website!
There’s only one problem: they don’t like how their contact page
displays their personal information for all to see.

They’ve asked you to hide their website’s contact page behind a password
form. In this project, you’ll accomplish this by using a React component
to set up a simple authorization layer.

Let’s get started!

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.

### Instructions

Mark the tasks as complete by checking them off

## Setting Up

1\.

Click Save to see the current state of things. The contact info in the
browser looks fine, but it should be hidden until you enter a password!

Look in the code editor. You can see a `Contact` component class.
`Contact`’s instructions object has three methods: `constructor()`,
`.authorize()`, and `.render()`.

`constructor()` is a special method. You’ll learn about it in the next
unit. For now, just know that you can check whether a user has entered
the right password by running the expression `this.state.authorized`.

2\.

Let’s start with the `<h1></h1>` in the render function.

Right now, the `<h1></h1>` displays the text `Contact`. If a user hasn’t
been authorized, then you want the `<h1></h1>` to display
`Enter the Password` instead.

Make the `<h1></h1>` display Contact only if `this.state.authorized` is
true. If `this.state.authorized` is false, then the `<h1></h1>` should
display `Enter the Password`.

3\.

The browser should say ‘Enter the Password.’

To make sure it’s working properly, edit the `constructor()` method so
that the user is authorized.

This should change the text back to ‘Contact’.

If it works, then make sure to change `authorized` back to `false`!

## The Login Form

4\.

If the user isn’t authorized, then you want them to see a login form
into which they can enter a password. Let’s make that login form!

In the `.render()` method, before the `return` statement, declare a new
variable named `login`.

Set login equal to a JSX `<form></form>` element. This `<form></form>`
is going to have multiple children, so wrap it in parentheses! Give the
`<form></form>` an attribute of `action="#"`.

5\.

Good! Now let’s give your form some `<input />`s for the user to fill
out.

In between the `<form></form>` tags, write two `<input />` tags. Give
the first `<input />` two attributes: `type="password"` and
`placeholder="Password"`. Give the second `<input />` one attribute:
`type="submit"`.

## The Contact Info

6\.

Now let’s hide the contact info.

After your `login` variable, declare another variable named
`contactInfo`. Set it equal to empty parentheses:

Cut the `<ul></ul>` out of the return statement, and paste it in between
those parentheses!

7\.

Great! By saving two JSX expressions as variables, you’ve set yourself
up nicely to toggle between them.

In the render function’s `return` statement, make a new line right below
the `<h1></h1>`. On this new line, use a ternary operator.

If `this.state.authorized` is true, make the ternary return
`contactInfo`. Otherwise, make the ternary return `login`.

## Handling the Submit

8\.

On lines 14 through 21, you can see a method named `.authorize()`.

This method will check whether a submitted password is equal to
‘swordfish’. If it is, then `this.state.authorized` will become true.

You need `authorize` to get called whenever a user hits “Submit!”

Give the `<form></form>` an `onSubmit` attribute. Set the attribute’s
value equal to the `authorize` function.

9\.

Try entering an incorrect password and hitting *Submit*. Nothing should
happen. Now try entering `swordfish`. Your screen should change!

### [Solution](https://datttrian-authorization-form.netlify.app/)

[REACT Project Authorization
Form](https://www.youtube.com/watch?v=NQJBKX73jQc)
