# Advent of Code Test Runner for the Dart Programming Language

Run [Advent of Code](https://adventofcode.com) tests based on structured test case files (test specifications).

By the way, this test runner is not constrained to Advent of Code puzzles.

## Overview

Every Advent of Code puzzle comes with a personal input file. Processing this file results in your personal puzzle answer.

Thus, every solution consists of two static parts:

1. Parse the input file into a list of strings, each representing a line.
2. Enter the solution - a string - into the Advent of Code website.

These two parts are handled by the Advent of Code Test Runner.

What is left for you is:

1. Copy paste your personal input file into a structured test case file, for which the format is described below.
2. Implement the algorithm solving the puzzle.
3. Run the test for your personal input file as described below.

When you run the test for your personal input file for the first time, it will fail, because you cannot know the expected puzzle solution. The failing test will tell you the actual puzzle solution so that you transfer it to the Advent of Code website. If it is correct, you can update your structured test file.

The advantage of using the Advent of Code Test Runner is that you can create small test specifications so that you can develop your puzzle solution in small steps with TDD.

## Format of the Structured Test Case File (Test Specification)

Each test case file consists of a YAML header and the input to the algorithm. The YAML header starts and ends with `---`. Example:

```yaml
---
title: 2 numbers with sum 2020
expected: 2019
---
1
2019
```

This is a minimal input file for [Advent of Code 2020, day 1, part 1](https://adventofcode.com/2020/day/1).

The YAML header must provide these properties:

| Name | Type | Description |
| --- | --- | --- |
| title | string | Short description of the test case |
| expected | string | Expected output of the algorithm |

The header is followed by the raw input to the algorithm similar to the personal input file you can download from the Advent of Code puzzle website.

## How to Run a Set of Test Cases

Create a Dart unit test file to set up and run the Advent of Code Test Runner.

A complete example is given in the [examples/](./examples) folder. Instead of showing the solution for an Advent of Code puzzle, the example shows how to implement the [FizzBuzz Kata](https://codingdojo.org/kata/FizzBuzz/) using the Advent of Code Test Runner.

1. Copy, paste and adapt the unit test driver [examples/fizzbuzz_test.dart](./examples/fizzbuzz_test.dart). Make sure your test calls the correct solution function. In our case it calls the function `fizzBuzz`.
2. Set up the first test file for a minimal step - here: [examples/test_cases/1_is_1.txt](examples/test_cases/1_is_1.txt)
3. Execute the tests: `dart test --reporter=expanded`. The new test should be red.
4. Implement the minimal code to turn the test green.
5. Refactor.
6. Create the test file for the next minimal step - here: [examples/test_cases/2_is_2.txt](examples/test_cases/2_is_2.txt)
7. Repeat steps 3 - 6 until your algorithm produces the correct solution for your personal Advent of Code input file - here: [examples/test_cases/fizzbuzz.txt]

Have fun!

## References

Note that the approach implemented in this project is similar to [Approval Testing](https://approvaltests.com) and to the way the [cloc](https://github.com/AlDanial/cloc) authors test their code.

Thanks for the inspiration, [@AlDanial](https://github.com/aldanial), [@EmilyBache](https://github.com/emilybache), [@isidore](https://github.com/isidore) ❤️.

Thanks to Eric Wastl for making [Advent of Code](https://adventofcode.com) ❤️.