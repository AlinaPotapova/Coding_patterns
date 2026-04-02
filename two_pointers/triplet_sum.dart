// with duplicates
List<List<int>> tripletSum(List<int> arr) {
  if (arr.isEmpty || arr.length < 3 || arr.every((x) => x > 0)) return [];
  arr.sort();
  final res = <List<int>>[];
  for (int i = 0; i < arr.length; i++) {
    int rightPointer = arr.length - 1;
    int leftPointer = i + 1;
    while (leftPointer < rightPointer) {
      if (arr[leftPointer] + arr[rightPointer] + arr[i] > 0) {
        rightPointer--;
      } else if (arr[leftPointer] + arr[rightPointer] + arr[i] < 0) {
        leftPointer++;
      } else {
        res.add([arr[i], arr[leftPointer], arr[rightPointer]]);
        leftPointer++;
        rightPointer--;
      }
    }
  }
  return res;
}
// Think about, if an array is empty - [], about length, only positive numbers
