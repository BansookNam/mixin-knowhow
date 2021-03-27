enum InAppPurchaseType { Gem, Subscription }

extension InAppPurchaseTypeExt on InAppPurchaseType {
  String get name {
    switch (this) {
      case InAppPurchaseType.Gem:
        return 'buy gem';
        break;
      case InAppPurchaseType.Subscription:
      default:
        return 'subscription';
        break;
    }
  }
}
