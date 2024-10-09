// Sort Employees by Salary
// You have a list of employees where each employee has id,
// name, and salary. Write a function that sorts the list of
// employees by their salary in descending order.
void main() {
  List<Map<String, dynamic>> employees = [
    {'id': 1, 'name': 'Alice', 'salary': 50000},
    {'id': 2, 'name': 'Bob', 'salary': 45000},
    {'id': 3, 'name': 'Charlie', 'salary': 55000},
    {'id': 4, 'name': 'David', 'salary': 60000},
    {'id': 5, 'name': 'Eve', 'salary': 48000},
  ];
  sortEmployeeInDescendingOrderByTheirSalary(employees: employees);
  for (var element in employees) {
    print(element);
  }
}

sortEmployeeInDescendingOrderByTheirSalary({
  required List<Map<String, dynamic>> employees,
}) {
  employees.sort((a, b) => b['salary'].compareTo(a['salary']));
}
