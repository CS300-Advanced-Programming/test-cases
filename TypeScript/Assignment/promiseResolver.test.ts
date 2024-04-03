import {promiseResolver} from '../src/promiseResolver'

let array1 = [["testing@outlook.com", "testing@outlook.com", "testing@outlook.com", "abc@outlook.com"], ["123@outlook.com", "qwerty12@gmail.com","qwerty12@gmail.com", "qwerty12@gmail.com"], ["mnop786@gmail.com", "mnop786@gmail.com", "anyonestillusethis@hotmail.com", "abc@outlook.com"]]

let array2 = [["animal123@gmail.com", "animal123@gmail.com", "animal123@gmail.com", "animal123@gmail.com", "animal123@gmail.com"], ["animal123@gmail.com", "a@gmail.com", "a@gmail.com", "a@gmail.com", "animal123@gmail.com"], ["testing@outlook.com", "a@gmail.com", "testing@outlook.com", "a@gmail.com", "testing@outlook.com"], ["animal123@gmail.com", "animal123@gmail.com", "animal123@gmail.com", "animal123@gmail.com", "animal123@gmail.com"]]

let array3 = [["xyz121@gmail.com", "qwerty12@gmail.com", "xyz121@gmail.com", "xyz121@gmail.com", "xyz121@gmail.com"], ["xyz121@gmail.com", "qwerty12@gmail.com", "xyz121@gmail.com", "xyz121@gmail.com", "xyz121@gmail.com"], ["a@gmail.com", "mnop786@gmail.com", "a@gmail.com", "a@gmail.com", "mnop786@gmail.com"], ["bilal@outlook.com","bilal@outlook.com","bilal@outlook.com","bilal@outlook.com","bilal@outlook.com"]]

let array4 = [["123@outlook.com","123@outlook.com","123@outlook.com","123@outlook.com","123@outlook.com","123@outlook.com"], ["123@outlook.com", "12_@outlook.com", "12_@outlook.com", "12_@outlook.com", "12_@outlook.com", "abc@outlook.com"], ["abc@outlook.com", "12_@outlook.com", "abc@outlook.com", "12_@outlook.com","12_@outlook.com", "abc@outlook.com"], ["abc@outlook.com", "12_@outlook.com","12_@outlook.com","12_@outlook.com","12_@outlook.com", "abc@outlook.com"]]

let array5 = [["testing@outlook.com", "testing@outlook.com", "testing@outlook.com", "abc@outlook.com"], ["123@outlook.com", "qwerty12@gmail.com","qwerty12@gmail.com", "testing@outlook.com"], ["mnop786@gmail.com", "mnop786@gmail.com", "qwerty12@gmail.com", "abc@outlook.com"]]

let array6 = [['animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com'], ['animal123@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'xyz@gmail.com'], ['xyz@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com', 'xyz@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com'], ['animal123@gmail.com', 'xyz@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'xyz@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com'], ['xyz@gmail.com', 'xyz@gmail.com', 'xyz@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'xyz@gmail.com', 'xyz@gmail.com'], ['animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'xyz@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com'], ['animal123@gmail.com', 'xyz@gmail.com', 'xyz@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'xyz@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com'], ['animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'xyz@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'xyz@gmail.com'], ['animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'xyz@gmail.com', 'xyz@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com'], ['animal123@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com', 'xyz@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com', 'animal123@gmail.com']]

// let sol1 = [[1,1,1,1], [1,0,0,0], [1,1,0,1]]
let sol2 = [[1,1,1,1,1], [1,0,0,0,1], [1,0,1,0,1], [1,1,1,1,1]]
let sol3 = [[1,0,1,1,1], [1,0,1,1,1], [0,1,0,0,1], [1,1,1,1,1]]
// let sol4 = [[1,1,1,1,1,1], [1,0,0,0,0,1], [1,0,1,0,0,1], [1,0,0,0,0,1]]
// let sol5 = [[1,1,1,1], [1,0,0,1], [1,1,0,1]]
let sol6 =[
    [
      1, 1, 1, 0, 1,
      1, 1, 0, 1, 1
    ],
    [
      1, 0, 1, 0, 1,
      1, 1, 1, 1, 0
    ],
    [
      0, 0, 1, 0, 1,
      0, 0, 1, 0, 1
    ],
    [
      1, 0, 0, 1, 1,
      1, 1, 0, 0, 1
    ],
    [
      0, 0, 0, 0, 1,
      0, 1, 1, 0, 0
    ],
    [
      1, 1, 1, 1, 0,
      0, 1, 1, 1, 1
    ],
    [
      1, 0, 0, 0, 1,
      1, 1, 0, 0, 1
    ],
    [
      1, 1, 1, 0, 0,
      1, 1, 1, 1, 0
    ],
    [
      1, 1, 1, 1, 1,
      0, 0, 0, 1, 1
    ],
    [
      1, 0, 1, 0, 1,
      1, 1, 1, 1, 1
    ]
  ]


const evaluatePath = (maze: number[][], path: number[][], start: number[], goal: number[]) => {
    const [startX, startY] = path.shift()!;

    const [endX, endY] = path[path.length - 1];

    if (start[0] !== startX || start[1] !== startY) return false;

    if (endX !== goal[0] || endY !== goal[1]) return false;

    let [prevX, prevY] = [startX, startY];

    for (let [x, y] of path) {

        if (maze[x][y] === 0) return false;

        if (x > maze.length - 1 || y > maze[0].length - 1) return false;
        if (x < 0 || y < 0) return false;

        if (Math.abs(x - prevX) + Math.abs(y - prevY) !== 1) return false;

        prevX = x;
        prevY = y;
    }

    return true;
};


describe("promiseResolver", () => {

    test("Test 1", async () => {
        let result = await promiseResolver(array1, [0,0], [2,3])
        expect(result).toEqual([])
    }, 50000)

    test("Test 2", async () => {
        const result = await promiseResolver(array2, [2,2],[0,2]);
        expect(evaluatePath(sol2, result, [2,2], [0,2])).toBe(true);
    }, 60000)

    test("Test 3", async () => {
        const result = await promiseResolver(array3, [0,4],[2,1]);
        expect(evaluatePath(sol3, result, [0,4], [2,1])).toBe(true);
    }, 60000)

    test("Test 4", async () => {
        let result = await promiseResolver(array4, [0,3], [2,2])
        expect(result).toEqual([])
    }, 50000)

    test("Test 5", async () => {
        let result = await promiseResolver(array5, [0,0], [2,2])
        expect(result).toEqual([])
    }, 50000)

    // caching check
    test("Test 6", async () => {
        const result = await promiseResolver(array6, [9,0],[0,9]);
        expect(evaluatePath(sol6, result, [9,0], [0,9])).toBe(true);
    }, 50000)
})