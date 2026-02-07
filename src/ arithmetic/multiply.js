import { validateNumbers } from './validate.js';

export function multiply(a, b) {
  validateNumbers(a, b);
  return a * b;
}
