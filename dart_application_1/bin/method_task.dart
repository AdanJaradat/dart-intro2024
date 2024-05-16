import 'dart:io';

int age() {
  print('Enter your age :');
  int a = int.parse(stdin.readLineSync()!);
  return a;
}

String fullName() {
  print('Enter your first name :');
  String fName = stdin.readLineSync()!;
  print('Enter your last name :');
  String lName = stdin.readLineSync()!;
  String fullName = '$fName $lName';
  return fullName;
}

void main(List<String> args) {
  int x = age();
  String y = fullName();
  print('your age is $x');
  print('your full name is $y');
}
