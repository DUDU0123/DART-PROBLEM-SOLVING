import '../constants.dart';

void main(){
  intList.sort();
  removeDupFromUnSorted(intList: [1,2,2,20,33,56,3,5,56,78,7,6,7,7,8,3]);
}
removeDupFromSorted({required List<int> intList,}){
  Set<int> nonDUp = {};
  for (var element in intList) {
    if (!nonDUp.contains(element)) {
      nonDUp.add(element);
    }
  }
  print(nonDUp.toList());
}
removeDupFromUnSorted({required List<int> intList,}){
  Set<int> nonDUp = {};
  for (var element in intList) {
    if (!nonDUp.contains(element)) {
      nonDUp.add(element);
    }
  }
  final list = nonDUp.toList();
  list.sort();
  print(list);
}