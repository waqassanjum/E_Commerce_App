import 'package:e_commerce/common/styles/rounded_container.dart';
import 'package:e_commerce/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(TImages.userProfileImage1),
                ),
                SizedBox(width: TSizes.spaceBtwItems),
                Text(
                  'Jhon doe',
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),
        SizedBox(width: TSizes.spaceBtwItems),
        // Review
        Row(
          children: [
            TRatingBarIndicator(rating: 4),
            SizedBox(width: TSizes.spaceBtwItems),
            Text('01 Nov, 2024', style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems),
        ReadMoreText(
          "The app interface is simple, modern, and easy to use. Navigation is straightforward, with clear buttons and a well-structured layout. The color palette is visually pleasing and doesn’t strain the eyes during prolonged use. Features are easy to locate, and the design feels smooth and responsive. While the overall experience is excellent, adding a dark mode or more customization options could make it even better. A great interface for users who value functionality and aesthetics.",
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Show Less',
          trimCollapsedText: 'Show More',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
        ),
        SizedBox(height: TSizes.spaceBtwItems),

        // company Review
        TRoundedContainer(
          height: 105,
          backgroundColor: dark
              ? TColors.darkerGrey
              : const Color.fromARGB(255, 211, 205, 205),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('E Store',
                      style: Theme.of(context).textTheme.titleMedium),
                  Text('02 Nov 2024',
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              ReadMoreText(
                "The app interface is clean, intuitive, and user-friendly. The navigation is smooth, with well-organized menus and clear icons, making it easy to access key features. The color scheme and typography are visually appealing, ensuring a pleasant user experience. The responsive design adapts seamlessly across devices, while animations and transitions add a polished touch. However, minor improvements, like reducing loading times or adding a dark mode, could enhance usability further. Overall, the app provides a professional and functional interface suitable for users of all technical levels.",
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimExpandedText: 'Show Less',
                trimCollapsedText: 'Show More',
                moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary),
                lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: TColors.primary),
              ),
            ],
          ),
        ),
        SizedBox(height: TSizes.spaceBtwItems)
      ],
    );
  }
}
