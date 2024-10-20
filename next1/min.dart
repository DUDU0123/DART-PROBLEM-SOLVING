import '../constants.dart';

void main(){
  findMin(intList: intList);
}

findMin({required List<int> intList}){
  int min = intList[0];
  for (var val in intList) {
    if (val<min) {
      min= val;
    }
  }
  print(min);
}