void main(List<String> args) {
  int x = 5, y = 3;
//inline if statement -- ternary operator
  print('condition is true');
  var z = x > y ? 'x greater than y' : 'x less than y';
  print(z);
  print('condition is false');
  var n = !(x > y) ? 'x greater than y' : 'x less than y';
  print(n);
  print('-----' * 6);

  //while
  while (x < 10) {
    print('hello');
    x++;
  }
  print('-----' * 6);

  while (x < 10) {
    print('hello');
  }
  print('-----' * 6);
  x = 5;
  while (x < 10) {
    print('hello');
    if (x == 8) {
      break;
    }
    x++;
  }
  //do-while
  print('-----' * 6);

  do {
    print('hello');
    x++;
  } while (x < 10);
  do {
    print('wrong condition');
  } while (12 < 10);
}
