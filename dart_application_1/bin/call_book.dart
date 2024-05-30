import 'oop2.dart';

void main(List<String> args) {
  Book b1 = Book(
      id: '22',
      name: 'book2',
      auther: 'auther2',
      category: ['category'],
      disc: 'disc for book2',
      libraryPrice: 100,
      year: 2018);
  print(b1);
  print(b1.id); //getter
  b1.id = '99'; //setter
  print(b1.id); //getter
  print(b1.price);
}
