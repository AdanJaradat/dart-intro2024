void printName() {
  print('aa');
  print('kk');
  print('jj');
}

void sum(int a, int b) {
  int c = a + b;
  return print('sum = $c');
}

void sum2({int? a, int? b, int? c, int? d, int? e}) {
  int f = a! + b! + c! + d! + e!;
  return print('sum2 = $f');
}

//try String
dynamic sum3({int? a, int? b, int? c, int? d, int? e}) {
  int f = a! + b! + c! + d! + e!;
  return print('sum3 = $f');
}

void main(List<String> args) {
  printName(); //call
  sum(9, 10);
  sum2(a: 5, b: 9, c: 1, d: 3, e: 8);
  print(sum3(a: 5, b: 9, c: 1, d: 3, e: 8));
}
