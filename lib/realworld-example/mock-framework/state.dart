import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/statefulwidget.dart';
import 'package:meta/meta.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/widget.dart';

typedef VoidCallback = void Function();

abstract class State<T extends StatefulWidget> {
  T get widget => _widget!;
  T? _widget;

  @protected
  void setState(VoidCallback fn) {
    fn();
    print('setState Done');
  }

  Widget build(BuildContext context);
}
