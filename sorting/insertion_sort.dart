//Inefficient for large lists.
//Average case: O(n2), If the list is randomly ordered

void insertionSort(List<int> arr) {
  for (int i = 1; i < arr.length; i++) {
    int key = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }
/*

j = index of the element you're comparing with key

After the loop ends:

Either j == -1 (we reached start), OR
arr[j] <= key (found smaller element)

👉 So the correct place for key is right after j*/
    arr[j + 1] = key;
  }
}
