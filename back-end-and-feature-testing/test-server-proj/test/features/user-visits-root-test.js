// test/features/user-visits-root-test.js
const {assert} = require('chai');

describe('User visits root', () => {
  describe('posting a quote', () => { 
    it('saves quotes and meta data submitted by the user', () => {
    
      // Setup
      const quote = 'Our deepest fear is not that we are inadequate. Our deepest fear is that we are powerful beyond measure.';
      const attributed = 'Marianne Williamson';
      const source = 'A Return to Love: Reflections on the Principles of A Course in Miracles';
      // Exercise
      browser.url('/');
      browser.setValue('#quote', quote);
      browser.setValue('#attributed', attributed);
      browser.setValue('#source', source);
      browser.click('input[type=submit]');
      // Verify
      assert.include(browser.getText('#quotes'), quote);
      assert.include(browser.getText('#quotes'), attributed);
      assert.include(browser.getText('#quotes'), source);
    });
  });
});
