import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Rating
        Row(
          children: [
            Icon(Icons.star, color: Colors.amber, size: 24),
            SizedBox(width: TSizes.spaceBtwItems / 2),
            Text.rich(TextSpan(children: [
              TextSpan(children: [
                TextSpan(
                    text: '0.5', style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(text: '(199)')
              ])
            ]))
          ],
        ),
        // Share Button
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              size: TSizes.iconMd,
              color: dark ? TColors.darkerGrey : TColors.light,
            ))
      ],
    );
  }
}
