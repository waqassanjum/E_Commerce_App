import 'package:e_commerce/common/styles/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.white,
      padding: EdgeInsets.only(
          top: TSizes.sm, bottom: TSizes.sm, right: TSizes.sm, left: TSizes.sm),
      child: Row(
        children: [
          // TextField
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a Promo Code ? Enter Here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          // Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? TColors.white.withAlpha(128)
                    : TColors.dark.withAlpha(128),
                backgroundColor: Colors.grey.withAlpha(128),
                side: BorderSide(color: Colors.grey.withAlpha(128)),
              ),
              child: Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}
