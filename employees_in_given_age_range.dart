// Find Employees in a Given Age Range
// You have a list of employees where each employee has id, name, and age.
// Write a function that returns a list of employees
//whose age is between 25 and 35 (inclusive)

void main(){
  List<Map<String, dynamic>> employees = [
    {'id': 1, 'name': 'Alice', 'age': 30},
    {'id': 2, 'name': 'Bob', 'age': 25},
    {'id': 3, 'name': 'Charlie', 'age': 35},
    {'id': 4, 'name': 'David', 'age': 28},
    {'id': 5, 'name': 'Eve', 'age': 32},
    {'id': 6, 'name': 'Augstin', 'age': 28},
    {'id': 7, 'name': 'Mathew', 'age': 10},
    {'id': 8, 'name': 'Christiano', 'age': 39},
    {'id': 9, 'name': 'Messi', 'age': 39},
    {'id': 10, 'name': 'Neymer', 'age': 35},
  ];
  final val = findEmployeeInAnAgeRangeOf25And35(employeeList: employees);
  for (var element in val) {
    print(element);
  }
}

List<Map<String, dynamic>> findEmployeeInAnAgeRangeOf25And35({required List<Map<String, dynamic>> employeeList}){
  List<Map<String, dynamic>>  employeesWithAgeBtw25And35 = [];
  for (var map in employeeList) {
    if (map['age']<=35 && map['age']>=25) {
      employeesWithAgeBtw25And35.add(map);
    }
  }
  return employeesWithAgeBtw25And35;
}