import 'package:e_commerce/common/styles/spacing_style.dart';
import 'package:e_commerce/common/widgets/form_divider.dart';
import 'package:e_commerce/common/widgets/social_button.dart';
import 'package:e_commerce/features/authentication/screen/login/widgets/widget/login_form.dart';
import 'package:e_commerce/features/authentication/screen/login/widgets/widget/login_header.dart';
import 'package:e_commerce/utils/constants/text_string.dart';
import 'package:e_commerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title and subtitle
              TLoginHeader(dark: dark),

              // Form
              TLoginForm(),
              // divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),

              SizedBox(height: 5),
              // footer
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
