import 'package:test/test.dart';
import '../two_pointers/move_zeroes.dart';

void main() {
  group('moveZeroes', () {
    test('moves zeros to the end with mixed values', () {
      final result = moveZeroes([1, 2, 0, 3, 4, 0, 5]);
      expect(result, [1, 2, 3, 4, 5, 0, 0]);
    });

    test('handles array with no zeros', () {
      final result = moveZeroes([1, 2, 3, 4, 5]);
      print(result);
      expect(result, [1, 2, 3, 4, 5]);
    });

    test('handles array with all zeros', () {
      final result = moveZeroes([0, 0, 0, 0]);
      expect(result, [0, 0, 0, 0]);
    });

    test('handles zeros at the beginning', () {
      final result = moveZeroes([0, 0, 1, 2, 3]);
      expect(result, [1, 2, 3, 0, 0]);
    });

    test('handles single zero', () {
      final result = moveZeroes([0]);
      expect(result, [0]);
    });

    test('handles single non-zero element', () {
      final result = moveZeroes([5]);
      expect(result, [5]);
    });

    test('handles array with single zero at end', () {
      final result = moveZeroes([1, 2, 3, 0]);
      expect(result, [1, 2, 3, 0]);
    });
  });
}
