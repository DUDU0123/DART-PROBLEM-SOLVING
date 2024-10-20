void main() {
 final list = replaceWithAnotherElement(list: [30, 4,5, 6,3,4,5,6,5,33,5,78,5,8], elementToFit: 10, elementToReplace: 5);
 print(list);
}

List<int> replaceWithAnotherElement({
  required List<int> list,
  required int elementToReplace, required  int elementToFit,
}) {
  List<int> indexes = [];
  try {
    for (var i = 0; i < list.length; i++) {
      if (list[i] == elementToReplace) {
        indexes.add(i);
      }
    }

    for (var i = 0; i < indexes.length; i++) {
      list[indexes[i]] = elementToFit;
    }
  } catch (e) {
    print(e);
  }
  return list;
}
