/*Count numbers with exactly 3 divisors
Given a number n, print count of numbers in the range from 1 to n having exactly 3 divisors. */

//A number has exactly 3 divisors if it is the square of a prime number.

/*
  - check all prime number fron 1 to n
  - take a square fron prime number
  */
import 'dart:math';

List<int> is3Divisors(int number) {
  final limit =
      sqrt(number).floor(); //sqrt(n) returns a double. floor rounding down
  List<int> primeNum = [];
  for (int i = 2; i <= limit; i++) {
    if (isPrime(i)) primeNum.add(i * i);
  }
  return primeNum;
}

bool isPrime(number) {
  final limit = sqrt(number);
  if (number < 2) return false;
  for (int i = 2; i <= limit; i++) {
    if (number % i == 0) return false;
  }
  return true;
}
