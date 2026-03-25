import 'package:test/test.dart';
import '../prime_number/next_prime.dart';

void main() {
  group('nextPrime', () {
    test('returns 2 for numbers less than or equal to 1', () {
      expect(nextPrime(0), 2);
      expect(nextPrime(1), 2);
      expect(nextPrime(-5), 2);
    });

    test('returns the same number if it is prime', () {
      expect(nextPrime(2), 2);
      expect(nextPrime(3), 3);
      expect(nextPrime(5), 5);
      expect(nextPrime(7), 7);
      expect(nextPrime(11), 11);
    });

    test('returns next prime after non-prime numbers', () {
      expect(nextPrime(4), 5);
      expect(nextPrime(6), 7);
      expect(nextPrime(8), 11);
      expect(nextPrime(9), 11);
      expect(nextPrime(10), 11);
    });

    test('returns next prime for larger numbers', () {
      expect(nextPrime(20), 23);
      expect(nextPrime(25), 29);
      expect(nextPrime(50), 53);
      expect(nextPrime(100), 101);
    });

    test('handles consecutive prime numbers', () {
      expect(nextPrime(13), 13);
      expect(nextPrime(17), 17);
      expect(nextPrime(19), 19);
    });
  });
}
