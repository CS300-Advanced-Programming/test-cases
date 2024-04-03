import { functors, Tree } from "../src/functors";


const similarTreescheck = (tree1: Tree | null, tree2: Tree | null): boolean => {
    if (tree1 === null && tree2 === null) {
        return true;
    }
    if (tree1 === null || tree2 === null) {
        return false;
    }
    return tree1.value === tree2.value && similarTreescheck(tree1.left, tree2.left) && similarTreescheck(tree1.right, tree2.right);
}

describe('functors', () => {
    it("Test Case 1", () => {
        let inputtree = {value: 1, left: {value: 1, left: null, right: null}, right: {value: 1, left: null, right: null}};
        let result = functors([x => x+1, x => x+2, x => x+3, x => x+4, x => x+5], inputtree);
        let outputtree = {value: 2, left: {value: 2, left: {value: 3, left: {value: 3, left: null, right: null}, right: {value: 3, left: null, right: null}}, right:{value: 4, left: {value: 4, left: null, right: null}, right: {value: 4, left: null, right: null}}}, right: {value: 2, left: {value: 5, left: {value: 5, left: null, right: null}, right: {value: 5, left: null, right: null}}, right: {value: 6, left: {value: 6, left: null, right: null}, right: {value: 6, left: null, right: null}}}};
        expect(similarTreescheck(result,outputtree)).toEqual(true);
    });
    it("Test Case 2", () => {
        let inputtree = {value: 1, left: {value :2, left:null, right:{value :4, left:null, right:null}}, right: {value :6, left:{value :5, left:null, right:null}, right:null}}
        let result = functors([x=>x-1, x=>x-2, x => x**2], inputtree);
        let treef2 = {value: -1, left: {value :0, left:null, right:{value :2, left:null, right:null}}, right: {value :4, left:{value :3, left:null, right:null}, right:null}}
        let treef3 = {value: 1, left: {value :4, left:null, right:{value :16, left:null, right:null}}, right: {value :36, left:{value :25, left:null, right:null}, right:null}}
        let outputtree = {value: 0, left: {value :1, left:treef2, right:{value :3, left:treef3, right:null}}, right: {value :5, left:{value :4, left:null, right:null}, right:null}}
        expect(similarTreescheck(result,outputtree)).toEqual(true);
    });
    it("Test Case 3", () => {
        let inputtree  = {value: 2, left: {value: 3, left: {value: 5, left: null, right: null}, right: {value: 2, left: {value: 6, left: null, right: null}, right: {value: 7, left: null, right: null}}}, right: {value: 4, left: {value: 3, left: null, right: null}, right: {value: 4, left: null, right: null}}};
        let result = functors([x => x+1, x => x+2, x => x+3, x => x-1, x => x-2 , x => x-3], inputtree);
        let treef2 = {value: 4, left: {value: 5, left: {value: 7, left: null, right: null}, right: {value: 4, left: {value: 8, left: null, right: null}, right: {value: 9, left: null, right: null}}}, right: {value: 6, left: {value: 5, left: null, right: null}, right: {value: 6, left: null, right: null}}};
        let treef3 = {value: 5, left: {value: 6, left: {value: 8, left: null, right: null}, right: {value: 5, left: {value: 9, left: null, right: null}, right: {value: 10, left: null, right: null}}}, right: {value: 7, left: {value: 6, left: null, right: null}, right: {value: 7, left: null, right: null}}};
        let treef4 = {value: 1, left: {value: 2, left: {value: 4, left: null, right: null}, right: {value: 1, left: {value: 5, left: null, right: null}, right: {value: 6, left: null, right: null}}}, right: {value: 3, left: {value: 2, left: null, right: null}, right: {value: 3, left: null, right: null}}};
        let treef5 = {value: 0, left: {value: 1, left: {value: 3, left: null, right: null}, right: {value: 0, left: {value: 4, left: null, right: null}, right: {value: 5, left: null, right: null}}}, right: {value: 2, left: {value: 1, left: null, right: null}, right: {value: 2, left: null, right: null}}};
        let treef6 = {value: -1, left: {value: 0, left: {value: 2, left: null, right: null}, right: {value: -1, left: {value: 3, left: null, right: null}, right: {value: 4, left: null, right: null}}}, right: {value: 1, left: {value: 0, left: null, right: null}, right: {value: 1, left: null, right: null}}};
        let outputtree = {value: 3, left: {value: 4, left: {value: 6, left: treef2, right: treef3}, right: {value: 3, left: {value: 7, left: treef4, right: treef5}, right: {value: 8, left: treef6, right: null}}}, right: {value: 5, left: {value: 4, left: null, right: null}, right: {value: 5, left: null, right: null}}};
        expect(similarTreescheck(result,outputtree)).toEqual(true);
    });
    it("Test Case 4", () => {
        let inputtree  = {value: 2, left: {value: 3, left: {value: 5, left: null, right: null}, right: {value: 2, left: {value: 6, left: null, right: null}, right: {value: 7, left: null, right: null}}}, right: {value: 4, left: {value: 3, left: null, right: null}, right: {value: 4, left: null, right: null}}};
        let result = functors([x => x+1, x => x+2, x => x+3, x => x-1, x => x-2 , x => x-3, x => x+2, x => x+3, x => x-1, x => x-2 , x => x-3], inputtree);
        let treef2 = {value: 4, left: {value: 5, left: {value: 7, left: null, right: null}, right: {value: 4, left: {value: 8, left: null, right: null}, right: {value: 9, left: null, right: null}}}, right: {value: 6, left: {value: 5, left: null, right: null}, right: {value: 6, left: null, right: null}}};
        let treef3 = {value: 5, left: {value: 6, left: {value: 8, left: null, right: null}, right: {value: 5, left: {value: 9, left: null, right: null}, right: {value: 10, left: null, right: null}}}, right: {value: 7, left: {value: 6, left: null, right: null}, right: {value: 7, left: null, right: null}}};
        let treef4 = {value: 1, left: {value: 2, left: {value: 4, left: null, right: null}, right: {value: 1, left: {value: 5, left: null, right: null}, right: {value: 6, left: null, right: null}}}, right: {value: 3, left: {value: 2, left: null, right: null}, right: {value: 3, left: null, right: null}}};
        let treef5 = {value: 0, left: {value: 1, left: {value: 3, left: null, right: null}, right: {value: 0, left: {value: 4, left: null, right: null}, right: {value: 5, left: null, right: null}}}, right: {value: 2, left: {value: 1, left: null, right: null}, right: {value: 2, left: null, right: null}}};
        let treef6 = {value: -1, left: {value: 0, left: {value: 2, left: null, right: null}, right: {value: -1, left: {value: 3, left: null, right: null}, right: {value: 4, left: null, right: null}}}, right: {value: 1, left: {value: 0, left: null, right: null}, right: {value: 1, left: null, right: null}}};
        let outputtree = {value: 3, left: {value: 4, left: {value: 6, left: treef2, right: treef3}, right: {value: 3, left: {value: 7, left: treef4, right: treef5}, right: {value: 8, left: treef6, right: treef2}}}, right: {value: 5, left: {value: 4, left: treef3, right: treef4}, right: {value: 5, left: treef5, right: treef6}}};
        expect(similarTreescheck(result,outputtree)).toEqual(true);
    });
    it("Test Case 5", () => {
        let inputtree  = {value: 2, left: {value: 3, left: {value: 5, left: {value: 3, left: null, right: null}, right: {value: 4, left: null, right: null}}, right: {value: 2, left: {value: 6, left: {value: 3, left: null, right: null}, right: null}, right: {value: 7, left: null, right: {value: 4, left: null, right: null}}}}, right: {value: 4, left: {value: 3, left: {value: 1, left: null, right: null}, right: {value: 2, left: null, right: null}}, right: {value: 4, left: {value: 2, left: {value: 5, left: null, right: null}, right: null}, right: {value: 1, left: null, right: null}}}};
        let result = functors([x => x+1, x => x+2, x => x+3, x => x+4, x => x+5 , x => x+6], inputtree);
        let treef2 = {value: 4, left: {value: 5, left: {value: 7, left: {value: 5, left: null, right: null}, right: {value: 6, left: null, right: null}}, right: {value: 4, left: {value: 8, left: {value: 5, left: null, right: null}, right: null}, right: {value: 9, left: null, right: {value: 6, left: null, right: null}}}}, right: {value: 6, left: {value: 5, left: {value: 3, left: null, right: null}, right: {value: 4, left: null, right: null}}, right: {value: 6, left: {value: 4, left: {value: 7, left: null, right: null}, right: null}, right: {value: 3, left: null, right: null}}}};
        let treef3 = {value: 5, left: {value: 6, left: {value: 8, left: {value: 6, left: null, right: null}, right: {value: 7, left: null, right: null}}, right: {value: 5, left: {value: 9, left: {value: 6, left: null, right: null}, right: null}, right: {value: 10, left: null, right: {value: 7, left: null, right: null}}}}, right: {value: 7, left: {value: 6, left: {value: 4, left: null, right: null}, right: {value: 5, left: null, right: null}}, right: {value: 7, left: {value: 5, left: {value: 8, left: null, right: null}, right: null}, right: {value: 4, left: null, right: null}}}};
        let treef4 = {value: 6, left: {value: 7, left: {value: 9, left: {value: 7, left: null, right: null}, right: {value: 8, left: null, right: null}}, right: {value: 6, left: {value: 10, left: {value: 7, left: null, right: null}, right: null}, right: {value: 11, left: null, right: {value: 8, left: null, right: null}}}}, right: {value: 8, left: {value: 7, left: {value: 5, left: null, right: null}, right: {value: 6, left: null, right: null}}, right: {value: 8, left: {value: 6, left: {value: 9, left: null, right: null}, right: null}, right: {value: 5, left: null, right: null}}}};
        let treef5 = {value: 7, left: {value: 8, left: {value: 10, left: {value: 8, left: null, right: null}, right: {value: 9, left: null, right: null}}, right: {value: 7, left: {value: 11, left: {value: 8, left: null, right: null}, right: null}, right: {value: 12, left: null, right: {value: 9, left: null, right: null}}}}, right: {value: 9, left: {value: 8, left: {value: 6, left: null, right: null}, right: {value: 7, left: null, right: null}}, right: {value: 9, left: {value: 7, left: {value: 10, left: null, right: null}, right: null}, right: {value: 6, left: null, right: null}}}};
        let treef6 = {value: 8, left: {value: 9, left: {value: 11, left: {value: 9, left: null, right: null}, right: {value: 10, left: null, right: null}}, right: {value: 8, left: {value: 12, left: {value: 9, left: null, right: null}, right: null}, right: {value: 13, left: null, right: {value: 10, left: null, right: null}}}}, right: {value: 10, left: {value: 9, left: {value: 7, left: null, right: null}, right: {value: 8, left: null, right: null}}, right: {value: 10, left: {value: 8, left: {value: 11, left: null, right: null}, right: null}, right: {value: 7, left: null, right: null}}}};
        let outputtree = {value: 3, left: {value: 4, left: {value: 6, left: {value: 4, left: treef2, right: treef3}, right: {value: 5, left: treef4, right: treef5}}, right: {value: 3, left: {value: 7, left: {value: 4, left: treef6, right: null}, right: null}, right: {value: 8, left: null, right: {value: 5, left: null, right: null}}}}, right: {value: 5, left: {value: 4, left: {value: 2, left: null, right: null}, right: {value: 3, left: null, right: null}}, right: {value: 5, left: {value: 3, left: {value: 6, left: null, right: null}, right: null}, right: {value: 2, left: null, right: null}}}};
        expect(similarTreescheck(result,outputtree)).toEqual(true);
    });
    it("Test Case 6", () => {
        let inputtree  = {value: 2, left: {value: 3, left: {value: 5, left: {value: 3, left: null, right: null}, right: {value: 4, left: null, right: null}}, right: {value: 2, left: {value: 6, left: {value: 3, left: null, right: null}, right: null}, right: {value: 7, left: null, right: {value: 4, left: null, right: null}}}}, right: {value: 4, left: {value: 3, left: {value: 1, left: null, right: null}, right: {value: 2, left: null, right: null}}, right: {value: 4, left: {value: 2, left: {value: 5, left: null, right: null}, right: null}, right: {value: 1, left: null, right: null}}}};
        let result = functors([x => x+1, x => x+2, x => x+3, x => x+4, x => x+5 , x => x+6, x => x+6, x => x+5, x => x+4, x => x+3, x => x+2], inputtree);
        let treef2 = {value: 4, left: {value: 5, left: {value: 7, left: {value: 5, left: null, right: null}, right: {value: 6, left: null, right: null}}, right: {value: 4, left: {value: 8, left: {value: 5, left: null, right: null}, right: null}, right: {value: 9, left: null, right: {value: 6, left: null, right: null}}}}, right: {value: 6, left: {value: 5, left: {value: 3, left: null, right: null}, right: {value: 4, left: null, right: null}}, right: {value: 6, left: {value: 4, left: {value: 7, left: null, right: null}, right: null}, right: {value: 3, left: null, right: null}}}};
        let treef3 = {value: 5, left: {value: 6, left: {value: 8, left: {value: 6, left: null, right: null}, right: {value: 7, left: null, right: null}}, right: {value: 5, left: {value: 9, left: {value: 6, left: null, right: null}, right: null}, right: {value: 10, left: null, right: {value: 7, left: null, right: null}}}}, right: {value: 7, left: {value: 6, left: {value: 4, left: null, right: null}, right: {value: 5, left: null, right: null}}, right: {value: 7, left: {value: 5, left: {value: 8, left: null, right: null}, right: null}, right: {value: 4, left: null, right: null}}}};
        let treef4 = {value: 6, left: {value: 7, left: {value: 9, left: {value: 7, left: null, right: null}, right: {value: 8, left: null, right: null}}, right: {value: 6, left: {value: 10, left: {value: 7, left: null, right: null}, right: null}, right: {value: 11, left: null, right: {value: 8, left: null, right: null}}}}, right: {value: 8, left: {value: 7, left: {value: 5, left: null, right: null}, right: {value: 6, left: null, right: null}}, right: {value: 8, left: {value: 6, left: {value: 9, left: null, right: null}, right: null}, right: {value: 5, left: null, right: null}}}};
        let treef5 = {value: 7, left: {value: 8, left: {value: 10, left: {value: 8, left: null, right: null}, right: {value: 9, left: null, right: null}}, right: {value: 7, left: {value: 11, left: {value: 8, left: null, right: null}, right: null}, right: {value: 12, left: null, right: {value: 9, left: null, right: null}}}}, right: {value: 9, left: {value: 8, left: {value: 6, left: null, right: null}, right: {value: 7, left: null, right: null}}, right: {value: 9, left: {value: 7, left: {value: 10, left: null, right: null}, right: null}, right: {value: 6, left: null, right: null}}}};
        let treef6 = {value: 8, left: {value: 9, left: {value: 11, left: {value: 9, left: null, right: null}, right: {value: 10, left: null, right: null}}, right: {value: 8, left: {value: 12, left: {value: 9, left: null, right: null}, right: null}, right: {value: 13, left: null, right: {value: 10, left: null, right: null}}}}, right: {value: 10, left: {value: 9, left: {value: 7, left: null, right: null}, right: {value: 8, left: null, right: null}}, right: {value: 10, left: {value: 8, left: {value: 11, left: null, right: null}, right: null}, right: {value: 7, left: null, right: null}}}};
        let outputtree = {value: 3, left: {value: 4, left: {value: 6, left: {value: 4, left: treef2, right: treef3}, right: {value: 5, left: treef4, right: treef5}}, right: {value: 3, left: {value: 7, left: {value: 4, left: treef6, right: treef6}, right: treef5}, right: {value: 8, left: treef4, right: {value: 5, left: treef3, right: treef2}}}}, right: {value: 5, left: {value: 4, left: {value: 2, left: null, right: null}, right: {value: 3, left: null, right: null}}, right: {value: 5, left: {value: 3, left: {value: 6, left: null, right: null}, right: null}, right: {value: 2, left: null, right: null}}}};
        expect(similarTreescheck(result,outputtree)).toEqual(true);
    });
    it("Test Case 7", () => {
        let inputtree  = {value: 2, left: {value: 3, left: {value: 5, left: {value: 3, left: null, right: null}, right: {value: 4, left: null, right: null}}, right: {value: 2, left: {value: 6, left: {value: 3, left: null, right: null}, right: null}, right: {value: 7, left: null, right: {value: 4, left: null, right: null}}}}, right: {value: 4, left: {value: 3, left: {value: 1, left: null, right: null}, right: {value: 2, left: null, right: null}}, right: {value: 4, left: {value: 2, left: {value: 5, left: null, right: null}, right: null}, right: {value: 1, left: null, right: null}}}};
        let result = functors([x => x+1, x => x+2, x => x+3, x => x+4, x => x+5 , x => x+6, x => x+6, x => x+5, x => x+4, x => x+3, x => x+2,   x => x+2, x => x+3, x => x+4, x => x+5 , x => x+6, x => x+6, x => x+5, x => x+4, x => x+3], inputtree);
        let treef2 = {value: 4, left: {value: 5, left: {value: 7, left: {value: 5, left: null, right: null}, right: {value: 6, left: null, right: null}}, right: {value: 4, left: {value: 8, left: {value: 5, left: null, right: null}, right: null}, right: {value: 9, left: null, right: {value: 6, left: null, right: null}}}}, right: {value: 6, left: {value: 5, left: {value: 3, left: null, right: null}, right: {value: 4, left: null, right: null}}, right: {value: 6, left: {value: 4, left: {value: 7, left: null, right: null}, right: null}, right: {value: 3, left: null, right: null}}}};
        let treef3 = {value: 5, left: {value: 6, left: {value: 8, left: {value: 6, left: null, right: null}, right: {value: 7, left: null, right: null}}, right: {value: 5, left: {value: 9, left: {value: 6, left: null, right: null}, right: null}, right: {value: 10, left: null, right: {value: 7, left: null, right: null}}}}, right: {value: 7, left: {value: 6, left: {value: 4, left: null, right: null}, right: {value: 5, left: null, right: null}}, right: {value: 7, left: {value: 5, left: {value: 8, left: null, right: null}, right: null}, right: {value: 4, left: null, right: null}}}};
        let treef4 = {value: 6, left: {value: 7, left: {value: 9, left: {value: 7, left: null, right: null}, right: {value: 8, left: null, right: null}}, right: {value: 6, left: {value: 10, left: {value: 7, left: null, right: null}, right: null}, right: {value: 11, left: null, right: {value: 8, left: null, right: null}}}}, right: {value: 8, left: {value: 7, left: {value: 5, left: null, right: null}, right: {value: 6, left: null, right: null}}, right: {value: 8, left: {value: 6, left: {value: 9, left: null, right: null}, right: null}, right: {value: 5, left: null, right: null}}}};
        let treef5 = {value: 7, left: {value: 8, left: {value: 10, left: {value: 8, left: null, right: null}, right: {value: 9, left: null, right: null}}, right: {value: 7, left: {value: 11, left: {value: 8, left: null, right: null}, right: null}, right: {value: 12, left: null, right: {value: 9, left: null, right: null}}}}, right: {value: 9, left: {value: 8, left: {value: 6, left: null, right: null}, right: {value: 7, left: null, right: null}}, right: {value: 9, left: {value: 7, left: {value: 10, left: null, right: null}, right: null}, right: {value: 6, left: null, right: null}}}};
        let treef6 = {value: 8, left: {value: 9, left: {value: 11, left: {value: 9, left: null, right: null}, right: {value: 10, left: null, right: null}}, right: {value: 8, left: {value: 12, left: {value: 9, left: null, right: null}, right: null}, right: {value: 13, left: null, right: {value: 10, left: null, right: null}}}}, right: {value: 10, left: {value: 9, left: {value: 7, left: null, right: null}, right: {value: 8, left: null, right: null}}, right: {value: 10, left: {value: 8, left: {value: 11, left: null, right: null}, right: null}, right: {value: 7, left: null, right: null}}}};
        let outputtree = {value: 3, left: {value: 4, left: {value: 6, left: {value: 4, left: treef2, right: treef3}, right: {value: 5, left: treef4, right: treef5}}, right: {value: 3, left: {value: 7, left: {value: 4, left: treef6, right: treef6}, right: treef5}, right: {value: 8, left: treef4, right: {value: 5, left: treef3, right: treef2}}}}, right: {value: 5, left: {value: 4, left: {value: 2, left: treef2, right: treef3}, right: {value: 3, left: treef4, right: treef5}}, right: {value: 5, left: {value: 3, left: {value: 6, left: treef6, right: treef6}, right: treef5}, right: {value: 2, left: treef4, right: treef3}}}};
        expect(similarTreescheck(result,outputtree)).toEqual(true);
    }); 
});