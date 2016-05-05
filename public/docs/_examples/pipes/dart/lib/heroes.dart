abstract class Flyer {
  bool canFly;
}

class Hero {
  final name;
  final canFly;

  Hero({this.name, this.canFly});
}

final HEROES = [
  new Hero(name: "Windstorm", canFly: true),
  new Hero(name: "Bombasto", canFly: false),
  new Hero(name: "Magneto", canFly: false),
  new Hero(name: "Tornado", canFly: true)
];
