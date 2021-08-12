// Show *.ts file line numbers in stack traces.
import * as sourceMap from 'source-map-support';
sourceMap.install();

// Replace the following with your application code here

console.log('node.js starter');

async function loop() {
  // eslint-disable-next-line no-constant-condition
  while (true) {
    await new Promise((resolve) => setTimeout(resolve, 3000));
    console.log('tick');
  }
}

loop();
