//class 3 task
import 'dart:io';

void main(List<String> args) {
  print('''
1- login
2- register
3- exit
''');
  String defaultUsername = 'ahmad';
  String defaultPassword = '123456';
  String? username;
  String? password;

  try {
    int count = 1;
    for (int i = 0; i < count; i++) {
      print('Enter your choice :');
      int ch = int.parse(stdin.readLineSync()!);
      switch (ch) {
        case 1:
          print('Enter your name :');
          username = stdin.readLineSync()!;
          print('Enter the password :');
          password = stdin.readLineSync()!;
          if (defaultUsername == username && defaultPassword == password) {
            print('Welcome to Home Page');
          } else if (defaultUsername != username &&
              defaultPassword == password) {
            print('username is incorrect');
          } else if (defaultUsername == username &&
              defaultPassword != password) {
            print('your password is incorrect');
          } else {
            print('username/password incorrect');
          }
          break;
        case 2:
          print('---------WELCOME TO SIGN UP PAGE---------');
          print('Enter your INFO to register');
          print('Enter your name :');
          username = stdin.readLineSync()!;
          if (defaultUsername == username) {
            print('Username already exists,please choose option 1 to login');
            count++;
            break;
          } else {
            defaultUsername = username;
          }
          print('Enter the password :');
          password = stdin.readLineSync()!;
          defaultPassword = password;
          count++;
          print('Enter choice 1 to login');
          break;
        case 3:
          print('logout...');
          break;
        default:
          print('This choice does not exist');
      }
    }
  } catch (e) {
    print(e.toString());
  }
}
