import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';
import 'package:mixin_knowhow/realworld-example/purchase/object/o_purchased_item.dart';

import '../request_purchase_interface.dart';

class BuyGemManager implements RequestPurchaseInterface {
  @override
  Future<bool> requestPurchase(PurchasedItem purchasedItem, BuildContext context) async {
    return true;
  }
}
