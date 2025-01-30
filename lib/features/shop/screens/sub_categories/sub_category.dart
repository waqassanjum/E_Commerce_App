import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/images/t_rounded_images.dart';
import 'package:e_commerce/common/widgets/products/product_card_horizontal.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Sport '), showBackArrow: true),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            // Banner
            TRoundedImage(
              width: double.infinity,
              imageUrl: TImages.promoBanner3,
              applyImageRadius: true,
            ),
            SizedBox(height: TSizes.spaceBtwSections),

            // Sub-Categories
            Column(
              children: [
                // Heading
                TSectionHeading(title: 'Sports Shirts', onPressed: () {}),
                SizedBox(height: TSizes.spaceBtwItems / 2),

                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) =>
                        SizedBox(width: TSizes.spaceBtwItems),
                    itemBuilder: (context, index) => TProductCardHorizontal(),
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
