import 'package:e_commerce/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_commerce/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // product image slider
            TProductImageSlider(),

            // product details

            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  // rating and share button

                  TRatingAndShare(),

                  // Price , Title, Stack, and Brands

                  TProductMetaData(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
