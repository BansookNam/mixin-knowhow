import '../animal/animal.dart';

abstract class WalkableAnimal extends Animal{
  void walk() {
    print('walk');
  }
}
