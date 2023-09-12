import 'package:mixin_knowhow/animal-example/animal/animal.dart';

mixin WalkableMixin on Animal{
  void walk() {
    print('walk');
  }
}
