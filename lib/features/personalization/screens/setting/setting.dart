import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shape/container/primary_header_container.dart';
import 'package:e_commerce/common/widgets/list_tiles/setting_menu_title.dart';
import 'package:e_commerce/common/widgets/list_tiles/user_profile_tiles.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/authentication/screen/login/widgets/login_screen.dart';
import 'package:e_commerce/features/personalization/screens/profile/profile.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),

                  // user profile card
                  TUserProfile(onPressed: () => Get.to(() => ProfileScreen())),
                  SizedBox(height: TSizes.spaceBtwSection),
                ],
              ),
            ),
            //body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //Account SSetting
                  TSectionHeading(
                    title: 'Account Setting',
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSettingMenuTile(
                      icon: Icons.home,
                      title: 'My Address',
                      subTitle: 'Set Shopping Address'),
                  TSettingMenuTile(
                      icon: Icons.shopping_cart,
                      title: 'My Cart',
                      subTitle: 'Add or Remove Product and move to checkout'),
                  TSettingMenuTile(
                      icon: Icons.shopping_bag,
                      title: 'My Orders',
                      subTitle: 'In Progress aor Complete Order'),
                  TSettingMenuTile(
                      icon: Icons.account_balance,
                      title: 'Bank Account',
                      subTitle: 'Withdraw balance to register bank account'),
                  TSettingMenuTile(
                      icon: Icons.flash_on,
                      title: 'My Coupons',
                      subTitle: 'List of All the discount coupons'),
                  TSettingMenuTile(
                      icon: Icons.notifications,
                      title: 'Notification',
                      subTitle: 'Set any type of Notification'),
                  TSettingMenuTile(
                      icon: Icons.manage_accounts,
                      title: 'Account Privacy',
                      subTitle: 'Manage Data usage and connected accounts'),

                  // App Setting
                  SizedBox(height: TSizes.spaceBtwSection),
                  TSectionHeading(
                      title: 'App Setting', showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TSettingMenuTile(
                    icon: Icons.document_scanner,
                    title: 'Load Data',
                    subTitle: 'Upload data to your Cloud firebase',
                  ),
                  TSettingMenuTile(
                    icon: Icons.location_city,
                    title: 'GeoLocation',
                    subTitle: 'Set recommended based on location ',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingMenuTile(
                    icon: Icons.security,
                    title: 'Safe Mode',
                    subTitle: 'Search result in safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingMenuTile(
                    icon: Icons.image,
                    title: 'HD Images Quality',
                    subTitle: 'HD images quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  // LogOut Button
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () => Get.to(() => LoginScreen()),
                        child: Text('Logout')),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSection * 2.5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
