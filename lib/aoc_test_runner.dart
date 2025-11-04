library;

import 'package:test/test.dart';
import 'package:aoc_test_runner/src/test_case.dart';

export 'src/test_case.dart';

void aocTestRunner(Function(String) usersFunctionUnderTest, String testCaseContent) {
  final testCase = TestCase.fromString(testCaseContent);
  final actual = usersFunctionUnderTest(testCase.input);
  expect(
    actual,
    equals(testCase.expected),
    reason: "Test '${testCase.title}' failed.",
  );
}
