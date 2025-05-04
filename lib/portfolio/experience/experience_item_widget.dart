import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/constants.dart';

class ExperienceItemWidget extends StatelessWidget {
  const ExperienceItemWidget({
    super.key,
    required this.title,
    this.date,
    required this.subTitle,
    required this.svgPath,
  });
  final String title;
  final String? date;
  final String subTitle;
  final String svgPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600.w,
      height: 150,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF3B1E6B), Color(0xFF1A0B2E)],
          stops: [0.0, 1.0],
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xff763CAC),
            blurRadius: 2,
            offset: const Offset(2, 0),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 5,
        children: [
          SvgPicture.asset(svgPath, width: 50.w),
          SizedBox(
            width: 400.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: Constants.isFullWidth ? 14 : 18.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                if (date != null)
                  Text(
                    date!,
                    style: TextStyle(
                      fontSize: Constants.isFullWidth ? 12 : 16.sp,
                      color: Colors.white70,
                    ),
                  ),
                Text(
                  subTitle,
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    fontSize: Constants.isFullWidth ? 12 : 16.sp,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
