import 'package:test/test.dart';
import '../two_pointers/triplet_sum.dart';

void main() {
  group('tripletSum', () {
    test('returns empty list for empty array', () {
      expect(tripletSum([]), isEmpty);
    });

    test('returns empty list for less than 3 elements', () {
      expect(tripletSum([1, 2]), isEmpty);
    });

    test('returns empty list when no zero-sum triplet exists', () {
      expect(tripletSum([1, 2, 3, 4, 5]), isEmpty);
    });

    test('finds a single triplet that sums to zero', () {
      final result = tripletSum([-3, 0, 3]);
      print(result);
      expect(result, [
        [-3, 0, 3]
      ]);
    });

    test('finds multiple triplets that sum to zero', () {
      final result = tripletSum([-1, 0, 1, 2, -1, -4]);
      expect(result.length, 2);
      expect(
          result,
          containsAll([
            [-1, -1, 2],
            [-1, 0, 1]
          ]));
    });

    test('handles all zeros — one triplet [0, 0, 0]', () {
      final result = tripletSum([0, 0, 0]);
      expect(result, [
        [0, 0, 0]
      ]);
    });

    /*test('no duplicate triplets returned', () {
      final result = tripletSum([-2, 0, 2, -2, 0, 2]);
      expect(result.length, 1);
      expect(result, [
        [-2, 0, 2]
      ]);
    });*/

    test('returns empty list for all negative numbers', () {
      expect(tripletSum([-1, -2, -3, -4]), isEmpty);
    });

    test('returns empty list for all positive numbers', () {
      expect(tripletSum([1, 2, 3, 4]), isEmpty);
    });
  });
}
