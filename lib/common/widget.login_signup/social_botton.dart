import 'package:flutter/material.dart';

import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';

class social_button extends StatelessWidget {
  const social_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border:Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.googleLogo),
            ),
          ),

        ),

        const SizedBox(width: TSizes.spaceBtwItems),

        Container(
          decoration: BoxDecoration(border:Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.facebookLogo),
            ),
          ),

        )
      ],
    );
  }
}