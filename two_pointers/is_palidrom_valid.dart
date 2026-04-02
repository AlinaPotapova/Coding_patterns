import 'package:string_validator/string_validator.dart';

bool isPalindromValid(String str) {
  List<String> splittedString = str.trim().split('');
  if (str.isEmpty) return true;
  int leftPointer = 0;
  int rightPointer = splittedString.length - 1;
  while (leftPointer < rightPointer) {
    if (!splittedString[leftPointer].isAlphanumeric) {
      leftPointer++;
    } else if (!splittedString[rightPointer].isAlphanumeric) {
      rightPointer--;
    } else if (splittedString[leftPointer] == splittedString[rightPointer]) {
      leftPointer++;
      rightPointer--;
    } else {
      return false;
    }
  }

  return true;
}
// Check if sting is empty - palindrom, if only one single character - true,
