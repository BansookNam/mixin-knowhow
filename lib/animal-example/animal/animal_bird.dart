//import 'package:mixin_knowhow/animal-example/ability-mixin/mixin_fly.dart';

import 'package:mixin_knowhow/animal-example/ability-mixin/mixin_fly.dart';
import 'package:mixin_knowhow/animal-example/animal/animal_walkable.dart';
import 'package:mixin_knowhow/animal-example/skill/skill_use_stick.dart';

class Bird extends WalkableAnimal with Fly {
  UseStick _useStick;
  UseStick get useStick {
    _useStick ??= UseStick('Maple');
    //??= equals with
    //if (_useStick == null) _useStick = UseStick('Maple');
    return _useStick;
  }
}
