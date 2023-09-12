import '../animal/animal.dart';

mixin EatMixin on Animal{
  void eat() {
    print('eat');
  }
}
