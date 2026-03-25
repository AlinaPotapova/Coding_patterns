//Shift Zeros to the End

List<int> moveZeroes(List<int> arr) {
  int left = 0;
  int temp;
  for (int right = 0; right < arr.length; right++) {
    if (arr[right] != 0) {
      temp = arr[right];
      arr[right] = arr[left];
      arr[left] = temp;
      left++;
    }
  }

  return arr;
}

List<int> moveZeroesToStart(List<int> arr) {
  int left = arr.length - 1;
  int temp;
  for (int right = arr.length - 1; right > 0; right--) {
    if (arr[right] == 0) {
      temp = arr[right];
      arr[right] = arr[left];
      arr[left] = temp;
      left++;
    }
  }

  return arr;
}
