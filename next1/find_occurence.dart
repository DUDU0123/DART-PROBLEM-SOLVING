import '../constants.dart';

void main() {
  countOccurence(intList: intList, number: 11);
}

countOccurence({
  required List<int> intList,
  required int number,
}) {
  Map<int, int> map = {};
  for (var element in intList) {
    map[element] = (map[element] ?? 0) + 1;
  }
  print(map[number] != null ? map[number] : 0);
}
