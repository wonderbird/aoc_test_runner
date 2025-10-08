# Active Context

## Current Focus

Successfully completed TDD Phase 2: test case file loading and input extraction. Ready to proceed with TDD Phase 3: test execution and output comparison. Using mob programming approach where Stefan is the typist and I am the navigator.

## Recent Insights

### Key Discoveries
- **Target Users**: TDD practitioners who already value testing, not skeptics who need convincing
- **Core Value**: Reducing friction to start testing when puzzles become complex
- **Competitive Context**: Tool must feel like competitive advantage, not overhead
- **Personal Project**: Focused on personal growth and learning, not market expansion
- **Collaboration Mode**: Stefan learns Dart hands-on while I provide guidance

### User Psychology
- Developers view testing as "waste of time" in competitive scenarios
- Hesitation to add tests comes from fear of losing momentum
- Success requires demonstrating that TDD actually makes them faster
- Minimal footprint is crucial for adoption

## Next Steps

1. **Refactoring**: Extract parsing logic to `fromString` method for better test isolation
2. **TDD Phase 3**: Implement test execution and output comparison
3. **Error Handling**: Add clear error messages for failed tests
4. **FizzBuzz Example**: Create complete working example

## Recent Success

### Completed TDD Cycle 1: TestCase Class
- ✅ Created failing test for YAML parsing
- ✅ Implemented minimal TestCase class with factory constructor
- ✅ Fixed type casting issue (YAML int to String conversion)
- ✅ All tests passing with clean, working implementation
- ✅ Committed working increment

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
