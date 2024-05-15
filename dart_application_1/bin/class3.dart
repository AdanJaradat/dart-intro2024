import 'dart:io';

void main(List<String> args) {
  int x = 6;
  if (x == 5) {
    print('x is 5');
  } else if (x > 5) {
    print('x is grater than 5');
  } else if (x < 5) {
    print('x is less than 5');
  } else {
    print('x is not 5');
  }
  //
  if (x == 5) {
    print('x is 5');
  }
  if (x > 5) {
    print('x is grater than 5');
  }
  if (x < 5) {
    print('x is less than 5');
  } else {
    print('x is not 5');
  }
  //switch statement
  String username = 'ahmad';
  switch (username) {
    case 'ahmad':
      print('hi ahmad');
      break;
    case 'siraj':
      print('hi siraj');
      break;
    case 'mohammad':
      print('hi mohammad');
      break;
    case 'omar':
      print('hi omar');
      break;
    case 'ali':
      print('hi ali');
      break;
    default:
      print('user not found');
  }

  print('''
1- login
2- register
3- exit
''');
  print('entwr your choice :');
  //String choice = stdin.readLineSync()!;
  //print(choice is String);
  int choice = int.parse(stdin.readLineSync()!);
  print(choice is int);
  switch (choice) {
    case 1:
      print('login...');
      break;
    case 2:
      print('register...');
      break;
    case 3:
      print('exit...');
      break;
    default:
      print('wrong choice...');
  }

  for (var i = 0; i < 10; i++) {
    print(i);
  }
  print('-------------------------');
  for (var i = 0; i < 10; ++i) {
    print(i);
  }
  print('enter the number :');
  int n = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < n; i++) {
    print(i);
  }
  //try catch
  try {
    //try to enter string
    print('enter the number (string):');
    n = int.parse(stdin.readLineSync()!);
    for (var i = 0; i < n; i++) {
      print(i);
    }
  } catch (e) {
    n = 0;
    print('the value is not int');
  }
}
