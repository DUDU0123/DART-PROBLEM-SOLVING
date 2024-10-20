// Group People by Age
// You have a list of people,
// each with a name and age.
// Write a function that groups people by age and returns a map
// where the keys are ages and the values are lists of names.

import '../constants.dart';

void main() {
  
  final val = groupPeopleByAge(people: people);
  print(val);
}

Map<int, List<String>> groupPeopleByAge({
  required List<Map<String, dynamic>> people,
}) {
  Map<int, List<String>> savedAgeMap = {};
  for (var map in people) {
    int age = map['age'];
    String name = map['name'];
    if (!savedAgeMap.containsKey(age)) {
      savedAgeMap[age] = [name];
    } else {
      savedAgeMap[age]?.add(name);
    }
  }
  return savedAgeMap;
}
