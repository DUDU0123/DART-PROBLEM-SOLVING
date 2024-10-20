import '../constants.dart';

void main() {
  removeFirstOccurrencesOfAnElementMethod(list: unsortedArray, element: 12);
}

removeFirstOccurrencesOfAnElementMethod({
  required List<int> list,
  required int element,
}) {
  int index = -1;
  for (var i = 0; i < list.length; i++) {
    if (element == list[i]) {
      index = i;
      break;
    }
  }
    list.removeAt(index);
  print(list);
}
