import 'package:e_commerce/common/styles/rounded_container.dart';
import 'package:e_commerce/common/styles/shadows.dart';
import 'package:e_commerce/common/widgets/images/t_rounded_images.dart';
import 'package:e_commerce/common/widgets/products/icons/t_circular.dart';
import 'package:e_commerce/common/widgets/products/product_price/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title.dart';
import 'package:e_commerce/common/widgets/texts/t_brand_title_text_with_verification_icon.dart';
import 'package:e_commerce/features/shop/screens/product_details/product_details.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => ProductDetail()),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            // Thumbnails, wishlist button, discount
            TRoundedContainer(
              height: 150,
              padding: EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  TRoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),
                  //sale tags
                  Positioned(
                    top: -5,
                    left: -1,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withAlpha(40),
                      padding: EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xxs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
                  //Favorite ICons buttons
                  Positioned(
                    top: -10,
                    right: -10,
                    child: TCircularIcon(
                      icon: Icons.favorite,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            // Details
            Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TProductTitleText(
                      title: 'Laptop on 25% off',
                      smallSize: true,
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwItems / 2,
                    ),
                    TBrandTitleWithVerificationIcon(
                      title: 'Laptop',
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //price
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.sm),
                  child: TProductPriceText(
                    price: '50.2',
                  ),
                ),
                //Add to cart button

                Container(
                  decoration: BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: TColors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
