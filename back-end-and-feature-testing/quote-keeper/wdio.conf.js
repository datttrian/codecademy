const app = require('./app');
const port = process.env.PORT || 4001;

let expressServer;

exports.config = {
  specs: [
    'test/features/*.js',
  ],
  coloredLogs: true,
  baseUrl: `http://localhost:${port}/`,
  framework: 'mocha',
  reporters: ['spec'],
  waitforTimeout: 10 * 1000,
  capabilities: [{
    browserName: 'phantomjs',
   
  }],
  services: ['phantomjs'],

  async onPrepare() {
    expressServer = app.listen(port);
  },
  async onComplete() {
    await expressServer.close();
  },
};
