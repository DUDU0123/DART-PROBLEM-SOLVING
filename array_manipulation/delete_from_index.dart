import '../constants.dart';

void main() {
  final result = deleteFromIndex(position: 2, list: unsortedArray);
   if (result.$1 != null) {
    print(result.$1);
  } else {
    print(result.$2);
  }
}

(List<int>?, String?) deleteFromIndex({
  required int position,
  required List<int> list,
}) {
  try {
    if (position < 0 || position > list.length) {
      return (null, 'Index error');
    }
    for (var i = position; i < list.length - 1; i++) {
      list[i] = list[i + 1];
    }
    list.removeAt(list.length - 1);
    return (list, null);
  } catch (e) {
    return (null, e.toString());
  }
}
