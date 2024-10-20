// Merge and Remove Duplicates
// You have two lists of students,
// each represented as a map with id,
// name, and grade. Write a function that merges the two lists
// into one while removing students with duplicate id,
// keeping the one with the highest grade.

void main() {
  List<Map<String, dynamic>> studentsList1 = [
    {'id': 1, 'name': 'Alice', 'grade': 'A'},
    {'id': 2, 'name': 'Bob', 'grade': 'B'},
    {'id': 3, 'name': 'Charlie', 'grade': 'D'},
  ];

  // Second list of students (with some duplicate ids)
  List<Map<String, dynamic>> studentsList2 = [
    {'id': 2, 'name': 'David', 'grade': 'C'}, // Duplicate id: 2
    {'id': 4, 'name': 'Eve', 'grade': 'B'},
    {'id': 3, 'name': 'Frank', 'grade': 'A'}, // Duplicate id: 3
  ];

  final val = mergeAndRemoveDupById(
      studentsList1: studentsList1, studentsList2: studentsList2);

  for (var student in val) {
    print(student);
  }
}

List<Map<String, dynamic>> mergeAndRemoveDupById({
  required List<Map<String, dynamic>> studentsList1,
  required List<Map<String, dynamic>> studentsList2,
}) {
  studentsList1.addAll(studentsList2);
  Map<int, Map<String, dynamic>> savedStudentMap = {};
  for (var map in studentsList1) {
    String grade = map['grade'];

    if (!savedStudentMap.containsKey(map['id'])) {
      savedStudentMap[map['id']] = map;
    } else {
      final Map<String, dynamic>? savedStudent = savedStudentMap[map['id']];
      final savedStudentGrade = savedStudent!['grade'];
      if (grade == 'A' && savedStudentGrade == 'B') {
        savedStudentMap[map['id']] = map;
      } else if ((grade == 'B' || grade == 'A') && savedStudentGrade == 'C') {
        savedStudentMap[map['id']] = map;
      } else if ((grade == 'C' || grade == 'A' || grade == 'B') &&
          savedStudentGrade == 'D') {
        savedStudentMap[map['id']] = map;
      }
    }
  }
  return savedStudentMap.values.toList();
}
