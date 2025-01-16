import 'package:e_commerce/common/styles/rounded_container.dart';
import 'package:e_commerce/common/widgets/chips/choice_chip.dart';
import 'package:e_commerce/common/widgets/products/product_price/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        // selected Attribute Pricing and Description
        TRoundedContainer(
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: dark
              ? TColors.darkerGrey
              : const Color.fromARGB(255, 246, 244, 244),
          child: Column(
            children: [
              // Title, Price and Stack Status
              Row(
                children: [
                  TSectionHeading(title: 'Variation', showActionButton: false),
                  SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TProductTitleText(title: 'Price', smallSize: true),

                          // Actual Price
                          Text(
                            '\$25',
                            style:
                                Theme.of(context).textTheme.titleSmall!.apply(
                                      decoration: TextDecoration.lineThrough,
                                    ),
                          ),
                          SizedBox(width: TSizes.spaceBtwItems),

                          //sale Price
                          TProductPriceText(price: '20')
                        ],
                      ),
                      // stock
                      Row(
                        children: [
                          TProductTitleText(title: 'Stock', smallSize: true),
                          Text('in stock',
                              style: Theme.of(context).textTheme.titleMedium)
                        ],
                      )
                    ],
                  )
                ],
              ),

              // Variation Description
              TProductTitleText(
                title:
                    'This is the Description of the product and it can go up to max 4 lines :)',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        SizedBox(height: TSizes.spaceBtwItems),

        //Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                    text: 'Green', selected: true, onSelected: (value) {}),
                TChoiceChip(
                    text: 'Blue', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'yellow', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(
              title: 'Size',
              showActionButton: false,
            ),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                    text: 'EU 34', selected: true, onSelected: (value) {}),
                TChoiceChip(
                    text: 'EU 36', selected: false, onSelected: (value) {}),
                TChoiceChip(
                    text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        )
      ],
    );
  }
}
