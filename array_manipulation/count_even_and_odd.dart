import '../constants.dart';

void main(){
  countEventAndOdd(list: unsortedArray);
}

void countEventAndOdd({required List<int> list}){
  List<int> odd = [];
  List<int> even = [];
  for (var element in list) {
    if (element%2==0) {
      even.add(element);
    }else{
      odd.add(element);
    }
  }
  print("Odd Numbers: $odd");
  print("Even Numbers: $even");
  int largEven = 0;
  int largOdd = 0;
  for (var element in even) {
    if (element>largEven) {
      largEven= element;
    }
  }
  for (var element in odd) {
    if (element>largOdd) {
      largOdd= element;
    }
  }
  print("Large Odd: $largOdd");
  print("Large Even: $largEven");
}