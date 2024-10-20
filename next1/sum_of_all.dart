import '../constants.dart';

void main(){
  findSum(intList: intList);
}
void findSum({required List<int> intList}){
  int sum = 0;
  for (var element in intList) {
    sum = sum + element;
  }
  print(sum);
}