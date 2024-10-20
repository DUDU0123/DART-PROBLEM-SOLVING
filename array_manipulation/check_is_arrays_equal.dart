void main() {
  final val = checkIsArraysEqual(
    list1: [2,5,7],
    list2: [2,5,7,8],
  );
  print(val);
}

bool checkIsArraysEqual({
  required List<int> list1,
  required List<int> list2,
}) {
  if (list1.length!=list2.length) {
    return false;
  }
  for (var i = 0; i < list1.length; i++) {
    if (list1[i]!=list2[i]) {
      return false;
    }
  }
  return true;
}
