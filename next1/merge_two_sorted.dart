import '../constants.dart';

void main() {
  mergeTwoSorted(sortedOne: sortedArrayAsc1, sortedTwo: sortedArrayAsc2);
}

void mergeTwoSorted({
  required List<int> sortedOne,
  required List<int> sortedTwo,
}) {
  sortedOne.addAll(sortedTwo);
  sortedOne.sort();
  print(sortedOne);
}
