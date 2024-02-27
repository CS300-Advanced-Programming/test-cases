# Haskell

### Test Cases for Assignment 1.1, 1.2 & Exam 1

How to run the test cases:
1. Place your code in the same directory as the test cases
2. Add the following  statement to the top of your code:
```module Code where```
3. Remove the main function from your code
4. Run the test cases using the following command:
```runhaskell [test-filename].hs```
where test-filename is the name of the test file you want to run.
For example, to run the test cases for Target Sum for Assignment 1.1, run the following command:
```runhaskell testsTargetSum.hs```

> Note: To run the test cases, you need to have HUnit installed on your machine. To do so, run the following command:
```cabal install HUnit```