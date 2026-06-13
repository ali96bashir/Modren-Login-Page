import 'package:flutter/material.dart';

import 'social_button.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      textDirection: TextDirection.ltr,
      children: [
        SocialButton(label: 'f'),
        SizedBox(width: 12),
        SocialButton(label: 'G'),
        SizedBox(width: 12),
        SocialButton(label: 'in'),
      ],
    );
  }
}
