// Sort Employees by Salary
// You have a list of employees where each employee has id,
// name, and salary. Write a function that sorts the list of
// employees by their salary in descending order.
void main(){
   List<Map<String, dynamic>> employees = [
    {'id': 1, 'name': 'Alice', 'salary': 50000},
    {'id': 2, 'name': 'Bob', 'salary': 45000},
    {'id': 3, 'name': 'Charlie', 'salary': 55000},
    {'id': 4, 'name': 'David', 'salary': 60000},
    {'id': 5, 'name': 'Eve', 'salary': 48000},
  ];
  sortEmployeeInDescendingOrderByTheirSalary(employees: employees);
}

sortEmployeeInDescendingOrderByTheirSalary({required  List<Map<String, dynamic>> employees,}){
  // Map<Map<String, dynamic>,int> saved = {};
  List<Map<String, dynamic>> j = [];
  Set<int> salary = {};
  for (var map in employees) {
    final currentEmployeeSalary = map['salary'];
  }
}