// Find Most Frequent Name
// You have a list of students,
// each represented as a map with id and name.
// Write a function that finds the most frequent name in the list.

void main() {
  List<Map<String, dynamic>> studentList = [
    {'id': 1, 'name': 'Jack'},
    {'id': 2, 'name': 'Jack'},
    {'id': 3, 'name': 'Charlie'},
    {'id': 4, 'name': 'David'},
    {'id': 5, 'name': 'Jack'},
    {'id': 6, 'name': 'David'},
    {'id': 7, 'name': 'Grace'},
    {'id': 8, 'name': 'Hannah'},
    {'id': 9, 'name': 'Jack'},
    {'id': 10, 'name': 'Jack'},
  ];
  findMostFrequentName(students: studentList);
}

void findMostFrequentName({
  required List<Map<String, dynamic>> students,
}) {
  // here we are find the most frequent element in the map of list
  //to count the name, I have used a map, where the name is the key and count is the value
  Map<String, int> nameCountMap = {};
  // so to find the count of elements with same name
  // we need to iterate through the students list
  // take each map and count it
  for (Map<String, dynamic> map in students) {
    nameCountMap[map['name']] = (nameCountMap[map['name']] ?? 0) + 1;
  }
  // finally we will get a map, where key is name and value is count of that appear in the list of map
//   print(nameCountMap);
//  final mostFrequentElementMap = nameCountMap.entries.reduce((a, b) {
//     return a.value>b.value?a:b;
//   },);
  // to get most frequent element
  String maxKey = '';
  int maxVal = 0;
  nameCountMap.forEach((key, val) {
    if (val > maxVal) {
      maxKey = key;
      maxVal = val;
    }
  });

  print(maxKey);
  // print("Most frequent: ${mostFrequentElementMap.key}");
}
