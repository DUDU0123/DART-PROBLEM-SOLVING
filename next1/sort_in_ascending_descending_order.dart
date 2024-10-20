import '../constants.dart';

void main(){
  print(sortInAscending(arr: intList));
  print(sortInDescending(arr: intList));
}

sortInAscending({required List<int> arr}){
  arr.sort();
  return arr;
}
sortInDescending({required List<int> arr}){
  arr.sort((a,b)=>b-a);
  return arr;
}