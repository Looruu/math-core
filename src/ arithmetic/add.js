import { validateNumbers } from './validate.js';

export function add(a, b) {
  validateNumbers(a, b);
  return a + b;
}
