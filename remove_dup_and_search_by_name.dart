void main() {
  List<Map<String, dynamic>> listOfMaps = [
    {'id': 1, 'name': 'John', 'age': 30},
    {'id': 2, 'name': 'Alice', 'age': 25},
    {'id': 3, 'name': 'Bob', 'age': 35},
    {'id': 4, 'name': 'Alice', 'age': 40}
  ];
  // final result = searchBasedOnName(list: listOfMaps, name: 'Alice');
  // print("User Details: $result");
  rD(list: listOfMaps);
}

void rD({required List<Map<String, dynamic>> list}) {
  Set<String> namesSet = {};
  List<Map<String, dynamic>> filteredList = [];
  for (var map in list) {
    if (!namesSet.contains(map['name'])) {
      namesSet.add(map['name']);
      filteredList.add(map);
    }
  }
  print(filteredList);
}

void removeDuplicates({required List<Map<String, dynamic>> list}) {
  Set<String> namesSet = {};
  list.retainWhere((map){
    print("Map: ${map['name']}");
    return namesSet.add(map['name'] as String);
  });
  print(namesSet);
}

Map<String, dynamic> searchBasedOnName({
  required List<Map<String, dynamic>> list,
  required String name,
}) {
  for (var map in list) {
    if (map['name'] == name) {
      return map;
    }
  }
  return {};
}
