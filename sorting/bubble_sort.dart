//Steps:
/*
for loop
[3,4,6,1]
  - find the biggest element (swaping) in array, put it last
[3,4,1,6]
 - search again, from arr[0] till arr[length -1 - i];
*/

void bubbleSort(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    //should starts every time from beginning
    for (int j = 0; j < arr.length - i - 1; j++) {
      if (arr[j + 1] < arr[j]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}
