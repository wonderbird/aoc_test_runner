import 'package:test/test.dart';
import 'package:aoc_test_runner/src/test_case.dart';

void main() {
  group('TestCase', () {
    test('should parse YAML header with title and expected', () {
      const yamlHeader = 'title: Test Case\nexpected: 42';

      final testCase = TestCase.fromYaml(yamlHeader);

      expect(testCase.title, equals('Test Case'));
      expect(testCase.expected, equals('42'));
    });
  });
}
