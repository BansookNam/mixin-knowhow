import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/state.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/statefulwidget.dart';
import 'package:mixin_knowhow/realworld-example/mock-framework/widget.dart';
import 'package:mixin_knowhow/realworld-example/purchase/mixin/mixin_buy_gem.dart';
import 'package:mixin_knowhow/realworld-example/purchase/mixin/mixin_inapp_purchse.dart';

class PurchaseGemScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PurchaseScreenState();
  }
}

class PurchaseScreenState extends State<PurchaseGemScreen> with InAppPurchaseMixin, BuyGemMixin {
  @override
  Widget build(BuildContext context) {
    return Widget(onTap: () async {
      final result = await buyGem(context, 'Gem_1250');
      print("====Buy ${result ? "success" : "failed"}====");
    });
  }
}
