import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/extensions.dart';

class ProfilePictureWidget extends StatelessWidget {
  const ProfilePictureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/images/about_gradient.png",
          width: context.mediaWidth > 1000 ? 200 : 250.w,
        ),
        Icon(Icons.person, size: 100.w),
      ],
    );
  }
}
