import 'dart:math';

import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';
import 'package:mixin_knowhow/realworld-example/purchase/object/o_purchased_item.dart';
import 'package:mixin_knowhow/util/u_async.dart';

mixin InAppPurchaseMixin {
  Future<bool> inAppPurchase(PurchasedItem purchasedItem, BuildContext context) async {
    print('native: inAppPurchase start: ${purchasedItem.productId}');
    await sleep(200); //add purchase information to service server
    final result = true; //Random().nextBool();
    print('native: inAppPurchase ${result ? "success" : "fail"}: ${purchasedItem.productId}');
    return result;
  }
}
