void main() {
  List<Map<String, dynamic>> employees = [
    {'id': 1, 'name': 'John', 'salary': 5000},
    {'id': 2, 'name': 'Alice', 'salary': 6000},
    {'id': 3, 'name': 'Bob', 'salary': 7000},
    {'id': 5, 'name': 'Bob', 'salary': 6000},
    {'id': 4, 'name': 'Alice', 'salary': 8000},
  ];
  removeDupRetrieveHigh(employeeList: employees);
}

void removeDupRetrieveHigh({
  required List<Map<String, dynamic>> employeeList,
}) {
  Map<String,Map<String,dynamic>> m = {};
  for (var map in employeeList) {
    if (!m.containsKey(map['name'])) {
      m[map['name']] = map;
    }else{
      final dup = m[map['name']];
      if (dup!['salary']<map['salary']) {
        m[map['name']] = map;
      }
    }
  }
  print(m);
}
