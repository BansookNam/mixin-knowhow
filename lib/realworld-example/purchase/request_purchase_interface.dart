import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';

import 'object/o_purchased_item.dart';

abstract interface class RequestPurchaseInterface {
  Future<bool> requestPurchase(PurchasedItem purchasedItem, BuildContext context);
}
