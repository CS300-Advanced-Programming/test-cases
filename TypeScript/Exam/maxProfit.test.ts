import { maxProfit } from "../src/maxProfit";

describe("bloodForPatients", () => {
    it("Test Case 1", () => {
        expect(maxProfit([])).toBe(0);
    })

    it("Test Case 2", () => {
        expect(maxProfit([1])).toBe(0);
    })

    it("Test Case 3", () => {
        expect(maxProfit([1,3,6])).toBe(3);
    })

    it("Test Case 4", () => {
        expect(maxProfit([3,1,6,3,8,4,3,1,10])).toBe(16);
    })

    it("Test Case 5", () => {
        expect(maxProfit([4,3,6,1,6,3,2,1,5,3,2,5])).toBe(9);
    })

    it("Test Case 6", () => {
        expect(maxProfit([5,4,3,2,1,0,1,2,3,4,5])).toBe(5);
    })
})