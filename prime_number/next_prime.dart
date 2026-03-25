//Program to find the next prime number
import 'dart:math';

int nextPrime(int number) {
  if (number <= 1) return 2;
  bool isFound = false;
  while (!isFound) {
    if (isPrime(number)) {
      isFound = true;
      return number;
    } else {
      number += 1;
    }
  }
  return 0;
  /*while (true) {
    if (isPrime(number)) {
      return number;
    } else {
      number++;
    }
  }*/
}

bool isPrime(int number) {
  final limit = sqrt(number).floor();
  if (number < 2) return false;
  for (int i = 2; i <= limit; i++) {
    if (number % i == 0) return false;
  }
  return true;
}
