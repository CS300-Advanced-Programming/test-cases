import { lastStoneWeight } from '../src/lastStoneWeight';

describe('lastStoneWeight', () => {
  it('Test Case 1', () => {
    const stones: number[] = [4, 3, 9, 6, 7, 1];

    expect(lastStoneWeight(stones)).toBe(0);
  });
  it('Test Case 2', () => {
    const stones: number[] = [2, 8, 6, 5, 2, 1, 4, 3];
    expect(lastStoneWeight(stones)).toBe(1);
  });
  it('Test Case 3', () => {
    const stones: number[] = [7, 8, 7, 9, 12, 14, 4, 1, 6, 5];
    expect(lastStoneWeight(stones)).toBe(1);
  });
  it('Test Case 4', () => {
    const stones: number[] = [
      14, 15, 9, 15, 22, 5, 24, 24, 14, 29, 9, 29, 22, 5, 7,
    ];
    expect(lastStoneWeight(stones)).toBe(3);
  });
  it('Test Case 5', () => {
    const stones: number[] = [
      15, 31, 17, 30, 16, 13, 17, 29, 9, 30, 7, 16, 27, 28, 15, 21, 31, 25, 6,
      32,
    ];
    expect(lastStoneWeight(stones)).toBe(1);
  });
  it('Test Case 6', () => {
    const stones: number[] = [
      42, 28, 17, 34, 25, 27, 10, 12, 41, 19, 20, 19, 37, 18, 17, 17, 44, 38,
      14, 46, 24, 12, 31, 26, 20,
    ];
    expect(lastStoneWeight(stones)).toBe(0);
  });
});
