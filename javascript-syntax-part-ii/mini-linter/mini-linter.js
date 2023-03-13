let story =
  'Last weekend, I took literally the most beautifull bike ride of my life. The route is called "The 9W to Nyack" and it stretches all the way from Riverside Park in Manhattan to South Nyack, New Jersey. It\'s really an adventure from beginning to end! It is a 48 mile loop and it literally took me an entire day. I stopped at Riverbank State Park to take some artsy photos. It was a short stop, though, because I had a freaking long way to go. After a quick photo op at the very popular Little Red Lighthouse I began my trek across the George Washington Bridge into New Jersey. The GW is a breathtaking 4,760 feet long! I was already very tired by the time I got to the other side. An hour later, I reached Greenbrook Nature Sanctuary, an extremely beautifull park along the coast of the Hudson. Something that was very surprising to me was that near the end of the route you literally cross back into New York! At this point, you are very close to the end.';

let storyWords = story.split(" ");
let unnecessaryWord = "literally";
let misspelledWord = "beautifull";
let badWord = "freaking";

// log the storyWords array to the console
// console.log(storyWords);

// join the storyWords array back into a string
var storyString = storyWords.join(" ");

// log the story string
console.log(storyString);

// count the number of words in the story
var count = 0;
storyWords.forEach(function (word) {
  count++;
});
console.log(count);

// filter out the word "literally"
storyWords = storyWords.filter(function (word) {
  return word !== unnecessaryWord;
});
console.log(storyWords);

// replace misspelled words
storyWords = storyWords.map(function (word) {
  if (word === misspelledWord) {
    return "beautiful";
  }
  return word;
});
console.log(storyWords);

// find and replace a bad word
var badWordIndex = storyWords.findIndex(function (word) {
  return word === badWord;
});
console.log(badWordIndex);
storyWords[badWordIndex] = "really";
console.log(storyWords);

// find and replace a long word
const lengthCheck = storyWords.every((word) => word.length <= 10);
console.log(lengthCheck);

if (!lengthCheck) {
  const longWord = storyWords.find((word) => word.length > 10);
  const index = storyWords.indexOf(longWord);
  storyWords[index] = "stunning";
  const newStory = storyWords.join(" ");
  console.log(newStory);
}