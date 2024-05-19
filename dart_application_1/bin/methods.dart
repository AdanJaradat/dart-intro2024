import 'dart:io';

import 'package:dart_application_1/dart_application_1.dart';

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

///
void test(int num) {
  print('the value is ${num + 2}');
}

String fun(int x) {
  return 'this value is $x';
}

void calc() {
  print('enter number 1 :');
  double n1 = double.parse(stdin.readLineSync()!);
  print('enter number 2 :');
  double n2 = double.parse(stdin.readLineSync()!);

  print('''
1- (*)
2- (-)
3- (+)
4- (/)
''');
  print('enter your choice :');
  int choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      print('calculation of this is ${n1 * n2}');
      break;
    case 2:
      print('calculation of this is ${n1 - n2}');
      break;
    case 3:
      print('calculation of this is ${n1 + n2}');
      break;
    case 4:
      print('calculation of this is ${n1 / n2}');
      break;
    default:
      print('wrong choice');
  }
}

String major(Map<String, dynamic> s) {
  if (99 > s['grade'] && s['grade'] > 90) {
    s.addAll({'major': 'pharmacey'});
  } else if (89 > s['grade'] && s['grade'] > 80) {
    s.addAll({'major': 'engineering'});
  } else if (79 > s['grade'] && s['grade'] > 70) {
    s.addAll({'major': 'IT'});
  } else {
    s.addAll({'major': 'math'});
  }
  return 'hi ${s['name']} your major is ${s['major']}';
}

bool isPrime(int n) {
  for (var i = 2; i < n; i++) {
    // if (n == 1) {
    //   return true;
    // }
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

void main(List<String> args) {
  print('--------');
  print(isPrime(7));
  // Map<String, dynamic> student = {'name': 'ahmad', 'age': 19, 'grade': 88};
  // print(major(student));
  //calc();
  //print(fun(4));
  //test(4);
  // printName(); //call
  // sum(9, 10);
  // sum2(a: 5, b: 9, c: 1, d: 3, e: 8);
  // print(sum3(a: 5, b: 9, c: 1, d: 3, e: 8));
  String hello = 'hello';
  String newHello = '';
  for (var i = 0; i < hello.length; i++) {
    if (hello[i] == 'l') {
      newHello += '*';
    } else {
      newHello += hello[i];
    }
  }
  print(newHello);
}
