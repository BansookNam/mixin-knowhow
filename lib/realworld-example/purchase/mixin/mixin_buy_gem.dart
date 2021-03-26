import 'dart:math';

import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';
import 'package:mixin_knowhow/realworld-example/purchase/i_purchase.dart';
import 'package:mixin_knowhow/realworld-example/purchase/mixin/mixin_inapp_purchse.dart';
import 'package:mixin_knowhow/realworld-example/purchase/object/o_purchased_item.dart';
import 'package:mixin_knowhow/util/u_async.dart';

mixin BuyGemMixin implements InAppPurchaseMixin, RequestPurchaseInterface {
  Future<bool> buyGem(BuildContext context, String productId) async {
    print('domain: buyGem start: $productId');
    final purchasedItem = PurchasedItem(productId);
    final result = await inAppPurchase(purchasedItem, context); //native purchase
    if (!result) {
      print('domain: buyGem failed: ${productId}');
      return false;
    }
    final requestResult = await requestPurchase(purchasedItem, context);
    print('domain: buyGem ${requestResult ? "success" : "failed"}: ${productId}');
    return requestResult;
  }

  @override
  Future<bool> requestPurchase(PurchasedItem purchasedItem, BuildContext context) async {
    print('api: request buy gem start: ${purchasedItem.productId}');
    await sleep(200); //add purchase information to service server
    final result = true; //Random().nextBool();
    print('api: request buy gem ${result ? "success" : "failed"}: ${purchasedItem.productId}');
    return result;
  }
}
