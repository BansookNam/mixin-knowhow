import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/state.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/statefulwidget.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/tap_widget.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/widget.dart';
import 'package:mixin_knowhow/realworld-example/purchase/mixin/enum_inapp_type.dart';
import 'package:mixin_knowhow/realworld-example/purchase/mixin/mixin_inapp_purchse.dart';
import 'package:mixin_knowhow/realworld-example/purchase/mixin/mixin_subscription.dart';

class SubscriptionScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScreenState();
  }
}

class _ScreenState extends State<SubscriptionScreen> with SubscriptionMixin, InAppPurchaseMixin {
  @override
  Widget build(BuildContext context) {
    return Tap(onTap: () async {
      print('====Subscribe Button Tapped====');
      final result = await inAppPurchase(InAppPurchaseType.Subscription, context, 'subscribe_1month');
      print("====Subscribe ${result ? "success" : "failed"}====");
    });
  }
}
