import 'dart:io';

void charCount() {
  print('enter the string :');

  String str = stdin.readLineSync()!; //'assseeeddcc';
  String newStr = '';

  for (var i = 0; i < str.length; i++) {
    int count = 1;
    for (var j = i; j < str.length - 1; j++) {
      if (str[i] == str[j + 1]) {
        count++;
      } else {
        break;
      }
    }
    if (count > 1) {
      newStr += count.toString() + str[i];
      i += count - 1;
    } else {
      print(str[i]);
      newStr += str[i];
    }
  }
  print('the string after processing => $newStr');
}

void main(List<String> args) {
  charCount();
}
