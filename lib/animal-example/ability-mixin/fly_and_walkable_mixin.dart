import 'package:mixin_knowhow/animal-example/ability-abstract-class/animal_walkable_inherite.dart';

import 'fly_mixin.dart';

mixin FlyAndWalkableMixin on WalkableAnimal implements FlyMixin {
  final String wing = 'Big Wing';

  @override
  void fly() {
    walk();
    print('fly with $wing');
  }
}
