void main() {
  final val = findInterSection(
    list1: [2,5,26,78,19,7],
    list2: [2,5,7276, 26,92,8, 6,7],
  );
  print(val);
}

List<int> findInterSection({
  required List<int> list1,
  required List<int> list2,
}) {
  List<int> l = [];
  for (var element in list1) {
    if (list2.contains(element)) {
      l.add(element);
    }
  }
  return l;
}
