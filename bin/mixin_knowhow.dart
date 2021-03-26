import 'package:mixin_knowhow/animal-example/animal/animal_bird.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';
import 'package:mixin_knowhow/realworld-example/purchase/s_buy_gem.dart';
import 'package:mixin_knowhow/realworld-example/purchase/s_subscribe.dart';

void main(List<String> arguments) async {
  // final animal = Bird();
  // animal.walk();
  // animal.fly();
  // animal.useStick.hit();

  final screen = BuyGemScreen();
  final widget = screen.createState().build(BuildContext());
  await widget.onTap();

  print('');

  final subscriptionScreen = SubscriptionScreen();
  final subscriptionWidget = subscriptionScreen.createState().build(BuildContext());
  await subscriptionWidget.onTap();
}
