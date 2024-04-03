import { chooseBestSum } from '../src/chooseBestSum';

describe("chooseBestSum", () => {
    it("Test Case 1", () => {
        let result = chooseBestSum(0, 8, [0, 0, 0, 0, 0, 0, 0, 0]);
        expect(result).toEqual(0);
    });
    it("Test Case 2", () => {
        let result = chooseBestSum(30, 2, [5, 15, 30, 45, 60, 75, 90, 105]);
        expect(result).toEqual(20);
    });
    it("Test Case 3", () => {
        let result = chooseBestSum(30, 2, [0, 5, 15, 30, 45, 60, 75, 105]);
        expect(result).toEqual(30);
    });
    it("Test Case 4", () => {
        let result = chooseBestSum(150, 3, [275, 30, 150, 25, 100, 80, 70, 30]);
        expect(result).toEqual(140);
    });
    it("Test Case 5", () => {
        let result = chooseBestSum(500, 5, [300, 5, 150, 25, 100, 450, 50, 60]);
        expect(result).toEqual(490);
    });
    it("Test Case 6", () => {
        let result = chooseBestSum(100, 5 , [100, 150, 20, 350, 110, 25, 350, 10]);
        expect(result).toEqual(-1);
    });
    it("Test Case 7", () => {
        let result = chooseBestSum(100, 8, [10, 5, 3, 20, 15, 55, 20, 1, 6, 11, 35]);
        expect(result).toEqual(100);
    });
});