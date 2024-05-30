class Book {
  //attribute
  String? name;
  String? _id;
  String? auther;
  int? year;
  String? disc;
  double? price;
  double? _libraryPrice;
  List? category;

  //constructor
  //Book(this.name, this.auther, this.category, this.disc, this.price, this.year);
  Book.secondConstractor(
      {this.name,
      this.auther,
      this.category,
      this.disc,
      this.price,
      this.year});
  //required constractor
  Book(
      {required String id,
      required this.name,
      required this.auther,
      required this.category,
      required this.disc,
      required double libraryPrice,
      required this.year})
      : _id = id,
        _libraryPrice = libraryPrice,
        price = (libraryPrice + (libraryPrice * 0.15));

//get
  String get id => _id!;
  //set
  set id(String id) => _id = id;

  //methods
  @override
  String toString() {
    // TODO: implement toString
    return 'this book info $name ,$disc';
  }

  void read() {
    print('you start reading book $name');
  }

  void buy() {
    print('you bought this book $name  price : $price');
  }

  void rint() {
    print('you rint book $name');
  }

  mark() {}
}

void main(List<String> args) {
  // Book b3 = Book.secondConstractor(
  //     name: 'book1',
  //     auther: 'author1',
  //     category: ['cati1'],
  //     disc: 'this is book1',
  //     price: 50,
  //     year: 2019);
  // print(b3);
  Book b3 = Book(
      id: '11',
      name: 'book1',
      auther: 'author1',
      category: ['cati1'],
      disc: 'this is book1',
      libraryPrice: 50,
      year: 2019);
  print('-------------------');

  print(b3);
  print(b3._id);
  print('-------------------');

  //
  // Book b1 = Book(
  //     'xxxx', 'mohammad sadeq', ['novel', 'yyyy'], 'this is disc', 5.5, 2020);
  // print(b1);
  // b1.read();
  // b1.buy();
  // b1.rint();
  //print('-------------------');
  //
  // Book b2 = Book('calculas', 'aaaaaaa', ['theory', 'claculation'],
  //     'this is book disc', 9.5, 2019);
  // print(b2);
}
