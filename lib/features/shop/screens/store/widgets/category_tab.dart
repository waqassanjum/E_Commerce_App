import 'package:e_commerce/common/widgets/brands/brand_show_case.dart';
import 'package:e_commerce/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/images_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Brands
              TBrandShowCase(
                images: [
                  TImages.productImage38,
                  TImages.productImage43,
                  TImages.productImage44
                ],
              ),
              TBrandShowCase(
                images: [
                  TImages.productImage43,
                  TImages.productImage38,
                  TImages.productImage44
                ],
              ),
              SizedBox(height: TSizes.spaceBtwItems),

              // Products
              TSectionHeading(title: 'You Might Like', onPressed: () {}),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => TProductCardVertical())
            ],
          ),
        ),
      ],
    );
  }
}
