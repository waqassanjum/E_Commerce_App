class TPricingCalculator {
  // --Calculate Price based on the tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// -- calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// -- calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  // -- Get the tax rate for a location
  static double getTaxRateForLocation(String location) {
    if (location == 'US') {
      return 0.06;
    } else if (location == 'UK') {
      return 0.05;
    } else if (location == 'CA') {
      return 0.07;
    } else {
      return 0.0;
    }
  }

  // -- Get the shipping cost for a location
  static double getShippingCost(String location) {
    if (location == 'US') {
      return 10.0;
    } else if (location == 'UK') {
      return 15.0;
    } else if (location == 'CA') {
      return 20.0;
    } else {
      return 0.0;
    }
  }
}
