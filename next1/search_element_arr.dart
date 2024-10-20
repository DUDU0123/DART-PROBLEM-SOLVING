import '../constants.dart';

void main() {
 int val = search(intList: intList, target: 38, end: intList.length, start: 0);
 print(val);
}

int search(
    {required List<int> intList,
    required int target,
    required int start,
    required int end}) {
      intList.sort();
 
  while (start <= end) {
     int mid = (start + end) ~/ 2;
    if (target == intList[mid]) {
      return mid;
    } else if (intList[mid] > target) {
      end = mid - 1;
    } else {
      start = mid + 1;
    }
  }
  return -1;
}