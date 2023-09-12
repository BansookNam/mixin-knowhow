import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/state.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/statefulwidget.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/tap_widget.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/widget.dart';
import 'package:mixin_knowhow/realworld-example/purchase/manager/m_buy_gem.dart';
import 'package:mixin_knowhow/realworld-example/purchase/mixin/enum_inapp_type.dart';
import 'package:mixin_knowhow/realworld-example/purchase/mixin/mixin_buy_gem.dart';
import 'package:mixin_knowhow/realworld-example/purchase/mixin/mixin_inapp_purchse.dart';

class BuyGemScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScreenState();
  }
}

class _ScreenState extends State<BuyGemScreen> with InAppPurchaseMixin, BuyGemMixin {
  BuyGemManager manager = BuyGemManager();

  @override
  Widget build(BuildContext context) {
    return Tap(onTap: () async {
      print('====Buy Gem Button Tapped====');
      final result = await inAppPurchase(InAppPurchaseType.Gem, context, 'Gem_1250');
      print("====Buy Gem ${result ? "success" : "failed"}====");
    });
  }
}
