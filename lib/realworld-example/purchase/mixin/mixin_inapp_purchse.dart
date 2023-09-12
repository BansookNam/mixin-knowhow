import 'dart:math';

import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';
import 'package:mixin_knowhow/realworld-example/purchase/request_purchase_interface.dart';
import 'package:mixin_knowhow/realworld-example/purchase/mixin/enum_inapp_type.dart';
import 'package:mixin_knowhow/realworld-example/purchase/object/o_purchased_item.dart';
import 'package:mixin_knowhow/util/u_async.dart';

mixin InAppPurchaseMixin implements RequestPurchaseInterface {
  Future<bool> inAppPurchase(InAppPurchaseType type, BuildContext context, String productId) async {
    print('domain: ${type.name} tap: $productId');
    final purchasedItem = PurchasedItem(productId);
    final result = await inAppPurchaseNative(purchasedItem, context);
    if (!result) {
      print('domain: ${type.name} failed: ${productId}');
      return false;
    }
    final requestResult = await requestPurchase(purchasedItem, context);
    print('domain: ${type.name} ${requestResult ? "success" : "failed"}: ${productId}');
    return requestResult;
  }

  Future<bool> inAppPurchaseNative(PurchasedItem purchasedItem, BuildContext context) async {
    print('native: inAppPurchase start: ${purchasedItem.productId}');
    await sleep(200); //add purchase information to service server
    final result = true; //Random().nextBool();
    print('native: inAppPurchase ${result ? "success" : "failed"}: ${purchasedItem.productId}');
    return result;
  }
}
