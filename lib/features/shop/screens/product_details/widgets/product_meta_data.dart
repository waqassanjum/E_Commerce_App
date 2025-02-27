import 'package:e_commerce/common/styles/rounded_container.dart';
import 'package:e_commerce/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce/common/widgets/products/product_price/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title.dart';
import 'package:e_commerce/common/widgets/texts/t_brand_title_text_with_verification_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/enums.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // price and sale price
        Row(
          children: [
            //sale Tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withAlpha(255),
              padding: EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.black)),
            ),
            SizedBox(width: TSizes.spaceBtwItems),

            // price
            Text('\$250',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            SizedBox(width: TSizes.spaceBtwItems),
            TProductPriceText(
              price: '175',
              isLarge: true,
            )
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),
        // Title
        TProductTitleText(title: 'Green Nike Sports Shirt'),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Stack Status
        Row(
          children: [
            TProductTitleText(title: 'Status'),
            SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),

        SizedBox(height: TSizes.spaceBtwItems / 1.5),
        // Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.nikeLogo,
              width: 32,
              height: 32,
              overlayColor: darkMode ? TColors.white : TColors.black,
            ),
            TBrandTitleWithVerificationIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            )
          ],
        )
      ],
    );
  }
}
