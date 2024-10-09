// Group People by Age
// You have a list of people,
// each with a name and age.
// Write a function that groups people by age and returns a map
// where the keys are ages and the values are lists of names.

void main(){
  
  List<Map<String, dynamic>> people = [
    {'name': 'Alice', 'age': 30},
    {'name': 'Bob', 'age': 25},
    {'name': 'Charlie', 'age': 35},
    {'name': 'David', 'age': 28},
    {'name': 'Eve', 'age': 32},
  ];
  groupPeopleByAge(people: people);
}

groupPeopleByAge({required List<Map<String, dynamic>> people,}){

}