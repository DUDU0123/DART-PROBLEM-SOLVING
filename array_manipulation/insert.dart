import '../constants.dart';

void main() {
  final result =
      insertOnAnIndex(list: unsortedArray, element: 25, position: 5);
  if (result.$1 != null) {
    print(result.$1);
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
