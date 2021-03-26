import 'package:mixin_knowhow/realworld-example/global/mixin_global.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/state.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/statefulwidget.dart';

abstract class GlobalDataState<T extends StatefulWidget> extends State<T> with GlobalDataMixin {}
