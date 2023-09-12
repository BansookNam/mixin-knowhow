import 'package:mixin_knowhow/realworld-example/like/mixin_like.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/state.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/statefulwidget.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/tap_widget.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/widget.dart';

class PostScreen extends StatefulWidget {
  final String postId;

  PostScreen(this.postId);
  @override
  State<StatefulWidget> createState() {
    return _ScreenState();
  }
}

class _ScreenState extends State<PostScreen> with LikeMixin {
  @override
  String get postId => widget.postId;

  @override
  Widget build(BuildContext context) {
    return Tap(onTap: () async {
      print('====Like Button Tapped, isLike: $isLike');
      await like(!isLike);
      print('====Like Done isLike: $isLike ====');
    });
  }
}
