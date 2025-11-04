import 'package:test/test.dart';
import 'package:aoc_test_runner/src/test_case.dart';

import 'dart:io';

void main() {
  group('TestCase', () {
    test('should parse YAML header with title and expected', () {
      const yamlHeader = 'title: Test Case\nexpected: 42';

      final testCase = TestCase.fromYaml(yamlHeader);

      expect(testCase.title, equals('Test Case'));
      expect(testCase.expected, equals('42'));
    });

    test('should load test case file and extract input content', () {
      final testCase = TestCase.fromFile('test/test_cases/sample_test.yaml');

      expect(testCase.title, equals('Sample Test'));
      expect(testCase.expected, equals('42'));
      expect(testCase.input, equals('1\n2\n3'));
    });

    test('should preserve exact input formatting including whitespace', () {
      final testFile = File('test/test_cases/whitespace_test.yaml');
      final content = '''---
title: Whitespace Test
expected: 42
---
  leading whitespace
middle line
  
  trailing space
''';
      final testCase = TestCase.fromString(content);

      expect(testCase.input, equals('  leading whitespace\nmiddle line\n  \n  trailing space\n'));
    });

    test('should throw FormatException when content is malformed', () {
      const content = 'not a valid test case format';

      expect(() => TestCase.fromString(content), throwsA(isA<FormatException>()));
    });
  });
}
