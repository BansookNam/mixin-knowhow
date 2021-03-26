import 'package:mixin_knowhow/animal-example/animal/animal_bird.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';
import 'package:mixin_knowhow/realworld-example/purchase/s_purchase_gem.dart';

void main(List<String> arguments) {
  // final animal = Bird();
  // animal.walk();
  // animal.fly();
  // animal.useStick.hit();

  final screen = PurchaseGemScreen();
  final widget = screen.createState().build(BuildContext());
  widget.onTap();
  final screen = PurchaseSubscriptionScreen();
  final widget = screen.createState().build(BuildContext());
  widget.onTap();
}
