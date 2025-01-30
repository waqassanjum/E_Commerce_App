import 'package:e_commerce/common/styles/rounded_container.dart';
import 'package:e_commerce/common/widgets/images/t_rounded_images.dart';
import 'package:e_commerce/common/widgets/products/icons/t_circular.dart';
import 'package:e_commerce/common/widgets/products/product_price/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title.dart';
import 'package:e_commerce/common/widgets/texts/t_brand_title_text_with_verification_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white),
      child: Row(
        children: [
          // thumbnails
          TRoundedContainer(
            height: 120,
            padding: EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                // thumbnails image
                TRoundedImage(
                  imageUrl: TImages.productImage1,
                  applyImageRadius: true,
                ),
                // Sale Tag
                Positioned(
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withAlpha(204),
                    padding: EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: TColors.black),
                    ),
                  ),
                ),
                // Favorites Icon Button
                Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(
                    icon: Icons.favorite,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          //Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(
                          title: 'Green Nike Shoes sizes 42', smallSize: true),
                      SizedBox(
                        height: TSizes.spaceBtwItems / 2,
                      ),
                      TBrandTitleWithVerificationIcon(title: 'Nike'),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: TProductPriceText(price: '256.0')),
                      // Add to cart
                      Container(
                        decoration: BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius),
                            )),
                        child: SizedBox(
                          width: TSizes.iconLg * 1.1,
                          height: TSizes.iconLg * 1.1,
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
          )
        ],
      ),
    );
  }
}
