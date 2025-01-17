import 'package:e_commerce/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:e_commerce/utils/constants/images_strings.dart';
import 'package:flutter/material.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 9,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final images = [
            TImages.cosmeticsIcon,
            TImages.clothIcon,
            TImages.electronicIcon,
            TImages.furnitureIcon,
            TImages.jewelryIcon,
            TImages.shoeIcon,
            TImages.sportIcon,
            TImages.toyIcon,
            TImages.animalIcon,
          ];
          final title = [
            'Cosmetics',
            'Clothing',
            'Electronic',
            'Furniture',
            'Jewelry',
            'Shoe',
            'Sport',
            'Toy',
            'Animal',
          ];
          return TVerticalImageText(
            image: images[index],
            title: title[index],
            onTap: () {},
          );
        },
      ),
    );
  }
}
