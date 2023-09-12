import 'package:mixin_knowhow/realworld-example/global/state_global.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/statefulwidget.dart';

mixin GlobalDependMixin<T extends StatefulWidget> on GlobalDataState<T> {
  String? whatIsImportant;

  void sayRender() {
    setState(() {
      print('before whatIsImportant?: $whatIsImportant');
      whatIsImportant = data.important;
      print('after whatIsImportant?: $whatIsImportant');
    });
  }
}
