import 'package:mixin_knowhow/realworld-example/mock-framework/widget.dart';

class Tap extends Widget{
  final void Function() onTap;

  Tap({required this.onTap});
}