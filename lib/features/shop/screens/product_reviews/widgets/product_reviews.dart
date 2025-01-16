import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:e_commerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: TAppBar(title: Text('Reviews and Rating'), showBackArrow: true),

      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Rating and reviews are verified and are from the people who use the same type of device that you use'),
              SizedBox(height: TSizes.spaceBtwItems),

              // Overall Product Rating
              TOverallProductRating(),
              TRatingBarIndicator(
                rating: 3.5,
              ),
              Text(
                '12,655',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height: TSizes.spaceBtwSection),

              // user Review List
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
