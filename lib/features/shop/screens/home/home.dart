import 'package:e_commerce/common/widgets/custom_shape/container/primary_header_container.dart';
import 'package:e_commerce/common/widgets/custom_shape/container/search_container.dart';
import 'package:e_commerce/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce/utils/constants/images_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSection),
                  // searchBar
                  TSearchContainer(text: 'Search In Store'),
                  SizedBox(height: TSizes.spaceBtwSection),
                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        //Categories
                        THomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),
            //body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                      TImages.promoBanner4,
                      TImages.promoBanner5,
                      TImages.promoBanner6,
                      TImages.promoBanner7,
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSection),
                  //Popular Products
                  TGridLayout(
                      itemCount: 6,
                      itemBuilder: (_, index) => TProductCardVertical())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
