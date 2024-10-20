void main() {
  final val = findFirstOccurence(list: [23, 5, 5, 4, 3, 5, 22], element: 5);
  final last = findLastOccurence(list: [23, 5, 5, 4,5, 3, 22], element: 5);
  if (val!=-1) {
    print(val);
  }else{
    print("Value not found");
  }
  if (last!=-1) {
    print(last);
  }else{
    print("Value not found");
  }
}

int findFirstOccurence({required List<int> list, required int element}) {
  try {
    if (!list.contains(element)) {
      return -1;
    }
    final val = list
        .indexWhere((val) => val == list.firstWhere((val) => val == element));
    return val;
  } catch (e) {
    print(e);
    return -1;
  }
}
int findLastOccurence({required List<int> list, required int element}) {
  try {
    if (!list.contains(element)) {
      return -1;
    }
    final val = list
        .lastIndexWhere((val) => val ==  element);
    return val;
  } catch (e) {
    print(e);
    return -1;
  }
}
