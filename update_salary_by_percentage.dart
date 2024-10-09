// Update Salaries by Percentage
// You have a list of employees, each represented as a map
// with id, name, and salary. Write a function that
// increases everyone's salary by a given percentage.
void main(){
  int percentage = 90;
   List<Map<String, dynamic>> employees = [
    {'id': 1, 'name': 'Alice', 'salary': 50000},
    {'id': 2, 'name': 'Bob', 'salary': 45000},
    {'id': 3, 'name': 'Charlie', 'salary': 55000},
    {'id': 4, 'name': 'David', 'salary': 60000},
    {'id': 5, 'name': 'Eve', 'salary': 48000},
  ];
  increaseSalaryByPercentage(employees: employees, percentage: percentage);
}

increaseSalaryByPercentage({required List<Map<String, dynamic>> employees,required int percentage,}){

}