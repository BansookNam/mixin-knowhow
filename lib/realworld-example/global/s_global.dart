import 'package:mixin_knowhow/realworld-example/global/mixin_global_depend.dart';
import 'package:mixin_knowhow/realworld-example/like/mixin_like.dart';
import 'package:mixin_knowhow/realworld-example/global/mixin_global.dart';
import 'package:mixin_knowhow/realworld-example/global/state_global.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/state.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/statefulwidget.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/widget.dart';

class GlobalDataExistScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScreenState();
  }
}

class _ScreenState extends GlobalDataState<GlobalDataExistScreen> with GlobalDependMixin {
  @override
  Widget build(BuildContext context) {
    return Widget(onTap: () async {
      sayRender();
    });
  }
}
