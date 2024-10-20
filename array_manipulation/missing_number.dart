void main() {
  final val = findMissingNumber(arr: [1, 2, 3,4, 5, 6, 7]);
  if (val != -1) {
    print(val);
  } else {
    print("Value not found");
  }
}

findMissingNumber({required List<int> arr}) {
  int n = arr.length + 1;
  int totalSum = (n * (n + 1)) ~/ 2;
  int arraySum = arr.reduce((a,b)=>a+b);
  return totalSum - arraySum;
}
