void main(){
  List<int> list = [10,2,0,8,0,0,37,46,89,0,4];
  shiftZerosFront(list: list);
}
void shiftZerosEnd({required List<int> list}){
  List<int> l = [];
  int count = 0;
  for (var element in list) {
    if (element!=0) {
      l.add(element);
    }else{
      count++;
    }
  }

  for (var i = 0; i < count; i++) {
    l.add(0);
  }
  print(l);
}
void shiftZerosFront({required List<int> list}){
  List<int> l = [];
  int count = 0;
  for (var element in list) {
    if (element!=0) {
      l.add(element);
    }else{
      count++;
    }
  }

  for (var i = 0; i < count; i++) {
    l.insert(0,0);
  }
  print(l);
}