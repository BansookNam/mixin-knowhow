import 'package:mixin_knowhow/animal-example/animal/animal_walkable.dart';

mixin Fly on WalkableAnimal {
  final String wing = 'Big Wing';

  void fly() {
    walk();
    print('fly with $wing');
  }
}
