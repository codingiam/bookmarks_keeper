import _ from 'lodash';
global._ = _;

import $ from 'jquery';
global.$ = $;

import classNames from 'classnames';
global.classNames = classNames;

import sinon from 'sinon';
global.sinon = sinon;

// Define window alert because jsdom no longer defines it
window.alert = _.noop;
