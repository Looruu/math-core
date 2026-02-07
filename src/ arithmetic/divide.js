import { validateNumbers } from './validate.js';

export function divide(a, b) {
  validateNumbers(a, b);
  if (b === 0) throw new Error('Cannot divide by zero');
  return a / b;
}
