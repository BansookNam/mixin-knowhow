import 'package:meta/meta.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/state.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/widget.dart';

abstract class StatefulWidget extends Widget {

  @protected
  @factory
  State createState();
}
