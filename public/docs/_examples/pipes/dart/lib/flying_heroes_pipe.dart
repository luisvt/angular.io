// #docregion

// #docregion pure
import "package:angular2/core.dart" show Pipe, PipeTransform;
import "heroes.dart" show Flyer;

@Pipe(name: "flyingHeroes")
class FlyingHeroesPipe implements PipeTransform {
  transform(List<Flyer> allHeroes) {
    // #docregion filter
    return allHeroes.where((hero) => hero.canFly);
  }
}
// #enddocregion pure

/////// Identical except for the pure flag

// #docregion impure

// #docregion pipe-decorator
@Pipe(name: "flyingHeroes", pure: false)
class FlyingHeroesImpurePipe extends FlyingHeroesPipe {}
// #enddocregion impure
