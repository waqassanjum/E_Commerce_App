import 'package:e_commerce/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:e_commerce/features/shop/screens/sub_categories/sub_category.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            TImages.electronicsIcon,
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
            onTap: () => Get.to(() => SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}
