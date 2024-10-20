void main(){
  final val = countOccurenceOfAllElements(list:[1,2,34,5,6,2,3,7,8,8,9,10] );
  print(val);
}

Map<int, int> countOccurenceOfAllElements({required List<int> list}) {
  Map<int,int> elementAndCount = {};
  for (var element in list) {
    elementAndCount[element] = (elementAndCount[element]??0)+1;
  }
  return elementAndCount;
}

