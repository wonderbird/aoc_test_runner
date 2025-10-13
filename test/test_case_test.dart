import 'package:test/test.dart';
import 'package:aoc_test_runner/src/test_case.dart';

import 'dart:io';

void main() {
  group('TestCase', () {
    test('should parse content with YAML header and input', () {
      const content = '---\ntitle: Test Case\nexpected: 42\n---\nline1\nline2';

      final testCase = TestCase.fromString(content);

      expect(testCase.title, equals('Test Case'));
      expect(testCase.expected, equals('42'));
      expect(testCase.input, equals('line1\nline2'));
    });

    test('should preserve exact input formatting including whitespace', () {
      const content = '''---
title: Whitespace Test
expected: 42
---
  leading whitespace
middle line
  
  trailing space
''';

      final testCase = TestCase.fromString(content);

      expect(
        testCase.input,
        equals('  leading whitespace\nmiddle line\n  \n  trailing space\n'),
      );
    });
  });
}
