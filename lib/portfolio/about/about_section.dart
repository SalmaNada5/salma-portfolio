import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/constants.dart';
import 'package:my_portfolio/core/extensions.dart';
import 'package:my_portfolio/portfolio/about/profile_picture_widget.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: ProfilePictureWidget(),
            ),
            Align(
              widthFactor: Constants.isFullWidth ? 2.2 : 2,
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Hello! I am ',
                      style: TextStyle(
                        fontSize: Constants.isFullWidth ? 10 : 16.sp,
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Salma Nada',
                          style: TextStyle(
                            fontSize: Constants.isFullWidth ? 10 : 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff7127BA),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    "A Flutter Developer who",
                    style: TextStyle(
                      fontSize: Constants.isFullWidth ? 10 : 16.sp,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    "Builds apps that solve real problems...",
                    style: TextStyle(
                      fontSize: Constants.isFullWidth ? 20 : 30.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    "Because a seamless experience makes the biggest impact.",
                    style: TextStyle(
                      fontSize: Constants.isFullWidth ? 8 : 14.sp,
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),
        SizedBox(
          width: context.mediaWidth * 0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "I'm a Software Engineer",
                style: TextStyle(
                  fontSize: Constants.isFullWidth ? 16 : 34.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "Currently, i'm a Software Engineer at Acute Business Solutions.",
                style: TextStyle(
                  fontSize: Constants.isFullWidth ? 12 : 20.sp,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "A passionate Flutter Developer with over 2 years of experience in crafting scalable, user-friendly mobile applications. I specialize in turning innovative ideas into impactful digital solutions, working closely with cross-functional teams including frontend, backend, and design. I’m always eager to learn and build applications that improve real-world problems through technology.",
                style: TextStyle(
                  fontSize: Constants.isFullWidth ? 12 : 20.sp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
