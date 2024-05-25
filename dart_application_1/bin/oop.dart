void main(List<String> args) {
  Car car = Car();
  car.carInfo();
  Player p = Player();
  p.playerInfo();
}

class Car {
  String? brand = 'xxx';
  String? model = 'yyy';
  int? year = 2024;
  String? color = 'black';

  void carInfo() {
    print('brand : $brand');
    print('model : $model');
    print('year : $year');
    print('color : $color');
  }
}

class Player {
  String? name = 'xxx';
  double? tall = 180;
  String? nationalty = 'Jordanian';
  String? club = 'zzzz';

  void playerInfo() {
    print('name : $name');
    print('tall : $tall');
    print('nationalty : $nationalty');
    print('club : $club');
  }
}
