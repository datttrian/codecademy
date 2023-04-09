/**
 * Generates a number between min and max.
 * @param {number} min
 * @param {number} max
 */
export default (min, max) => {
  return Math.floor(Math.random() * max) + min;
};
