String decimalToBinary(int dec) {
  if (dec == 0) return "0";

  List<int> binary = [];

  while (dec > 0) {
    binary.add(dec % 2);
    dec = dec ~/ 2;
  }

  return binary.reversed.join();
}
