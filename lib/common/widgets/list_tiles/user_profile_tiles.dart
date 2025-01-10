import 'package:e_commerce/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/images_strings.dart';
import 'package:flutter/material.dart';

class TUserProfile extends StatelessWidget {
  const TUserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text('Waqas Anjum',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .apply(color: TColors.white)),
      subtitle: Text(
        'support@mail.com',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      trailing: IconButton(
          onPressed: () {}, icon: Icon(Icons.edit, color: TColors.white)),
    );
  }
}
