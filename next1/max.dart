import '../constants.dart';

void main(){
  findMax(intList: intList);
}

findMax({required List<int> intList}){
  int max = intList[0];
  for (var val in intList) {
    if (val>max) {
      max= val;
    }
  }
  print(max);
}