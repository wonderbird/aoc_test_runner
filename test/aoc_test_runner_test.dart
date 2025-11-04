import 'package:test/test.dart';
import 'package:aoc_test_runner/aoc_test_runner.dart';

void main() {
  group('aocTestRunner', () {
    test('should run a test case and pass if solver returns correct result', () {
      final usersFunctionUnderTest = (String input) => 'Correct';
      const testCaseContent = '''---
title: 'Simple Pass'
expected: 'Correct'
---
any input
''';

      aocTestRunner(usersFunctionUnderTest, testCaseContent);
    });

    test('should fail if users function under test returns wrong result', () {
      final usersFunctionUnderTest = (String input) => 'Wrong';
      const testCaseContent = '''---
title: 'Simple Fail'
expected: 'Correct'
---
any input
''';

      expect(
        () => aocTestRunner(usersFunctionUnderTest, testCaseContent), 
        throwsA(isA<TestFailure>()),
      );
    });

    test('failure message should include the title of the test case', () {
      final usersFunctionUnderTest = (String input) => 'Wrong';
      const testCaseContent = '''---
title: 'Title in Error'
expected: 'Correct'
---
any input
''';

      expect(() => aocTestRunner(usersFunctionUnderTest, testCaseContent),
        throwsA(isA<TestFailure>().having((e) => e.message,
          'message',
          contains("Test 'Title in Error' failed."))),
      );
    });
  });
}