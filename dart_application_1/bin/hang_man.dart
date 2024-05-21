import 'dart:io';

void main(List<String> args) {
  print('enter the word : ');
  String secret = stdin.readLineSync()!;
  List<String> spaces = [];
  int turn = 0;
  bool isRunning = true;

  for (var i = 0; i < secret.length; i++) {
    spaces.add('_');
  }
  print(spaces);
  print('''
welcome to our hang man game :
about this game you will be 6 chances

''');
  while (isRunning) {
    print('enter your guss : ');
    String guss = stdin.readLineSync()!;
    if (guss.length > 1) {
      print('please enter single character');
      continue;
    }
    bool isGuss = false;
    for (var i = 0; i < secret.length; i++) {
      if (secret[i] == guss) {
        spaces[i] = guss;
        isGuss = true;
      }
    }
    if (isGuss == false) {
      turn++;
      print('your guess is wrong try again');
      print('turn : $turn');
      draw(turn);
    }

    if (spaces.join() == secret) {
      isRunning = false;
      print('*******************************');
      print('**     Congratulations       **');
      print('*******************************');
    }
    if (turn == 6) {
      isRunning = false;
      print('*******************************');
      print('**         Game over         **');
      print('*******************************');
    }
    //print(spaces);
  }
}

void draw(int tryNum) {
  switch (tryNum) {
    case 1:
      print('''
|           
|           
|        
|         
|
|
---------''');
      break;
    case 2:
      print('''
---------------
|           
|          
|           
|
|
---------''');
      break;
    case 3:
      print('''
---------------
|             |
|          
|           
|           
|
|
---------''');
      break;
    case 4:
      print('''
---------------
|             |
|             O  
|          
|           
|
|
---------''');
      break;
    case 5:
      print('''
---------------
|             |
|             O  
|            /|\\  
|          
|
|
---------''');
      break;
    case 6:
      print('''
---------------
|             |
|             O  
|            /|\\  
|            /|\\
|
|
---------''');
      break;
    default:
  }
}
