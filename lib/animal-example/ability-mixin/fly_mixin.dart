import 'package:mixin_knowhow/animal-example/ability-abstract-class/animal_walkable_inherite.dart';

mixin FlyMixin  {
  String _wing = 'Big Wing';

  void fly() {
    print('fly with $_wing');
  }

  void changeWing(){
    _wing = 'Very Big Wing';
  }
}
