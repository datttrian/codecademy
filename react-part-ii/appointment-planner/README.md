# Challenge Project: Appointment Planner

#### Overview

Instead of a step-by-step tutorial, this project contains a series of
open-ended requirements which describe the project you’ll be building.
There are many possible ways to correctly fulfill all of these
requirements, and you should expect to use the internet, Codecademy, and
other resources when you encounter a problem that you cannot easily
solve.

#### Project Goals

In this project, you will use functional React components to create an
app that manages contacts and appointments. The app consists of two
pages: one to view and add contacts and one to view and add
appointments.

<img
src="https://static-assets.codecademy.com/skillpaths/react-redux/appointments-components.png"
class="img__1JGFO2nlisObc3KeOSGPRp" alt="Component Diagram" />

You will work with stateful and stateless functional React components
using hooks. The requirements section will walk through implementing the
app from the topmost component down. If you would like to implement it
in a different order feel free to do what is comfortable for you.

#### Setup Instructions

If you choose to do this project on your computer instead of Codecademy,
you can download what you’ll need by clicking the “Download” button
below. Make sure you have
<a href="https://www.codecademy.com/articles/setting-up-node-locally"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Node installed on your computer</a> and then, inside the
project’s root directory, run `npm install`. Finally, run `npm start`
which will automatically open up a new tab in your browser with your
running application. If a new tab does not appear, you can visit
<a href="http://localhost:3000/"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">http://localhost:3000/</a>.

Download



Mark the tasks as complete by checking them off

## Prerequisites

1\.

To complete this project, you should have completed the Codecademy
lessons from <a href="https://www.codecademy.com/learn/react-101"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank">Learn React</a> including:

- JSX
- React Components
- Components Interacting
- Stateless Components From Stateful Components
- Advanced React
- Hooks

## Project Requirements

2\.

The application code starts with **App.js**, **ContactsPage.js** and
**AppointmentsPage.js**. These are the three stateful components you
will work with in this project. **App.js** is located in the **/src**
directory in the file explorer and should already be open in the code
editor.

`App` is a stateful component that handles the routing between the two
pages, `ContactsPage` and `AppointmentsPage`. This is already
implemented using
<a href="https://reactrouter.com/web/guides/quick-start"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">React Router</a>.

> Note: You do not need to be familiar with React Router to complete
> this project.

Based on the given requirements, implement `App` as a stateful component
that maintains appointments and contacts. It should also pass those
values, along with callback functions to update those state values, to
its child components.

**`App` Requirements:**

- Keep track of the contacts and appointments data, each being an array
  of objects
- Define a callback function that, given a name, phone number, and
  email, adds a new contact object with that data to the array of
  contacts
- Define a callback function that, given a title, contact, date, and
  time, adds a new appointment object with that data to the array of
  appointments
- Pass the array of contacts and the appropriate callback function as
  props to the `ContactsPage` component
- Pass the appointments array, contacts array, and the add appointment
  function as props to the `AppointmentsPage` component

3\.

**ContactsPage.js** is located in the **/src/containers/contactsPage**
directory in the file explorer and should already be open in the code
editor.

Based on the given requirements, implement `ContactsPage` as a stateful
component to handle the logic for adding new contacts and listing
current contacts.

**`ContactsPage` Requirements:**

- Receive two props:
  - The current list of contacts
  - A callback function for adding a new contact
- Keep track of three local state values: the current name, phone, and
  email entered into the form
- Check for duplicates whenever the name in the form changes and
  indicate the name is a duplicate
- Only add a new contact on form submission if it does not duplicate an
  existing contact’s name
- A successful submission should clear the form
- In the **Add Contact** section, render a `ContactForm` with the
  following passed via `props`:
  - local state variables
  - local state variable setter functions
  - `handleSubmit` callback function
- In the **Contacts** section, render a `TileList` with the contact
  array passed via `props`

4\.

**ContactForm.js** is located in the **/src/components/contactForm**
directory in the file explorer and should already be open in the code
editor.

Based on the given requirements, implement `ContactForm` as a stateless
component that renders a web form to collect the necessary contact
information.

**`ContactForm` Requirements:**

