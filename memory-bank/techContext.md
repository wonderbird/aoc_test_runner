# Technical Context

## Technologies Used

### Core Platform
- **Dart**: Primary programming language
- **Dart Test**: Native testing framework
- **YAML**: Test case specification format

### Development Setup
- **Dart SDK**: Required for development and execution
- **Test Runner**: `dart test --reporter=expanded` for execution
- **File System**: Test cases stored as individual files

## Technical Constraints

### Performance Requirements
- **Fast Execution**: Tests must run quickly for competitive programming
- **Minimal Overhead**: Framework should not slow down development
- **Quick Feedback**: Test results must be immediate

### Compatibility
- **Dart Version**: Compatible with current Dart SDK
- **Cross-Platform**: Works on Windows, macOS, Linux
- **IDE Integration**: Compatible with Dart development tools

## Dependencies

### Core Dependencies
- **Dart SDK**: Runtime and development
- **YAML Parser**: For parsing test case headers
- **File I/O**: For reading test case files

### Optional Dependencies
- **IDE Plugins**: For better development experience
- **Test Runners**: For continuous integration

## Tool Usage Patterns

### Development Workflow
1. Create test case file with YAML header
2. Write solution function
3. Run `dart test` to execute tests
4. Iterate based on test results

### TDD Workflow for Test Runner
1. Write failing test for test runner functionality
2. Implement minimal code to pass test
3. Refactor while keeping tests green
4. Commit working increment
5. Repeat for next feature

### File Organization
- **Test Cases**: Individual files in test_cases/ directory
- **Test Driver**: Single Dart test file per puzzle
- **Examples**: Reference implementations in examples/ folder
- **Library Code**: `lib/aoc_test_runner.dart` and `lib/src/` modules
- **Test Runner Tests**: `test/` directory for testing the test runner itself

### Mob Programming Commands
- **Stefan executes**: All `dart` commands, file creation, git operations
- **AI suggests**: Commands to run, code to write, concepts to explain
- **Collaborative**: Review results together, discuss next steps

### Proven Development Workflow
1. **Project Setup**: `dart create --template=package .` with `--force` flag
2. **Template Cleanup**: Remove generated files, restore custom README/.gitignore
3. **Dependency Management**: Add yaml dependency, run `dart pub get`
4. **TDD Cycle**: Write failing test → implement minimal code → fix errors → commit
5. **Learning Integration**: Explain concepts when questions arise

### Key Technical Decisions Made
- **YAML Parsing**: Use `yaml: ^3.1.3` for test case header parsing
- **Type Handling**: Use `.toString()` for YAML int to String conversion
- **Factory Constructor**: Use for complex TestCase creation from YAML
- **Named Parameters**: Use for clear, self-documenting API
- **Test Structure**: Separate test files for each major component

## Technical Decisions

### Why Dart?
- **Native Testing**: Built-in test framework
- **Performance**: Fast execution for competitive programming
- **Simplicity**: Minimal setup required
- **Cross-Platform**: Consistent behavior across platforms

### Why YAML?
- **Human Readable**: Easy to edit test cases
- **Structured**: Clear separation of metadata and data
- **Minimal**: No complex configuration required
- **Standard**: Widely supported format
