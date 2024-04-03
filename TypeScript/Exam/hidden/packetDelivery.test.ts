import { packetDelivery } from '../src/packetDelivery';

describe("packetDelivery", () => {
    it("Test Case 1", () => {
        expect(packetDelivery(0, 1, '../test/test1.txt')).toBe(0.54);
    });
    it("Test Case 2", () => {
        expect(packetDelivery(0, 5, '../test/test2.txt')).toBe(0.17);
    });
    it("Test Case 3", () => {
        expect(packetDelivery(1, 3, '../test/test3.txt')).toBe(0.13);
    });
    it("Test Case 4", () => {
        expect(packetDelivery(0, 5, '../test/test4.txt')).toBe(0.26);
    });
    it("Test Case 5", () => {
        expect(packetDelivery(1, 4, '../test/test5.txt')).toBe(0.27);
    });
    it("Test Case 6", () => {
        expect(packetDelivery(5, 7, '../test/test6.txt')).toBe(0.29);
    });
});