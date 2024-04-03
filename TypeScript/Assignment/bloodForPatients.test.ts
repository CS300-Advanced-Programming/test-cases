import { bloodForPatients } from "../src/bloodForPatients";

describe("bloodForPatients", () => {

    it("Test Case 1", () => {
        expect(bloodForPatients([60,10,20,20], [58,8,30,5])).toBe(97)
    })

    it("Test Case 2", () => {
        expect(bloodForPatients([60,2,2,22], [65,75,0,20])).toBe(82)
    })

    it("Test Case 3", () => {
        expect(bloodForPatients([26,8,10,2], [27,18,8,10])).toBe(44)
    })

    it("Test Case 4", () => {
        expect(bloodForPatients([5,28,5,3], [5,15,15,10])).toBe(35)
    })

    it("Test Case 5", () => {
        expect(bloodForPatients([2,10,30,2], [10,5,15,5])).toBe(32)
    })
})