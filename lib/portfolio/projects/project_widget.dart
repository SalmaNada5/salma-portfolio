import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/constants.dart';

class ProjectWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subTitle;
  final bool reverse; // false = image on right; true = image on left

  const ProjectWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subTitle,
    this.reverse = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          reverse ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Text(
          'Featured Project'.toUpperCase(),
          style: TextStyle(
            color: Colors.purpleAccent,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Stack(
          alignment: Alignment.centerRight,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 16, top: 16),
              decoration: BoxDecoration(
                color: Constants.primaryColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withAlpha(100),
                    blurRadius: 5,
                    offset: const Offset(-2, -2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16)),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                  width: 200,
                  height: 160.w,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 180),
              width: 600.w,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(20),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                subTitle,
                style: TextStyle(
                  color: Colors.white.withAlpha(200),
                  fontSize: 14.sp,
                ),
              ),
            ),
          ],
        ),
      ],
    );

    // final imageBox = ClipRRect(
    //   borderRadius: BorderRadius.circular(16),
    //   child: Image.asset(imagePath, fit: BoxFit.cover, width: 150.w),
    // );

    // final children = reverse ? [imageBox, textColumn] : [textColumn, imageBox];

    // return Padding(
    //   padding: EdgeInsets.symmetric(vertical: 24, horizontal: 100.w),
    //   child: Stack(
    //     alignment: reverse ? Alignment.topLeft : Alignment.topRight,
    //     children: children,
    //   ),
    // );
  }
}
