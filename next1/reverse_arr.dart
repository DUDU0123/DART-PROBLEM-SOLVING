import '../constants.dart';

void main(){
  reverseArray(intList: intList);
}
void reverseArray({required List<int> intList}){
  int temp;
  for (var i = 0; i < intList.length/2; i++) {
    temp = intList[i];
    intList[i] = intList[intList.length-1-i];
    intList[intList.length-1-i] = temp;
  }
  print(intList);
}