import '../constants.dart';

void main() {
  final val = binarySearch(
      list: unsortedArray, start: 0, end: unsortedArray.length - 1, element: 5);
  if (val != -1) {
    print(val);
  } else {
    print("Value not found");
  }
}

int binarySearch({
  required List<int> list,
  required int start,
  required int end,
  required int element,
}) {
  list.sort();
  print(list);
  while (start <= end) {
    int mid = (start + end) ~/ 2;
    if (element == list[mid]) {
      return mid;
    } else if (element < list[mid]) {
      end = mid - 1;
    } else {
      start = mid + 1;
    }
  }
  return -1;
}