- Render a `form` with:
  - The `onSubmit` attribute set
  - 3 controlled `<input>` elements, one for each piece of contact data
  - A submit button
- Include a `pattern` attribute to the phone `<input>` with <a
  href="https://regexlib.com/Search.aspx?k=phone&amp;c=-1&amp;m=-1&amp;ps=20"
  class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
  target="_blank" rel="noopener">a regex</a> that matches the phone
  locale of your preference

5\.

Open the **TileList.js** file located in the
**/src/components/tileList** directory.

Based on the given requirements, implement `TileList` as a stateless
component that renders a list of `Tile` components using an array of
objects.

**`TileList` Requirements:**

- Receive one prop:
  - An array of objects to render as a list
- Use the array passed via `props` to iteratively render `Tile`
  components, passing each object in the array as a prop to each
  rendered `Tile` component

The requirements for the `TileList` component are generalized and allow
it to be shared by the `ContactsPage` and `AppointmentsPage` components.
As long as an array of objects with either the contact data or
appointments data is passed then the content will be handled
appropriately.

6\.

Open the **Tile.js** file located in the **/src/components/tile**
directory.

Based on the given requirements, implement `Tile` as a stateless
component that renders the data from an object.

**`Tile` Requirements:**

- Receive one prop:
  - An object
- Iterate over the values in the object, passed in via props, and render
  a `<p>` element for each value
- Give a `className` of `"tile-title"` to the first `<p>` element
- Give a `className` of `"tile"` to all other `<p>` elements

Just like the `TileList` component, the `Tile` component is generalized
to work with data from any object. This allows it to be used in both the
`ContactsPage` and `AppointmentsPage` components.

7\.

Open the **AppointmentsPage.js** file located in the
**/src/containers/appointmentsPage** directory.

Based on the given requirements, implement `AppointmentsPage` as a
stateful component that handles the logic for adding new appointments
and listing current appointments.

**`AppointmentsPage` Requirements:**

- Receive three props:
  - The current list of appointments
  - The current list of contacts
  - A callback function for adding a new appointment
- Keep track of four local state variables, the current title, contact,
  date, and time entered into the form
- Add a new appointment on form submission
- Clear the form on submission
- In the **Add Appointment** section, render an `AppointmentForm` with
  the following passed via `props`:
  - local state variables
  - local state variable setter functions
  - `handleSubmit` callback function
- In the **Appointments** section, render a `TileList` with the
  appointment array passed via `props`

8\.

Open the **AppointmentForm.js** file located in the
**/src/components/appointmentForm** directory.

Based on the given requirements, implement `AppointmentForm` as a
stateless component that renders a web form to collect the necessary
appointment information.

**`AppointmentForm` Requirements:**

- Render a `form` with:
  - The `onSubmit` attribute set to the callback function passed in via
    `props`
  - 3 controlled `input` components, to be used for the title, date and
    time appointment data
  - A `ContactPicker` component with the contacts list passed in via
    props
  - A submit button
- Use `getTodayString()` to set the `min` attribute of the date `input`

9\.

Open the **ContactPicker.js** file located in the
**/src/components/contactPicker** directory.

Based on the given requirements, implement `ContactPicker` as a
stateless component that renders a drop-down list of all contact names.

**`ContactPicker` Requirements:**

- Receive 2 props:
  - The array of contacts
  - A callback function to handle when the `onChange` event is triggered
- Render a `select` element with the `onChange` attribute set to the
  callback passed in via props
- Have a default first `option` element that indicates no contact is
  selected
- Iteratively add `option` elements using the contact names from the
  array passed in via props

## Solution

10\.

Great work! Visit <a
href="https://discuss.codecademy.com/t/appointment-planner-project-react/576778"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">our forums</a> to compare your project to
our sample solution code. You can also learn how to host your own
solution on GitHub so you can share it with other learners! Your
solution might look different from ours, and that’s okay! There are
multiple ways to solve these projects, and you’ll learn more by seeing
others’ code.

## [Solution](https://datttrian-appointment-planner.netlify.app/) (**Reference**: [Codecademy](https://discuss.codecademy.com/t/appointment-planner-challenge-project-react/576778))
