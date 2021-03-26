import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';
import 'package:mixin_knowhow/realworld-example/purchase/i_purchase.dart';
import 'package:mixin_knowhow/realworld-example/purchase/object/o_purchased_item.dart';

class SubscribeManager implements RequestPurchaseInterface {
  @override
  Future<bool> requestPurchase(PurchasedItem purchasedItem, BuildContext context) async {
    return true;
  }
}
