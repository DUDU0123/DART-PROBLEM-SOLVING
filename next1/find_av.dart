import '../constants.dart';

void main(){
  findAvg(intList: intList);
}
void findAvg({required List<int> intList}){
  int sum = 0;
  for (var element in intList) {
    sum = sum + element;
  }

  print(sum/intList.length);
}