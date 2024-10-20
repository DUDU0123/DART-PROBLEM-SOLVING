import '../constants.dart';

void main() {
  intList;
  findSecondLarge(list: intList);
}

findSecondLarge({required List<int> list}) {
  int secLarge = list[0];
  int large = list[0];
  int small = list[0];
  int secSmall = list[0];
  for (var i = 0; i < list.length; i++) {
    if (list[i] > large) {
      secLarge = large;
      large = list[i];
    } else if (list[i] < small) {
      secSmall = small;
      small = list[i];
    }
  }
  print(large);
  print(secLarge);
  print(small);
  print(secSmall);
}
