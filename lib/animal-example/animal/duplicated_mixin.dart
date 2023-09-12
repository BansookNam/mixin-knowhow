import 'package:mixin_knowhow/animal-example/ability-mixin/fly2_mixin.dart';
import 'package:mixin_knowhow/animal-example/ability-mixin/fly_mixin.dart';
import 'package:mixin_knowhow/animal-example/animal/animal.dart';

class ProblemBird extends Animal with FlyMixin, Fly2Mixin {
}
