import 'package:test/test.dart';
import '../prime_number/is_number_has_3_divisors.dart';

/*
Time Complexity Analysis for is3Divisors(int number):
- Outer loop: iterates from 2 to sqrt(number) → O(√n)
- For each iteration, calls isPrime(i):
  - isPrime iterates from 2 to sqrt(i) → O(√i)
  - For i ≤ √n, sqrt(i) ≤ √√n = n^(1/4)
- Overall: O(√n × √√n) = O(n^(3/4))

Space Complexity: O(π(√n)) where π is the prime counting function
- Returns a list of prime squares ≈ O(√n / ln(√n)) ≈ O(√n)
*/

void main() {
  group('is3Divisors', () {
    test('returns empty list for numbers less than 4', () {
      // O(1) - sqrt(3) ≈ 1.7, outer loop: 0 iterations
      expect(is3Divisors(1), []);
      expect(is3Divisors(2), []);
      expect(is3Divisors(3), []);
    });

    test('returns [4] for number 4', () {
      // O(1) - sqrt(4) = 2, outer loop: 1 iteration (i=2), isPrime(2): O(1)
      expect(is3Divisors(4), [4]);
    });

    test('returns [4, 9] for number 9', () {
      expect(is3Divisors(9), [4, 9]);
    });

    test('returns [4, 9, 25] for number 25', () {
      expect(is3Divisors(25), [4, 9, 25]);
    });

    test('returns [4, 9, 25] for number 26', () {
      expect(is3Divisors(26), [4, 9, 25]);
    });

    test('returns [4, 9, 25, 49] for number 49', () {
      expect(is3Divisors(49), [4, 9, 25, 49]);
    });

    test('returns [4, 9, 25, 49] for number 50', () {
      expect(is3Divisors(50), [4, 9, 25, 49]);
    });

    test('returns [4, 9, 25, 49, 121] for number 121', () {
      expect(is3Divisors(121), [4, 9, 25, 49, 121]);
    });

    test('returns [4, 9, 25, 49, 121, 169] for number 169', () {
      expect(is3Divisors(169), [4, 9, 25, 49, 121, 169]);
    });

    test('returns squares of prime numbers up to the limit', () {
      // O(n^0.75) - sqrt(200) ≈ 14.14, outer loop: 13 iterations (i=2 to 14)
      // For each i, isPrime(i) checks up to sqrt(i), max ~3.7 iterations
      // For number 200, squares of primes up to sqrt(200)≈14.14 are: 4, 9, 25, 49, 121, 169
      final result = is3Divisors(200);
      expect(result, [4, 9, 25, 49, 121, 169]);
    });
  });
}
