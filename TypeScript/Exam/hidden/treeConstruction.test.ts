import { treeConstruction , Tree} from "../src/treeConstruction";


const similarTreescheck = (tree1: Tree | null, tree2: Tree | null): boolean => {
    if (tree1 === null && tree2 === null) {
        return true;
    }
    if (tree1 === null || tree2 === null) {
        return false;
    }
    return tree1.value === tree2.value && similarTreescheck(tree1.left, tree2.left) && similarTreescheck(tree1.right, tree2.right);
}


describe('treeConstruction', () => {
    it("Test Case 1", () => {
        let result = treeConstruction([2,3,5,8,6,7,4,9,10],[5,3,6,8,7,2,9,4,10]);
        let tree:Tree  = {value: 2, left: {value: 3, left: {value: 5, left: null, right: null}, right: {value: 8, left: {value: 6, left: null, right: null}, right: {value: 7, left: null, right: null}}}, right: {value: 4, left: {value: 9, left: null, right: null}, right: {value: 10, left: null, right: null}}};
        expect(similarTreescheck(result,tree)).toEqual(true);
    });
    it("Test Case 2", () => {
        let result = treeConstruction([2,3,5,11,12,8,6,13,7,14,4,9,15,16,10,17,18,19], [11,5,12,3,13,6,8,7,14,2,15,9,16,4,18,17,10,19]);
        let tree:Tree  = {value: 2, left: {value: 3, left: {value: 5, left: {value: 11, left: null, right: null}, right: {value: 12, left: null, right: null}}, right: {value: 8, left: {value: 6, left: {value: 13, left: null, right: null}, right: null}, right: {value: 7, left: null, right: {value: 14, left: null, right: null}}}}, right: {value: 4, left: {value: 9, left: {value: 15, left: null, right: null}, right: {value: 16, left: null, right: null}}, right: {value: 10, left: {value: 17, left: {value: 18, left: null, right: null}, right: null}, right: {value: 19, left: null, right: null}}}};
        expect(similarTreescheck(result,tree)).toEqual(true);
    });
    it("Test Case 3", () => {
        let result = treeConstruction([2,3,5,11,12,8,6,13,4,9,15,16,10,17,18,19],[11,5,12,3,13,6,8,2,15,9,16,4,18,17,10,19]);
        let tree:Tree  = {value: 2, left: {value: 3, left: {value: 5, left: {value: 11, left: null, right: null}, right: {value: 12, left: null, right: null}}, right: {value: 8, left: {value: 6, left: {value: 13, left: null, right: null}, right: null}, right: null}}, right: {value: 4, left: {value: 9, left: {value: 15, left: null, right: null}, right: {value: 16, left: null, right: null}}, right: {value: 10, left: {value: 17, left: {value: 18, left: null, right: null}, right: null}, right: {value: 19, left: null, right: null}}}};
        expect(similarTreescheck(result,tree)).toEqual(true);
    });
    it("Test Case 4", () => {
        let result = treeConstruction([2,3,15,11,12,14,4,6,8,10,16],[14,12,11,15,3,2,4,6,8,10,16]);
        let tree:Tree ={value: 2, left: {value: 3, left: {value: 15, left: {value: 11, left: {value: 12, left: {value: 14, left: null, right: null}, right: null}, right: null}, right: null}, right: null}, right: {value: 4, left: null, right: {value: 6, left: null, right: {value: 8, left: null, right: {value: 10, left: null, right: {value: 16, left: null, right: null}}}}}}
        expect(similarTreescheck(result,tree)).toEqual(true);
    });
    it("Test Case 5", () => {
        let result = treeConstruction([3,4,6,7,8,2,5,10,11,9,13,12,14,15,16],[4,6,3,2,8,10,11,5,7,13,9,14,12,16,15]);
        let tree:Tree = {value: 3, left: {value: 4, left: null, right: {value: 6, left: null, right: null}}, right: {value: 7, left: {value: 8, left: {value: 2, left: null, right: null}, right: {value: 5, left: {value: 10, left: null, right: {value: 11, left: null, right: null}}, right: null}}, right: {value: 9, left: {value: 13, left: null, right: null}, right: {value: 12, left: {value: 14, left: null, right: null}, right: {value: 15, left: {value: 16, left: null, right: null}, right: null}}}}}
        expect(similarTreescheck(result,tree)).toEqual(true);
    });
    it("Test Case 6", () => {
        let result = treeConstruction([3,7,8,2,5,10,11,9,13,12,14,15,16,4,6],[2,8,10,11,5,7,13,9,14,12,16,15,3,4,6]);
        let tree:Tree = {value: 3, left: {value: 7, left: {value: 8, left: {value: 2, left: null, right: null}, right: {value: 5, left: {value: 10, left: null, right: {value: 11, left: null, right: null}}, right: null}}, right: {value: 9, left: {value: 13, left: null, right: null}, right: {value: 12, left: {value: 14, left: null, right: null}, right: {value: 15, left: {value: 16, left: null, right: null}, right: null}}}}, right: {value: 4, left: null, right: {value: 6, left: null, right: null}}}
        expect(similarTreescheck(result,tree)).toEqual(true);
    });
    it("Test Case 7", () => {
        let result = treeConstruction([11,13,17,19,15,21,23],[17,13,19,11,21,15,23]);
        let tree:Tree = {value: 11, left: {value: 13, left: {value: 17, left: null, right: null}, right: {value: 19, left: null, right: null}}, right: {value: 15, left: {value: 21, left: null, right: null}, right: {value: 23, left: null, right: null}}}
        expect(similarTreescheck(result,tree)).toEqual(true);
    });
});