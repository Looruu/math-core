import { add } from '../src/arithmetic/add.js';

test('add two numbers', () => {
  expect(add(2, 3)).toBe(5);
});
