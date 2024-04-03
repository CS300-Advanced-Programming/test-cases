import { scalesofInjustice } from '../src/scalesofInjustice';

describe('scalesofInjustice', () => {
    it("Test Case 1", () => {
        expect(scalesofInjustice([1,2,4], 9)).toEqual(2015539);
    });
    it("Test Case 2", () => {
        expect(scalesofInjustice([1,2,4], 11)).toEqual(72559411);
    });
    it("Test Case 3", () => {
        expect(scalesofInjustice([1,3,9], 6)).toEqual(66430);
    });
    it("Test Case 4", () => {
        expect(scalesofInjustice([1,3,9], 11)).toEqual(3922632451);
    });
    it("Test Case 5", () => {
        expect(scalesofInjustice([1,4,16], 7)).toEqual(3257437);
    });
    it("Test Case 6", () => {
        expect(scalesofInjustice([1,4,16], 10)).toEqual(5628851293);
    });
    it("Test Case 7", () => {
        expect(scalesofInjustice([1,5,25], 4)).toEqual(3616);
    });
    it("Test Case 8", () => {
        expect(scalesofInjustice([1,10,100], 6)).toEqual(25137931);
    });
});