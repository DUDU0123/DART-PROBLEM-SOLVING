void main() {
  pairsSumToGivenValue(list: [
    1,
    4,
    2,
    2,
    5,
    6,
    3,
    8,
    2,
  ], targetValue: 4);
}

pairsSumToGivenValue({required List<int> list, required int targetValue}) {
  List<List<int>> l = [];
  try {
    for (var i = 0; i < list.length-1; i++) {
      for (var j = i+1; j < list.length; j++) {
        if (list[i] + list[j] == targetValue) {
          l.add([list[i], list[j]]);
        }
      }
    }
    print(l);
  } catch (e) {
    print(e);
  }
}
