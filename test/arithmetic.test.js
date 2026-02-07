import { add, subtract, multiply, divide } from '../src/arithmetic/index.js';

test('add works', () => {
  expect(add(2, 3)).toBe(5);
});

test('subtract works', () => {
  expect(subtract(5, 3)).toBe(2);
});

test('multiply works', () => {
  expect(multiply(4, 3)).toBe(12);
});

test('divide works', () => {
  expect(divide(10, 2)).toBe(5);
});

test('divide by zero throws error', () => {
  expect(() => divide(5, 0)).toThrow('Cannot divide by zero');
});
