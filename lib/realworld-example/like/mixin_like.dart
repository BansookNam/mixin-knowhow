import 'package:mixin_knowhow/realworld-example/mock-framework/state.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/statefulwidget.dart';
import 'package:mixin_knowhow/util/u_async.dart';

mixin LikeMixin<T extends StatefulWidget> on State<T> {
  String get postId;
  bool isLike = false;

  Future<void> like(bool like) async {
    print('like: $like');
    await sleep(200); //like api with postId
    final result = like;
    setState(() {
      isLike = result;
    });
  }
}
