import { quickestRoute } from '../src/quickestRoute';

describe('quickestRoute', () => {
  it('Test Case 1', () => {
    let result = quickestRoute(
      [
        [0, 2, 4],
        [2, 0, 3],
        [4, 3, 0],
      ],
      0,
      2
    );
    // path: 0 -> 2
    expect(result).toEqual(4);
  });
  it('Test Case 2', () => {
    let result = quickestRoute(
      [
        [0, 1, 3],
        [1, 0, 6],
        [3, 6, 0],
      ],
      2,
      1
    );
    // path: 2 -> 0 -> 1
    expect(result).toEqual(4);
  });
  it('Test Case 3', () => {
    let result = quickestRoute(
      [
        [0, 3, 1, 8],
        [3, 0, Infinity, 4],
        [1, Infinity, 0, Infinity],
        [8, 4, Infinity, 0],
      ],
      3,
      0
    );
    // path: 3 -> 1 -> 0
    expect(result).toEqual(7);
  });
  it('Test Case 4', () => {
    let matrix = [
      [0, 10, Infinity, 8, Infinity],
      [10, 0, 4, 3, Infinity],
      [Infinity, 4, 0, Infinity, 6],
      [8, 3, Infinity, 0, 5],
      [Infinity, Infinity, 6, 5, 0],
    ];
    let result = quickestRoute(matrix, 1, 4);
    // path: 1 -> 3 -> 4
    expect(result).toEqual(8);
  });
  it('Test Case 5', () => {
    let matrix = [
      [0, 12, Infinity, 10, Infinity, 6],
      [12, 0, 3, 2, Infinity, Infinity],
      [Infinity, 3, 0, Infinity, 4, 7],
      [10, 2, Infinity, 0, 5, 3],
      [Infinity, Infinity, 4, 5, 0, 1],
      [6, Infinity, 7, 3, 1, 0],
    ];
    let result = quickestRoute(matrix, 1, 0);
    // path: 1 -> 3 -> 6 -> 0
    expect(result).toEqual(11);
  });
  it('Test Case 6', () => {
    let matrix = [
      [0, 2, Infinity, 6, 3, 4, 8, Infinity],
      [2, 0, 1, Infinity, 4, 5, Infinity, 4],
      [Infinity, 1, 0, 2, 2, 7, 8, 6],
      [6, Infinity, 2, 0, Infinity, 4, 5, Infinity],
      [3, 4, 2, Infinity, 0, 1, 4, 8],
      [4, 5, 7, 4, 1, 0, 6, 3],
      [8, Infinity, 8, 5, 4, 6, 0, Infinity],
      [Infinity, 4, 6, Infinity, 8, 3, Infinity, 0],
    ];
    let result = quickestRoute(matrix, 6, 1);
    // path: 6 -> 4 -> 1
    expect(result).toEqual(7);
  });
});
