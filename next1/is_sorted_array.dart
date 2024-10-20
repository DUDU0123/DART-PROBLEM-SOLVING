void main(){
  print(checkIsArrraySorted(intList: [2,4,6,7,]));
}
bool checkIsArrraySorted({required List<int> intList,}){
  for (var i = 0; i < intList.length-1; i++) {
    if (intList[i]>intList[i+1]) {
      return false;
    }
  }
  return true;
}

// [10,2,45,3,7,8];
// 
// [38,55,67,88,333,89,44,664,334]