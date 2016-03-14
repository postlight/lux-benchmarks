require('babel-core/register');
const benchmark = require('./lib/benchmark').default;

benchmark().then(() => {
  process.exit(0);
}, err => {
  console.error(err);
  process.exit(1);
});
