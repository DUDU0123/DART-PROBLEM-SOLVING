void main(){
  print(removeDuplicates(list: [1,2,34,5,6,2,3,7,8,8,9,10]));
}

List<int> removeDuplicates({required List<int> list}){
  Set<int> s = {};
  for (var element in list) {
    if (!s.contains(element)) {
      s.add(element);
    }
  }
  return s.toList();
}