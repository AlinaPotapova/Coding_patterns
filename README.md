# Coding Patterns

A Dart project implementing common coding patterns and algorithms with comprehensive test coverage.

## Project Structure

```
coding_pattern/
├── decimal_to_binary/          # Decimal to binary conversion
├── prime_number/               # Prime number algorithms
│   ├── is_number_prime.dart
│   ├── is_number_has_3_divisors.dart
│   └── next_prime.dart
├── two_pointers/               # Two pointers technique
│   └── move_zeroes.dart
├── test/                       # Test suite
│   ├── decimal_to_binary.dart
│   ├── is_number_prime.dart
│   ├── is_number_has_3_divisors.dart
│   ├── move_zeroes.dart
│   └── next_prime.dart
└── pubspec.yaml
```

## Algorithms

### Decimal to Binary
Convert decimal numbers to binary representation.
- **File**: `decimal_to_binary/decimal_to_binary.dart`
- **Time Complexity**: O(log n)
- **Space Complexity**: O(log n)

### Prime Number Algorithms

#### isPrime
Check if a number is prime.
- **File**: `prime_number/is_number_prime.dart`
- **Time Complexity**: O(√n)
- **Space Complexity**: O(1)

#### is3Divisors
Find all numbers with exactly 3 divisors (squares of primes) up to n.
- **File**: `prime_number/is_number_has_3_divisors.dart`
- **Time Complexity**: O(n^(3/4))
- **Space Complexity**: O(√n)

#### nextPrime
Find the next prime number after a given number.
- **File**: `prime_number/next_prime.dart`
- **Time Complexity**: O(k × √n) where k is the prime gap
- **Space Complexity**: O(1)

### Two Pointers

#### moveZeroes
Move all zeros to the end of an array while preserving the order of non-zero elements.
- **File**: `two_pointers/move_zeroes.dart`
- **Time Complexity**: O(n)
- **Space Complexity**: O(1)

## Running Tests

Run all tests:
```bash
dart test
```

Run specific test file:
```bash
dart test test/decimal_to_binary.dart
dart test test/is_number_prime.dart
dart test test/is_number_has_3_divisors.dart
dart test test/next_prime.dart
dart test test/move_zeroes.dart
```

## Dependencies

- **test**: ^1.0.0 - Testing framework

## Setup

1. Clone the repository
2. Install dependencies:
   ```bash
   pub get
   ```
3. Run tests:
   ```bash
   dart test
   ```

## Test Coverage

Each algorithm includes comprehensive test cases covering:
- Edge cases (empty, single element, boundary values)
- Normal cases (typical inputs)
- Large inputs (performance validation)

## Notes

- All implementations include corresponding test files
- Tests use the Dart `test` package with `expect` assertions
- Time and space complexities are documented in test files where applicable
