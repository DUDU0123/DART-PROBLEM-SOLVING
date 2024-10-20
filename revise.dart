import 'constants.dart';

void main(){
  // rmDup(list: userList);
//  print( peopleByAge(people: people));
keepEm(employees: employeesWithEmail);
}

rmDup({required List<Map<String, dynamic>> list }){
  Map<String, Map<String, dynamic>> viewed = {};
  
  for (var map in list) {
    String name = map['name'];
    int age = map['age'];
    String key = '$name-$age';
    if (!viewed.containsKey(key)) {
      viewed[key] = map;
    }
  }
  viewed.forEach((key, val){
     print(val);
  });
}

Map<int, List<String>> peopleByAge({
  required List<Map<String, dynamic>> people
}){
  Map<int, List<String>> viewed = {};
  for (var map in people) {
    int age = map['age'];
    String name = map['name'];
    if (!viewed.containsKey(age)) {
      viewed[age] = [name];
    }else{
      viewed[age]?.add(name);
    }
  }
  return viewed;
}

keepEm({ required List<Map<String, dynamic>> employees,}){
  Map<String, Map<String,dynamic>> viewed = {};
  for (var map in employees) {
    final email = map['email'];
    if(!viewed.containsKey(email)){
      viewed[email] = map;
    }
  }
  viewed.forEach((key,val){
    print(val);
  });
}