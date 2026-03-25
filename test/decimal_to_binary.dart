import 'package:test/test.dart';
import '../decimal_to_binary/decimal_to_binary.dart';

void main() {
  group('decimalToBinary', () {
    test('converts 0 to binary', () {
      expect(decimalToBinary(0), '0');
    });

    test('converts 1 to binary', () {
      expect(decimalToBinary(1), '1');
    });

    test('converts 2 to binary', () {
      expect(decimalToBinary(2), '10');
    });

    test('converts 5 to binary', () {
      expect(decimalToBinary(5), '101');
    });

    test('converts 10 to binary', () {
      expect(decimalToBinary(10), '1010');
    });

    test('converts 15 to binary', () {
      expect(decimalToBinary(15), '1111');
    });

    test('converts 255 to binary', () {
      expect(decimalToBinary(255), '11111111');
    });

    test('converts 256 to binary', () {
      expect(decimalToBinary(256), '100000000');
    });
  });
}
