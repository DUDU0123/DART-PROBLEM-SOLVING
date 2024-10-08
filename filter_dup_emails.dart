// Filter Out Duplicate Emails
// You have a list of employees,
// where each employee has an id, email, and department.
// Write a function that filters out employees with duplicate email,
// keeping only the first employee for each unique email.

void main() {
  List<Map<String, dynamic>> employees = [
    {'id': 1, 'email': 'alice@example.com', 'department': 'HR'},
    {'id': 2, 'email': 'bob@example.com', 'department': 'Engineering'},
    {'id': 3, 'email': 'charlie@example.com', 'department': 'Finance'},
    {'id': 4, 'email': 'david@example.com', 'department': 'Marketing'},
    {'id': 5, 'email': 'eve@example.com', 'department': 'Engineering'},
    {'id': 1, 'email': 'alice@example.com', 'department': 'Communication'},
    {'id': 2, 'email': 'bob@example.com', 'department': 'Sports'},
    {'id': 3, 'email': 'charlie@example.com', 'department': 'Software Development'},
    {'id': 4, 'email': 'david@example.com', 'department': 'Driver'},
    {'id': 5, 'email': 'evedfjndjfdj@example.com', 'department': 'Rider'}
  ];
  filterOutEmployeeWithDuplicateEmail(employees: employees);
}

// here I have written an algorithm for removing the employee with duplicate email
void filterOutEmployeeWithDuplicateEmail({
  required List<Map<String, dynamic>> employees,
}) {
  // here I have created a set for saving the viewedEmail
  Set<String> viewedEmail = {};
  // here is list of map for saving the viewed map once
  List<Map<String, dynamic>> l = [];
  // for finding the duplicate email holding employee
  // we need to loop through it
  for (var map in employees) {
    // here I am only adding the email which is not available in the setting
    // for that I am checking that, is the email is in the viewedEmail set
    //if not, I will add it to the viewedEmail set and also add it to the list
    // so doing this will filterout employee with duplicate email and hold the first employee who have the email id
    if (!viewedEmail.contains(map['email'])) {
      viewedEmail.add(map['email']);
      l.add(map);
    }
  }

  // print the list containing the employee list
  for (var element in l) {
    print(element);
  }
}
