import '../constants.dart';

void main() {
  rotateArray(list: unsortedArray, position: 2);
}

rotateArray({required List<int> list, required int position}) {
  /* 
  first a temp variable temp,
  take first value to temp, now it is safe
  then, shift the second value position to first and other on the back of it,
  at last we can insert the value in temp to the last position,
  means list[list.length-1]
   */
  int temp = 0;
  for (var i = 0; i < position; i++) {
    temp = list[0];
    for (var j = 0; j < list.length - 1; j++) {
      list[j] = list[j + 1];
    }
    list[list.length - 1] = temp;
  }

  print(list);
}



// void rotateArray({required List<int> list, required int position}) {
//   int n = list.length;
  
//   // Normalize the position in case it's larger than the list length
//   position = position % n;

//   // Step 1: Reverse the first part (0 to position-1)
//   reverse(list, 0, position - 1);
  
//   // Step 2: Reverse the second part (position to n-1)
//   reverse(list, position, n - 1);
  
//   // Step 3: Reverse the entire list
//   reverse(list, 0, n - 1);
  
//   print(list);
// }

// void reverse(List<int> list, int start, int end) {
//   while (start < end) {
//     int temp = list[start];
//     list[start] = list[end];
//     list[end] = temp;
//     start++;
//     end--;
//   }
// }

