import '../constants.dart';

void main(){
  removeAllOccurrencesOfAnElementMethod2(list: unsortedArray, element: 9);
}

removeAllOccurrencesOfAnElement({required List<int> list, required int element,}){

  list.removeWhere((number)=>number==element);
  // list.removeAt(index);
  print(list);
}
removeAllOccurrencesOfAnElementMethod2({required List<int> list, required int element,}){

  List<int> indexList = [];
  for (var i = 0; i < list.length; i++) {
    if (element==list[i]) {
      indexList.add(i);
      
    }
  }
  for (var i = 0; i < indexList.length; i++) {
    list.removeAt(indexList[i]);
  }
  print(list);
}