import 'package:dio_clean_learn/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class SideImage extends StatelessWidget {
  const SideImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(Sizes.p32),
          bottomRight: Radius.circular(Sizes.p32),
        ),
        child: Image.asset(
          'assets/images/side_image_login.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
