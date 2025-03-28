import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../products.cart/product_cards/brand_card.dart';
class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkerGrey,
      backgroundColor: Colors.transparent,
      padding:  const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          const TBrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBtwItems),

          Row(
              children: images.map( (image) => BrandTopProductImageWidget(image, context)).toList()
          ),
        ],
      ),
    );
  }
}

Widget BrandTopProductImageWidget(String image,context){
  return Expanded(
    child: TRoundedContainer(
      height: 100,
      backgroundColor: THelperFunction.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
      margin: const EdgeInsets.only(right: TSizes.sm),
      padding: const EdgeInsets.all(TSizes.sm),
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ),
  );
}