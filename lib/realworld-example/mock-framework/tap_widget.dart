import 'package:mixin_knowhow/realworld-example/mock-framework/widget.dart';

class TapWidget extends Widget{
  final void Function() onTap;

  TapWidget({required this.onTap});
}