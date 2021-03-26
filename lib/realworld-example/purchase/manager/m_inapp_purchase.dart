import 'package:mixin_knowhow/realworld-example/mock-framework/buildcontext.dart';
import 'package:mixin_knowhow/realworld-example/purchase/i_purchase.dart';

class InAppPurchaseManager {
  final RequestPurchaseInterface requestPurchaseInterface;

  InAppPurchaseManager(this.requestPurchaseInterface);

  Future<bool> buyGem(BuildContext context, String productId) async {
    return true;
  }
}
