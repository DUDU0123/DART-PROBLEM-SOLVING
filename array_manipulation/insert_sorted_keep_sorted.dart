import '../constants.dart';

void main() {
  print(insertAndSort(list: unsortedArray, element: 34, position: 3));
}

List<int>? insertAndSort({
  required List<int> list,
  required int element,
  required int position,
}) {
  final result =
      insertOnAnIndex(list: list, element: element, position: position);
  if (result.$1 != null) {
    result.$1?.sort();
    return result.$1;
  } else {
    print(result.$2);
  }
}

(List<int>?, String?) insertOnAnIndex({
  required List<int> list,
  required int element,
  required int position,
}) {
  try {
    if (position < 0 || position > list.length) {
      return (null, 'Index error');
    }
    list.add(0);
    for (var i = list.length - 1; i > position; i--) {
      list[i] = list[i - 1];
    }
    list[position] = element;
    return (list, null);
  } catch (e) {
    return (null, e.toString());
  }
}
