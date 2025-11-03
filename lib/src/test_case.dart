import 'package:yaml/yaml.dart';
import 'dart:io';

class TestCase {
  final String title;
  final String expected;
  final String input;

  TestCase({required this.title, required this.expected, required this.input});

  factory TestCase.fromYaml(String yamlString) {
    final yaml = loadYaml(yamlString);
    return TestCase(
      title: yaml['title'] as String,
      expected: yaml['expected'].toString(),
      input: '',
    );
  }

  factory TestCase.fromFile(String filePath) {
    final file = File(filePath);
    final content = file.readAsStringSync();
    return TestCase.fromString(content);
  }

  factory TestCase.fromString(String content) {
    final parts = content.split('---\n');
    final yamlHeader = parts[1].trim();
    final input = parts[2];

    final yaml = loadYaml(yamlHeader);

    return TestCase(
      title: yaml['title'] as String,
      expected: yaml['expected'].toString(),
      input: input,
    );
  }
}
