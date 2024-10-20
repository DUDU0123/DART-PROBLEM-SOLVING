void main() {
  replaceNegativeWithZero(list: [30, 4, 5, -2, 4, -5, -7, 9, -99, 0, 12, -22]);
}

List<int> replaceNegativeWithZero({
  required List<int> list,
}) {
  List<int> indexes = [];
  try {
    for (var i = 0; i < list.length; i++) {
      if (list[i] < 0) {
        indexes.add(i);
      }
    }

    for (var i = 0; i < indexes.length; i++) {
      list[indexes[i]] = 0;
    }
  } catch (e) {
    print(e);
  }
  return list;
}
