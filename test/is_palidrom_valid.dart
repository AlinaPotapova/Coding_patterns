import 'package:test/test.dart';
import '../two_pointers/is_palidrom_valid.dart';

void main() {
  group('isPalindromValid', () {
    test('simple palindrome', () {
      expect(isPalindromValid('racecar'), true);
    });

    test('even length palindrome', () {
      expect(isPalindromValid('abba'), true);
    });

    test('not a palindrome', () {
      expect(isPalindromValid('hello'), false);
    });

    test('empty string is a palindrome', () {
      expect(isPalindromValid(''), true);
    });

    test('single character is a palindrome', () {
      expect(isPalindromValid('a'), true);
    });

    test('only non-alphanumeric characters', () {
      expect(isPalindromValid('.,!?'), true);
    });

    test('palindrome with numbers', () {
      expect(isPalindromValid('12321'), true);
    });

    test('mixed alphanumeric palindrome', () {
      expect(isPalindromValid('1a2a1'), true);
    });

    test('non-palindrome with punctuation', () {
      expect(isPalindromValid('race a car'), false);
    });

    test('long alphanumeric palindrome', () {
      expect(isPalindromValid('amanaplanacanalpanama'), true);
    });
  });
}
