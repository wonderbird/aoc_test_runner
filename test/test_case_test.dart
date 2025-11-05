import 'package:test/test.dart';
import 'package:aoc_test_runner/src/test_case.dart';

void main() {
  group('TestCase', () {
    test('should load test case file and extract input content', () {
      final testCase = TestCase.fromFile('test/test_cases/sample_test.yaml');

      expect(testCase.title, equals('Sample Test'));
      expect(testCase.expected, equals('42'));
      expect(testCase.input, equals('1\n2\n3'));
    });

    test('should preserve exact input formatting including whitespace', () {
      final testCase = TestCase.fromString('''---
title: Whitespace Test
expected: 42
---
  leading whitespace
middle line
  
  trailing space
''');

      expect(
        testCase.input,
        equals('  leading whitespace\nmiddle line\n  \n  trailing space\n'),
      );
    });

    test('should throw FormatException when content is malformed', () {
      expect(
        () => TestCase.fromString('not a valid test case format'),
        throwsA(isA<FormatException>()),
      );
    });
  });
}
