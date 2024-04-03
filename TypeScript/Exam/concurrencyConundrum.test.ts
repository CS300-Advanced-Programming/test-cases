import { concurrencyConundrum, Task } from '../src/concurrencyConundrum';

let tasks1: Task[] = [
  { taskID: 1, duration: 500 },
  { taskID: 2, duration: 800 },
  { taskID: 3, duration: 500 },
];

let tasks2: Task[] = [
  { taskID: 1, duration: 1000 },
  { taskID: 2, duration: 800 },
  { taskID: 3, duration: 400 },
];

let tasks3: Task[] = [
  { taskID: 1, duration: 900 },
  { taskID: 2, duration: 1500 },
  { taskID: 3, duration: 600 },
  { taskID: 4, duration: 200 },
  { taskID: 5, duration: 200 },
];

let tasks4: Task[] = [
  { taskID: 1, duration: 600 },
  { taskID: 2, duration: 800 },
  { taskID: 3, duration: 500 },
  { taskID: 4, duration: 1000 },
  { taskID: 5, duration: 1000 },
];

let tasks5: Task[] = [
  { taskID: 1, duration: 1800 },
  { taskID: 2, duration: 1200 },
  { taskID: 3, duration: 500 },
  { taskID: 4, duration: 1000 },
  { taskID: 5, duration: 600 },
  { taskID: 6, duration: 1000 },
  { taskID: 7, duration: 1000 },
];

let tasks6: Task[] = [
  { taskID: 1, duration: 1000 },
  { taskID: 2, duration: 800 },
  { taskID: 3, duration: 500 },
  { taskID: 4, duration: 600 },
  { taskID: 5, duration: 200 },
  { taskID: 6, duration: 1500 },
  { taskID: 7, duration: 700 },
  { taskID: 8, duration: 700 },
  { taskID: 9, duration: 500 },
  { taskID: 10, duration: 1000 },
];

const result1: number[] = [1, 2, 3];
const result2: number[] = [3, 2, 1];
const result3: number[] = [3, 4, 1, 5, 2];
const result4: number[] = [3, 1, 2, 4, 5];
const result5: number[] = [3, 4, 5, 2, 1, 6, 7];
const result6: number[] = [5, 3, 4, 2, 7, 1, 9, 8, 6, 10];

describe('concurrencyConundrum', () => {
  test('Test 1', async () => {
    const result = await concurrencyConundrum(tasks1, 2);
    expect(result).toEqual(result1);
  }, 10000);

  test('Test 2', async () => {
    const result = await concurrencyConundrum(tasks2, 3);
    expect(result).toEqual(result2);
  });

  test('Test 3', async () => {
    const result = await concurrencyConundrum(tasks3, 3);
    expect(result).toEqual(result3);
  });

  test('Test 4', async () => {
    const result = await concurrencyConundrum(tasks4, 4);
    expect(result).toEqual(result4);
  });

  test('Test 5', async () => {
    const result = await concurrencyConundrum(tasks5, 4);
    expect(result).toEqual(result5);
  });

  test('Test 6', async () => {
    const result = await concurrencyConundrum(tasks6, 6);
    expect(result).toEqual(result6);
  });
});
