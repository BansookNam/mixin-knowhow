import 'package:mixin_knowhow/animal-example/ability-abstract-class/animal_walkable_inherite.dart';

mixin Fly2Mixin  {
  final String _wing = 'Small Wing';

  void fly() {
    print('fly!!! with $_wing');
  }
}
