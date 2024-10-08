// Find Employees with Highest Salaries per Department
// You have a list of employees where each employee has id,
// name, salary, and department.
// Write a function that returns a list of employees
// who have the highest salary in their department,
// keeping only one employee per department.

void main() {
  List<Map<String, dynamic>> employees = [
    {'id': 1, 'name': 'Alice', 'salary': 60000, 'department': 'HR'},
    {'id': 2, 'name': 'Bob', 'salary': 70000, 'department': 'Engineering'},
    {'id': 3, 'name': 'Charlie', 'salary': 75000, 'department': 'Finance'},
    {'id': 4, 'name': 'David', 'salary': 50000, 'department': 'Marketing'},
    {'id': 4, 'name': 'sbfas', 'salary': 90000, 'department': 'Communication'},
    {'id': 4, 'name': 'YYY', 'salary': 50000, 'department': 'Engineering'},
    {'id': 4, 'name': 'ZZZ', 'salary': 120000, 'department': 'Marketing'},
    {'id': 5, 'name': 'Eve', 'salary': 80000, 'department': 'Engineering'}
  ];
  final val = getDepartmentEmployeeWithHighSalary(employeeList: employees);
  for (var map in val) {
    print(map);
  }
}

List<Map<String, dynamic>> getDepartmentEmployeeWithHighSalary(
    {required List<Map<String, dynamic>> employeeList}) {
  Map<String, Map<String, dynamic>> viewed = {};
  for (var map in employeeList) {
    final departMent = map['department'];
    final salary = map['salary'];

    if (!viewed.containsKey(departMent)) {
      viewed[departMent] = map;
    } else {
      final savedEmployee = viewed[departMent];
      if (savedEmployee!['salary'] < salary) {
        viewed[departMent] = map;
      }
    }
  }
  return viewed.values.toList();
}
