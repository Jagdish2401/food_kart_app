import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:sgp/utils/constants/text_string.dart';

import '../../../../common/widget.login_signup/form_divider.dart';
import '../../../../common/widget.login_signup/social_botton.dart';
import '../../../../utils/constants/sizes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),
              Form(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: TTexts.firstName,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                      const SizedBox(width: TSizes.spaceBtwInputField),
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(
                              labelText: TTexts.lastName,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputField),
                  TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TTexts.username,
                        prefixIcon: Icon(Iconsax.user_edit)),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputField),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: TTexts.email,
                        prefixIcon: Icon(Iconsax.direct)),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputField),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: TTexts.phoneNo,
                        prefixIcon: Icon(Iconsax.call)),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputField),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: TTexts.password,
                        prefixIcon: Icon(Iconsax.lock),
                        suffixIcon: Icon(Iconsax.eye_slash)),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputField),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(TTexts.createAccount)),
                  ),

                  // const SizedBox(height: TSizes.spaceBtwInputField),
                  const SizedBox(height: TSizes.spaceBtwSections),


                  form_divider(dividerText: TTexts.orSignUpWith.capitalize!),

                  const SizedBox(height: TSizes.spaceBtwSections),

                  const social_button(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
