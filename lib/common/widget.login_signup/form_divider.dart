import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/text_string.dart';

class form_divider extends StatelessWidget {
  const form_divider({
    super.key, required dividerText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: Colors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
        Text(TTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium),
        Flexible(child: Divider(color: Colors.grey, thickness: 0.5, indent: 5, endIndent: 60)),

      ],
    );
  }
}