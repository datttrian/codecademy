(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
"use strict";

/**
 * Uses the react-transform babel plugin
 * to rewrite modules so that all react components are
 * exported.
 *
 * This allows us to access those components and test them.
 *
 * ex:
 *
 * // component.js
 *
 * var MyComponent = React.createClass({});
 *
 * // component-test.js
 *
 * var components = require('../component.js');
 *
 * console.log(components.__ReactComponents.MyComponent);
 *
 */

module.exports = function createExport(_ref) {
  var locals = _ref.locals;


  return function (ReactClass, componentId) {

    if (!locals[0].exports) {
      locals[0].exports = {};
    }

    if (!locals[0].exports.__ReactComponents) {
      locals[0].exports.__ReactComponents = [];
    }

    locals[0].exports.__ReactComponents.push(ReactClass);

    return ReactClass;
  };
};

},{}],2:[function(require,module,exports){
'use strict';

var _react2 = require('react');

var _react3 = _interopRequireDefault(_react2);

var _reactTransformComponentExports = require('/home/ccuser/.babelscripts/react-transform-component-exports');

var _reactTransformComponentExports2 = _interopRequireDefault(_reactTransformComponentExports);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

var _components = {
  _component: {}
};

var _homeCcuserBabelscriptsReactTransformComponentExports2 = (0, _reactTransformComponentExports2.default)({
  filename: '/home/ccuser/workspace/learn-react-project-2/Button.js',
  components: _components,
  locals: [module],
  imports: [_react3.default]
});

function _wrapComponent(id) {
  return function (Component) {
    return _homeCcuserBabelscriptsReactTransformComponentExports2(Component, id);
  };
}

var React = require('react');

var Button = _wrapComponent('_component')(React.createClass({
  displayName: 'Button',

  render: function render() {
    return React.createElement(
      'button',
      {
        className: this.props.light ? 'light-button' : 'dark-button', onClick: this.props.onClick },
      'Refresh'
    );
  }
}));

module.exports = Button;

},{"/home/ccuser/.babelscripts/react-transform-component-exports":1,"react":undefined}],3:[function(require,module,exports){
'use strict';

var _react2 = require('react');

var _react3 = _interopRequireDefault(_react2);

var _reactTransformComponentExports = require('/home/ccuser/.babelscripts/react-transform-component-exports');

var _reactTransformComponentExports2 = _interopRequireDefault(_reactTransformComponentExports);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

var _components = {
  _component: {}
};

var _homeCcuserBabelscriptsReactTransformComponentExports2 = (0, _reactTransformComponentExports2.default)({
  filename: '/home/ccuser/workspace/learn-react-project-2/Random.js',
  components: _components,
  locals: [module],
  imports: [_react3.default]
});

function _wrapComponent(id) {
  return function (Component) {
    return _homeCcuserBabelscriptsReactTransformComponentExports2(Component, id);
  };
}

var React = require('react');
var ReactDOM = require('react-dom');
var Button = require('./Button');

var Random = _wrapComponent('_component')(React.createClass({
  displayName: 'Random',

  getInitialState: function getInitialState() {
    return { color: [10, 120, 250] };
  },

  componentDidMount: function componentDidMount() {
    this.applyColor();
  },

  componentDidUpdate: function componentDidUpdate(prevProps, prevState) {
    this.applyColor();
  },

  formatColor: function formatColor(ary) {
    return 'rgb(' + ary.join(', ') + ')';
  },

  isLight: function isLight() {
    var rgb = this.state.color;
    return rgb.reduce(function (a, b) {
      return a + b;
    }) < 127 * 3;
  },

  applyColor: function applyColor() {
    var color = this.formatColor(this.state.color);
    document.body.style.background = color;
  },

  chooseColor: function chooseColor() {
    for (var i = 0, random = []; i < 3; i++) {
      random.push(Math.floor(Math.random() * 256));
    }
    return random;
  },

  handleClick: function handleClick() {
    this.setState({ color: this.chooseColor() });
  },

  render: function render() {
    return React.createElement(
      'div',
      null,
      React.createElement(
        'h1',
        { className: this.isLight() ? 'white' : 'black' },
        'Your color is ',
        this.formatColor(this.state.color)
      ),
      React.createElement(Button, { light: this.isLight(), onClick: this.handleClick })
    );
  }
}));

ReactDOM.render(React.createElement(Random, null), document.getElementById('app'));

},{"./Button":2,"/home/ccuser/.babelscripts/react-transform-component-exports":1,"react":undefined,"react-dom":undefined}]},{},[3]);
