// #docplaster

// #docregion
import "package:angular2/core.dart";
import "flying_heroes_pipe.dart";
import "heroes.dart";

@Component(
    selector: "flying-heroes",
    templateUrl: "flying_heroes_component.html",
    styles: const ["#flyers, #all {font-style: italic}"],
    pipes: const [FlyingHeroesPipe])
class FlyingHeroesComponent {
  List<Hero> heroes = [];
  bool canFly = true;
  // #enddocregion v1
  var title = "Flying Heroes (pure pipe)";

  String searchQuery;
  // #docregion v1
  FlyingHeroesComponent() {
    reset();
  }
  addHero(String name) {
    name = name.trim();

    if (name == null) return;

    var hero = new Hero(name: name, canFly: canFly);

    heroes.add(hero);
  }

  reset() {
    heroes = new List.from(HEROES);
  }
}
// #enddocregion v1

////// Identical except for impure pipe //////

// #docregion impure-component
@Component(
    selector: "flying-heroes-impure",
    templateUrl: "flying_heroes_component.html",
    styles: const [".flyers, .all {font-style: italic}"],
    pipes: const [FlyingHeroesImpurePipe])
class FlyingHeroesImpureComponent extends FlyingHeroesComponent {
  var title = "Flying Heroes (impure pipe)";
}
// #docregion impure-component
