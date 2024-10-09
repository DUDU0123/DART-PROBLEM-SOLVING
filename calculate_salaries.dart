// Calculate Total Salaries per Department
// You have a list of employees with id,
// name, salary, and department. Write a function that
// calculates the total salary paid out in each department
// and returns a map with department names as keys and total
// salary as values.

void main() {
  List<Map<String, dynamic>> employees = [
    {'id': 1, 'name': 'Alice', 'salary': 50000, 'department': 'HR'},
    {'id': 2, 'name': 'Bob', 'salary': 60000, 'department': 'Engineering'},
    {'id': 1, 'name': 'Danny', 'salary': 30000, 'department': 'HR'},
    {'id': 2, 'name': 'Chris', 'salary': 3000000, 'department': 'Engineering'},
    {'id': 3, 'name': 'Charlie', 'salary': 55000, 'department': 'Finance'},
    {'id': 4, 'name': 'David', 'salary': 65000, 'department': 'Marketing'},
    {'id': 5, 'name': 'Eve', 'salary': 48000, 'department': 'Sales'},
  ];
  final value =
      findOutTotalSalaryPaidOutForEachDepartment(employees: employees);
  value.forEach((key, val) {
    print("$key: $val");
  });
}

Map<String, int> findOutTotalSalaryPaidOutForEachDepartment({
  required List<Map<String, dynamic>> employees,
}) {
  // this map is for saving a department with the salary paid out there
  Map<String, int> viewedDepartMent = {};
  // to find the total salary paid out from each department we need traverse through the list of employees
  for (var map in employees) {
    // deparMent variable contains the department of the current employee
    String departMent = map['department']; //ex: HR
    // currentMapSalary variable contains the salary of the current employee
    int currentMapSalary = map['salary']; //ex: 50000
    // here I am checking is the current employee's deparment is in the viewedDepartMent  map
    // if not, we will add the deparment as key and salary as value
    if (!viewedDepartMent.containsKey(map['department'])) {
      viewedDepartMent[departMent] = map['salary'];
    } else {
      // else the condition, there came an employee with a deparment which is already available in the map
      // so we can add it to the map
      // but we need increment the salary part, because we need to find out the total salary paid out in that department
      // here salaryMapValue contains the salary saved before of the current department
      final salaryMapValue = viewedDepartMent[departMent];
      // we need to take the sum of the saved salary and the current employee salary
      // sum variable contains the sum of that salaries
      final int sum = salaryMapValue! + currentMapSalary;
      // then we will update the department with the new salary summed up
      viewedDepartMent[departMent] = sum;
    }
  }
  // finally we can return the entire map with the info of total salary paid out from each department
  return viewedDepartMent;
}
