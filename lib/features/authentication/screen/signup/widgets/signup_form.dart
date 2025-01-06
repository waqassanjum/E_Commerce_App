import 'package:e_commerce/features/authentication/screen/signup/verify_email.dart';
import 'package:e_commerce/features/authentication/screen/signup/widgets/term_condition_checkbox.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(width: TSizes.spaceBtwInputField),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: TSizes.spaceBtwInputField),
          //username
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.userName,
              prefixIcon: Icon(Icons.person_2),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputField),
          //password
          //email
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Icons.email),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputField),
          //phone number
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Icons.call),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputField),
          //password
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Icons.password),
              suffixIcon: Icon(Icons.visibility),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwSection),
          //Term and conditions
          TTermAndConditionCheckBox(),
          SizedBox(height: TSizes.spaceBtwSection),
          // Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => VerifyEmailScreen()),
              child: Text(TTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
