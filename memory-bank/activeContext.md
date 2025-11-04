# Active Context

## Current Focus

Core logic is implemented with robust error handling for malformed input. The next step is to expand test coverage with more complex test cases and improve failure messages to show actual vs expected values.

## Recent Insights

### Key Discoveries
- **Target Users**: TDD practitioners who already value testing, not skeptics who need convincing
- **Core Value**: Reducing friction to start testing when puzzles become complex
- **Competitive Context**: Tool must feel like competitive advantage, not overhead
- **Personal Project**: Focused on personal growth and learning, not market expansion
- **Collaboration Mode**: Stefan learns Dart hands-on while I provide guidance
- **API Design**: Simplicity for the end-user (passing a raw string) is preferable to architectural purity (requiring a pre-parsed object), as it minimizes friction.
- **Naming Clarity**: Using descriptive names like `usersFunctionUnderTest` is crucial for a self-documenting API, even if they are longer.

### User Psychology
- Developers view testing as "waste of time" in competitive scenarios
- Hesitation to add tests comes from fear of losing momentum
- Success requires demonstrating that TDD actually makes them faster
- Minimal footprint is crucial for adoption

## Next Steps

1.  **Expand Test Coverage**: Add more complex test cases to ensure robustness.
2.  **Improve Failure Messages**: Add actual vs. expected values to the failure reason for even better feedback.

## Recent Success

### Completed TDD Cycle 4: Error Handling for Malformed Input
- ✅ Created a failing test for malformed test case input.
- ✅ Added FormatException validation in `TestCase.fromString` to check format before parsing.
- ✅ All tests are green with robust error handling.
- ✅ Test runner now provides clear error messages for invalid input format.

### Completed TDD Cycle 3: Clear Failure Messages
- ✅ Created a failing test to enforce the test case title in the failure message.
- ✅ Used the `reason` parameter in `expect` to provide a custom failure message.
- ✅ All tests are green with improved error feedback.

### Completed TDD Cycle 2: Core Runner Logic
- ✅ Created a failing test for an incorrect solution.
- ✅ Implemented the core logic: parsing, execution, and assertion.
- ✅ Both passing and failing tests now work as expected.
- ✅ All tests are green.

### Completed Refactoring: TestCase Parsing
- ✅ Extracted parsing logic to `TestCase.fromString` for better isolation.
- ✅ Updated file-based tests to use in-memory strings, removing file system dependency.
- ✅ Confirmed all tests pass after refactoring.

### Completed TDD Cycle 1: aocTestRunner Skeleton
- ✅ Created a failing test for the `aocTestRunner` function.
- ✅ Implemented the minimal empty function to get the test to pass.
- ✅ Established the API signature for the runner.
- ✅ All tests passing with the skeleton implementation.
- ✅ Committed working increment.

### Completed TDD Cycle 2: File Loading
- ✅ Added `input` field to TestCase class
- ✅ Implemented `TestCase.fromFile()` method with file I/O
- ✅ Fixed file parsing to preserve exact whitespace (AOC input fidelity)
- ✅ Added comprehensive tests for file loading and whitespace preservation
- ✅ All tests passing with robust file parsing

### Key Learning Moments
- **Dart Constructors**: Named parameters with `required` keyword
- **Factory Constructors**: Alternative constructors that can return different instances
- **Type Safety**: YAML parser auto-converts "42" to int, requiring `.toString()`
- **TDD Flow**: Red → Green → Refactor cycle working perfectly
- **File Parsing**: Split on `---\n` for clean YAML/input separation
- **Whitespace Preservation**: Critical for AOC input fidelity - no trimming of input data
- **Dynamic Types**: Dart `dynamic` vs C# `dynamic` similarities and differences

## Active Decisions

- **Scope**: Focus on AOC puzzles specifically, not general algorithmic problems
- **Positioning**: Compete with Approval Testing by being more specialized
- **Validation**: Use time-based comparison with classic TDD approach
- **Target**: Existing TDD practitioners, not testing skeptics
- **Development Approach**: Strict TDD for the test runner itself
- **Collaboration**: Mob programming with Stefan as typist, me as navigator

## Important Patterns

- **Structured Test Files**: YAML header + raw input format
- **Minimal Setup**: Copy-paste input file, implement algorithm, run test
- **TDD Workflow**: Red → Green → Refactor cycle
- **Competitive Advantage**: Speed through systematic testing approach
- **Mob Programming**: Stefan types, I navigate and explain Dart concepts

## Effective Collaboration Patterns

### Session Structure
- **One Step at a Time**: Focus on single immediate next step
- **Explain Concepts**: When Stefan asks questions, provide detailed explanations with C# comparisons
- **Learning Focus**: Use errors as teaching moments (type casting, Dart syntax)
- **Progress Validation**: Regular test runs to confirm working state
- **Navigator Role**: Stay in navigator role - suggest, explain, guide - Stefan executes all code changes
- **Code Review**: Always check Stefan's implementation against suggestions to catch deviations

### Technical Insights
- **Dart Create**: Use `dart create --template=package .` for project setup
- **Template Cleanup**: Remove generated template files, restore custom README/.gitignore
- **Type Handling**: YAML parser converts numbers to int, use `.toString()` for String conversion
- **Factory Constructors**: Perfect for complex object creation with named parameters
- **File Format**: Use `---\n` separator for clean YAML/input splitting
- **AOC Input Fidelity**: Preserve exact whitespace - AOC inputs typically have no trailing newlines
- **Testing Strategy**: In-memory testing preferred over file system for unit tests

## Session Learnings

### Important Navigation Rules
- **Navigator Role**: Stay in navigator role - suggest, explain, guide - Stefan executes all code changes
- **Code Review**: Always check Stefan's implementation against suggestions to catch deviations
- **One Step Focus**: Present only the immediate next step to maintain focus
- **Question Encouragement**: Welcome questions about code and concepts
- **Error as Learning**: Use test failures and errors as teaching moments

### Session Connection Strategy
- **Memory Bank Updates**: Update memory bank at end of each session
- **Status Capture**: Document current status, next actions, and direction
- **Learning Preservation**: Capture important navigation rules and technical insights
- **Session Continuity**: Next session starts by reading memory bank for context

### Git Commit Strategy
- **Header Focus**: Commit message header should focus on code changes only
- **Memory Bank in Body**: Memory bank updates can be mentioned in commit body if they provide important additional value
- **Development Work**: Memory bank updates are considered part of development work, not separate documentation
