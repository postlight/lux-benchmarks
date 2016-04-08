import wrk from './utils/wrk';

const pwd = process.env.PWD;

export default async function run() {
  let result;

  console.log('Running Rails Benchmarks...\n');

  result = await wrk(
    'rails server -e production',
    `${pwd}/todo-rails`,
    'http://localhost:3000/tasks'
  );

  console.log(`${result}\n`);

  console.log('Running Sails Benchmarks...\n');

  result = await wrk(
    'NODE_ENV=\'production\' sails lift',
    `${pwd}/todo-sails`,
    'http://localhost:1337/task'
  );

  console.log(`${result}\n`);


  console.log('Running Loopback Benchmarks...\n');

  result = await wrk(
    'NODE_ENV=\'production\' npm start',
    `${pwd}/todo-loopback`,
    'http://localhost:3000/api/tasks'
  );

  console.log(`${result}\n`);


  console.log('Running Lux Benchmarks...\n');

  result = await wrk(
    'NODE_ENV=\'production\' lux serve -e production',
    `${pwd}/todo-lux`,
    'http://localhost:4000/tasks'
  );

  console.log(`${result}\n`);
}
