import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:sgp/features/shop/screens/passwords/forget_password.dart';

import '../../../../../navigation.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';
import '../../signup/signup.dart';

class Login_Form extends StatelessWidget {
  const Login_Form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
                decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right), labelText: TTexts.email)
            ),
            const SizedBox(height:TSizes.spaceBtwInputField),
            TextFormField(
              decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check), labelText: TTexts.password, suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: TSizes.spaceBtwInputField / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(TTexts.rememberMe),
                  ],
                ),

                TextButton(onPressed: () => Get.to(() => const ForgetPassword()), child: const Text(TTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const Navigation()), child: const Text(TTexts.signIn))),
            const SizedBox(height: TSizes.spaceBtwItems),

            SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(() => SignupScreen()), child: const Text(TTexts.createAccount))),
            const SizedBox(height: TSizes.spaceBtwSections),

          ],
        ),
      ),
    );
  }
}