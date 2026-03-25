import 'dart:math';

// https://www.youtube.com/watch?v=fPWKWZdPBi8&t=411s

bool isPrime(number) {
  final limit = sqrt(number);
  if (number < 2) return false;
  for (int i = 2; i <= limit; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

bool isPrimeSecondVariant(int n) {
  if (n < 2) return false;

  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }

  return true;
}

bool isPrimeOptimazed(int n) {
  if (n < 2) return false;
  if (n == 2) return true;
  if (n % 2 == 0) return false;
  // only 2 is even in prime numbers
  for (int i = 3; i * i <= n; i += 2) {
    if (n % i == 0) return false;
  }

  return true;
}
