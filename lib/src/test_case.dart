import 'package:yaml/yaml.dart';

class TestCase {
  final String title;
  final String expected;

  TestCase({required this.title, required this.expected});

  factory TestCase.fromYaml(String yamlString) {
    final yaml = loadYaml(yamlString);
    return TestCase(
      title: yaml['title'] as String,
      expected: yaml['expected'].toString(),
    );
  }
}
