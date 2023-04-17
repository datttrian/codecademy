# Secret Message

Using array methods, you will transform an array of strings into a
secret message!

You should consult the <a
href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array"
class="e14vpv2g1 gamut-xro1w8-ResetElement-Anchor-AnchorBase e1bhhzie0"
target="_blank" rel="noopener">Mozilla Developer Network (MDN)</a> for
reference on any method with which you are not familiar.

If you get stuck during this project or would like to see an experienced
developer work through it, click “**Get Unstuck**“ to see a **project
walkthrough video**.



Mark the tasks as complete by checking them off

1\.

Use an array method to remove the last string of the array
`secretMessage`.

2\.

Great! You can check your work by logging the `.length` of the array.

At this point, the length should be 1 less than the original length.

3\.

Use an array method to add the words `to` and `Program` as separate
strings to the end of the `secretMessage` array.

4\.

Change the word `easily` to the word `right` by accessing the index and
replacing it.

5\.

Use an array method to remove the first string of the array.

6\.

Use an array method to add the string `Programming` to the beginning of
the array.

7\.

Use an array method to remove the strings `get`, `right`, `the`,
`first`, `time,`, and replace them with the single string `know,`.

8\.

On one line, use `console.log()` and `.join()` to print the secret
message as a sentence.

## [Solution](secret-message.js)

``` javascript
let secretMessage = [
    "Learning",
    "is",
    "not",
    "about",
    "what",
    "you",
    "get",
    "easily",
    "the",
    "first",
    "time,",
    "it",
    "is",
    "about",
    "what",
    "you",
    "can",
    "figure",
    "out.",
    "-2015,",
    "Chris",
    "Pine,",
    "Learn",
    "JavaScript",
  ];
  
  secretMessage.pop();
  secretMessage.push("to", "Program");
  secretMessage[secretMessage.indexOf("easily")] = "right";
  secretMessage.shift();
  secretMessage.unshift("Programming");
  secretMessage.splice(secretMessage.indexOf("get"), 5, "know");
  console.log(secretMessage.join(" "));
```

    ## Programming is not about what you know it is about what you can figure out. -2015, Chris Pine, Learn to Program

