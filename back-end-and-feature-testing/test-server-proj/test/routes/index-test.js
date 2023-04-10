// test/routes/index-test.js
const {assert} = require('chai');
const request = require('supertest');
const {jsdom} = require('jsdom');

const app = require('../../app');

const parseTextFromHTML = (htmlAsString, selector) => {
    const selectedElement = jsdom(htmlAsString).querySelector(selector);
    if (selectedElement !== null) {
      return selectedElement.textContent;
    } else {
      throw new Error(`No element with selector ${selector} found in HTML string`);
    }
};

describe('/', () => {
  describe('POST', () => {
    it('creates a new message', async() => {
      //setup
    const quote = 'Our deepest fear is not that we are inadequate. Our deepest fear is that we are powerful beyond measure.';
    const attributed = 'Marianne Williamson';
    const source = 'A Return to Love: Reflections on the Principles of A Course in Miracles';
    //exercise
    const response = await request(app)
          .post('/')
          .type('form')
          .send({quote, attributed, source});
    //verify
    assert.equal(response.status, 200);
    assert.include(parseTextFromHTML(response.text, '#quotes'), quote);
    assert.include(parseTextFromHTML(response.text, '#quotes'), attributed);
    assert.include(parseTextFromHTML(response.text, '#quotes'), source);
    });
  });
});