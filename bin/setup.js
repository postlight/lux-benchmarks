#!/usr/bin/env node --use_strict
require('babel-core/register');
const pwd = process.env.PWD;
const Promise = require('bluebird');
const execAsync = require('../lib/benchmark/utils/exec-async').default;

console.log('Installing todo app dependencies...');

Promise.all([
  execAsync('bundle install', {
    cwd: `${pwd}/todo-rails`
  }),

  execAsync('npm install', {
    cwd: `${pwd}/todo-sails`
  }),

  execAsync('npm install', {
    cwd: `${pwd}/todo-loopback`
  }),

  execAsync('npm install', {
    cwd: `${pwd}/todo-lux`
  })
]);
