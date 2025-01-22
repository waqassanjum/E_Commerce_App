import 'package:e_commerce/common/styles/rounded_container.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/products/cart/coupon.dart';
import 'package:e_commerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Order Review',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Items in Cart
              TCartItems(
                showAddRemoveButton: false,
              ),
              SizedBox(height: TSizes.spaceBtwSections),

              // Coupon TextField
              TCouponCode(),

              SizedBox(height: TSizes.spaceBtwSections),

              //Billing Section
              TRoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(TSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    //Pricing
                    TBillingPaymentScreen(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    //Divider
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),
                    //Payment Method
                    //Address
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
