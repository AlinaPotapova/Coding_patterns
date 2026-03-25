import 'package:test/test.dart';
import '../prime_number/is_number_prime.dart';

void main() {
  group('isPrime', () {
    test('returns false for numbers less than 2', () {
      expect(isPrime(0), false);
      expect(isPrime(1), false);
      expect(isPrime(-5), false);
    });

    test('returns true for 2', () {
      expect(isPrime(2), true);
    });

    test('returns false for even numbers', () {
      expect(isPrime(4), false);
      expect(isPrime(6), false);
      expect(isPrime(8), false);
      expect(isPrime(10), false);
    });

    test('returns true for small prime numbers', () {
      expect(isPrime(3), true);
      expect(isPrime(5), true);
      expect(isPrime(7), true);
      expect(isPrime(11), true);
      expect(isPrime(13), true);
    });

    test('returns true for larger prime numbers', () {
      expect(isPrime(17), true);
      expect(isPrime(19), true);
      expect(isPrime(23), true);
      expect(isPrime(29), true);
    });

    test('returns false for composite numbers', () {
      expect(isPrime(9), false);
      expect(isPrime(15), false);
      expect(isPrime(21), false);
      expect(isPrime(25), false);
    });
  });
}
