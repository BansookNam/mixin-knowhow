import 'dart:math';

import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';
import 'package:mixin_knowhow/realworld-example/purchase/i_purchase.dart';
import 'package:mixin_knowhow/realworld-example/purchase/mixin/mixin_inapp_purchse.dart';
import 'package:mixin_knowhow/realworld-example/purchase/object/o_purchased_item.dart';
import 'package:mixin_knowhow/util/u_async.dart';

mixin SubscriptionMixin implements InAppPurchaseMixin, RequestPurchaseInterface {
  Future<bool> subscribe(BuildContext context, String productId) async {
    print('domain: subscribe tap: $productId');
    await sleep(200); //native in app purchase api
    final result = true; //Random().nextBool();
    if (!result) {
      return false;
    }
    final requestResult = await inAppPurchase(PurchasedItem(productId), context);
    print('domain: subscribe ${result ? "success" : "fail"}: ${productId}');
    return requestResult;
  }

  @override
  Future<bool> requestPurchase(PurchasedItem purchasedItem, BuildContext context) async {
    print('api: request subscribe start: ${purchasedItem.productId}');
    await sleep(200); //add purchase information to service server
    final result = true; //Random().nextBool();
    print('api: request subscribe ${result ? "success" : "fail"}: ${purchasedItem.productId}');
    return result;
  }
}
