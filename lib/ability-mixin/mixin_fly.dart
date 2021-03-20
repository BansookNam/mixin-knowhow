import 'package:mixin_knowhow/animal/animal_walkable.dart';

mixin Fly on WalkableAnimal {
  void fly() {
    walk();
    print('fly');
  }
}
