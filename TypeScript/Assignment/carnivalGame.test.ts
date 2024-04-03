import { carnivalGame } from "../src/carnivalGame";

describe('carnivalGame', () => {
    it("Test Case 1", () => {
        expect(carnivalGame([9, 8, 9, 2, 8])).toBe(97);
    });
    it("Test Case 2", () => {
        expect(carnivalGame([1, 10, 3, 3, 5])).toBe(70);
    });
    it("Test Case 3", () => {
        expect(carnivalGame([8, 5, 4, 9, 2])).toBe(77);
    });
    it("Test Case 4", () => {
        expect(carnivalGame([5, 1, 6, 6, 9])).toBe(76);
    });
    it("Test Case 5", () => {
        expect(carnivalGame([2, 1, 9, 9, 7, 7, 9, 1, 4, 7])).toBe(182);
    });
    it("Test Case 6", () => {
        expect(carnivalGame([5, 5, 8, 9, 5, 1, 10, 1, 8, 2])).toBe(186);
    });
    it("Test Case 7", () => {
        expect(carnivalGame([2, 2, 6, 1, 6, 9, 10, 2, 7, 4])).toBe(168);
    });
    it("Test Case 8", () => {
        expect(carnivalGame([1, 10, 10, 5, 6, 5, 6, 10, 10, 7] )).toBe(214);
    });
    
});