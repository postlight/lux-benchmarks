import { exec } from 'child_process';

import sleep from './sleep';
import format from './format';
import execAsync from './exec-async';

export default async function wrk(cmd, cwd, url) {
  let app, result;

  app = exec(cmd, {
    cwd
  });

  await sleep(5000);

  result = await execAsync(`wrk -c 64 -d 30 ${url}`);

  app.kill();

  await sleep(5000);

  return format(result);
}
