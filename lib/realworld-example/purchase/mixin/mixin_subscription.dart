import 'dart:math';

import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';
import 'package:mixin_knowhow/realworld-example/purchase/request_purchase_interface.dart';
import 'package:mixin_knowhow/realworld-example/purchase/mixin/mixin_inapp_purchse.dart';
import 'package:mixin_knowhow/realworld-example/purchase/object/o_purchased_item.dart';
import 'package:mixin_knowhow/util/u_async.dart';

mixin SubscriptionMixin implements InAppPurchaseMixin, RequestPurchaseInterface {
  @override
  Future<bool> requestPurchase(PurchasedItem purchasedItem, BuildContext context) async {
    print('api: request subscribe start: ${purchasedItem.productId}');
    await sleep(200); //add purchase information to service server
    final result = true; //Random().nextBool();
    print('api: request subscribe ${result ? "success" : "failed"}: ${purchasedItem.productId}');
    return result;
  }
}
