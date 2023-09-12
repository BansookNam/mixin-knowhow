import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/tap_widget.dart';
import 'package:mixin_knowhow/realworld-example/purchase/s_subscribe.dart';

void main(List<String> arguments) async {
  // final bird = ProblemBird();
  // bird.changeWing();
  // bird.fly();

  // final monkey = Monkey();
  // monkey.useStick.hit();

  // final animal = Bird();
  // animal.walk();
  // animal.fly();
  // animal.useStick.hit();

  // final screen = BuyGemScreen();
  // final widget = screen.createState().build(BuildContext());
  // if (widget is Tap) {
  //   widget.onTap();
  // }
  //
  // print('');

  final subscriptionScreen = SubscriptionScreen();
  final subscriptionWidget = subscriptionScreen.createState().build(BuildContext());
  if (subscriptionWidget is Tap) {
    subscriptionWidget.onTap();
  }

  // print('');

  // final likeScreen = PostScreen('1234');
  // final likeScreenWidget = likeScreen.createState().build(BuildContext());
  // await likeScreenWidget.onTap();
  // await likeScreenWidget.onTap();
  // await likeScreenWidget.onTap();
  // await likeScreenWidget.onTap();

  //print('');

  // final globalDataExistScreen = GlobalDataExistScreen();
  // final globalDataExistWidget = globalDataExistScreen.createState().build(BuildContext());
  // await globalDataExistWidget.onTap();
}
