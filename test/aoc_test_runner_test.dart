import 'package:test/test.dart';
import 'package:aoc_test_runner/aoc_test_runner.dart';

void main() {
  group('aocTestRunner', () {
    test('should run a test case and pass if solver retruns correct result', () {
      final usersFunctionUnderTest = (String input) => 'Correct';
      const testCaseContent = '''---
title: 'Simple Pass'
expected: 'Correct'
---
any input
''';

      aocTestRunner(usersFunctionUnderTest, testCaseContent);
    });
  });
}