void main() {
  // print(findMostFrequentElement(list: [
  //   1,
  //   2,
  //   3,
  //   5,
  //   3,
  //   4,
  //   3,
  //   7,
  //   8,
  //   3,
  //   3,
  //   3,
  // ]));
  // print(findLeastFrequentElement(list: [
  //   1,
  //   2,
  //   3,
  //   5,
  //   3,
  //   4,
  //   3,
  //   7,
  //   8,
  //   3,
  //   3,
  //   3,
  // ]));
  print(findAllElementOccurMoreThanOne(list: [
    1,
    2,
    3,
    5,
    3,
    4,
    3,
    7,
    8,
    8,
    10,
    10,
    3,
    3,
    3,
  ]));
  print(findUnique(list: [
    1,
    2,
    3,
    5,
    3,
    4,
    3,
    7,
    8,
    8,
    10,
    10,
    3,
    3,
    3,
  ]));
}

int findMostFrequentElement({required List<int> list}) {
  Map<int, int> map = {};
  for (var element in list) {
    map[element] = (map[element] ?? 0) + 1;
  }
  int maxKey = 0;
  int maxVal = 0;
  map.forEach((key, val) {
    if (val > maxVal) {
      maxVal = val;
      maxKey = key;
    }
  });
  return maxKey;
}

int findLeastFrequentElement({required List<int> list}) {
  Map<int, int> map = {};
  for (var element in list) {
    map[element] = (map[element] ?? 0) + 1;
  }
  int minKey = 0;
  int minVal = 10;
  map.forEach((key, val) {
    if (val < minVal) {
      minVal = val;
      minKey = key;
    }
  });
  return minKey;
}

List<int> findAllElementOccurMoreThanOne({required List<int> list}) {
  Map<int, int> map = {};
  for (var element in list) {
    map[element] = (map[element] ?? 0) + 1;
  }
  List<int> l = [];
  map.forEach((key, val) {
    if (val > 1) {
      l.add(key);
    }
  });
  return l;
}
List<int> findUnique({required List<int> list}) {
  Map<int, int> map = {};
  for (var element in list) {
    map[element] = (map[element] ?? 0) + 1;
  }
  List<int> l = [];
  map.forEach((key, val) {
    if (val == 1) {
      l.add(key);
    }
  });
  return l;
}

