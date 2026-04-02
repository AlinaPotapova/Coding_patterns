//Steps:
/*
for loop
start from the first element in array and
 - find the smallest element (index) in array, swap it with current element arr[minIndx] = arr[i]
 till current element array is sorted
 -and so on 
*/

void selectionSort(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    int minIndx = i;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[minIndx]) {
        minIndx = j;
      }
    }
    int temp = arr[i];
    arr[i] = arr[minIndx];
    arr[minIndx] = temp;
  }
}
