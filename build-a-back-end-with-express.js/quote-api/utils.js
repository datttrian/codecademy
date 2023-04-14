// Returns a random element from the array passed in.
const getRandomElement = arr => {
  if (!Array.isArray(arr)) throw new Error('Expected an array');
  return arr[Math.floor(Math.random() * arr.length)];
}

// Export the function.
module.exports = {
  getRandomElement
};
