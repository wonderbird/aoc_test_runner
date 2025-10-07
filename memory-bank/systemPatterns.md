# System Patterns

## Architecture Overview

The aoc_test_runner follows a simple, focused architecture designed for minimal setup and maximum developer productivity.

## Key Technical Decisions

### Test Case Format
- **YAML Header**: Contains metadata (title, expected output)
- **Raw Input**: Unprocessed puzzle input data
- **Separation**: Clear boundary between test specification and test data

### Dart Integration
- **Unit Test Framework**: Built on Dart's native testing capabilities
- **Test Driver Pattern**: Reusable test driver for different puzzles
- **File-based Tests**: Each test case is a separate file for easy management

## Component Relationships

```
Test Case File (YAML + Input)
    ↓
Test Driver (Dart Unit Test)
    ↓
Test Runner (Dart Test Framework)
    ↓
Solution Function (User Implementation)
```

## Critical Implementation Paths

### Test Execution Flow
1. Parse YAML header from test case file
2. Extract expected output and input data
3. Call user's solution function with input
4. Compare actual output with expected output
5. Report pass/fail with clear feedback

### TDD Workflow Integration
1. Create minimal test case file
2. Run test (expects to fail initially)
3. Implement minimal solution
4. Refactor and add more test cases
5. Iterate until solution is complete

## Design Patterns

### Template Method Pattern
- Test driver provides common structure
- User implements specific solution function
- Framework handles common testing logic

### Strategy Pattern
- Different solution functions for different puzzles
- Common test execution strategy
- Pluggable algorithm implementations

## Key Constraints

- **Minimal Dependencies**: Keep external dependencies to absolute minimum
- **Fast Execution**: Tests must run quickly for competitive programming context
- **Clear Feedback**: Test results must be immediately actionable
- **Easy Setup**: New test cases require minimal configuration

## Development Patterns

### TDD Approach
- **Red-Green-Refactor**: Write failing test, implement minimal code, refactor
- **Test-First**: All functionality must have tests written first
- **Incremental**: Small, working increments with frequent commits
- **Self-Testing**: The test runner itself must be thoroughly tested

### Mob Programming
- **Stefan (Typist)**: Creates all code and executes commands
- **Navigator (AI)**: Explains what to do, why, and guides through TDD cycles
- **Learning Focus**: Explains Dart concepts as encountered
- **Pair Programming**: Collaborative development with clear roles
