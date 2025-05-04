import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/constants.dart';
import 'package:my_portfolio/portfolio/experience/experience_item_widget.dart';

class WorkExperienceSection extends StatelessWidget {
  const WorkExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Work Experience",
          style: TextStyle(
            fontSize: Constants.isFullWidth ? 16 : 34.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: RadialGradient(
                    center: Alignment.center,
                    radius: 0.8,
                    colors: [Color(0xff763CAC), Colors.transparent],
                    stops: [0.0, 1.0],
                  ),
                ),
              ),
            ),
            Wrap(
              // physics: NeverScrollableScrollPhysics(),
              // shrinkWrap: true,
              // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //   crossAxisCount: 2,
              //   crossAxisSpacing: 20,
              //   mainAxisSpacing: 20,
              //   childAspectRatio: Constants.isFullWidth ? 4 : 2,
              // ),
              spacing: 20,
              runSpacing: 20,
              children: [
                ExperienceItemWidget(
                  title: "Acute Business Solutions",
                  date: "March 2024 – Present",
                  subTitle:
                      "Developed Pivot, a company management system (attendance, HR, tasks, KB, expenses).\nContributed to Justice, a legal-support platform (company formation, contracts, compliance).",
                  svgPath: "assets/images/experience_office.svg",
                ),
                ExperienceItemWidget(
                  title: "WUD Company (What’s Up Doc)",
                  date: "Dec 2022 – July 2023",
                  subTitle:
                      "Built What’s Up Doc, a doctor–patient communication app with admin dashboard.",
                  svgPath: "assets/images/experience_medical.svg",
                ),
                ExperienceItemWidget(
                  title: "Task-Tech (Graduation Project)",
                  date: "2019 – 2023 (Suez Canal University)",
                  subTitle:
                      "Created a freelancing platform connecting graduates and business owners.",
                  svgPath: "assets/images/experience_team.svg",
                ),
                ExperienceItemWidget(
                  title: "Open Source & Side Projects",
                  subTitle:
                      "Ongoing\n• Maintaining personal packages on GitHub & contributing to Flutter community.\n• Guest Flutter projects & UI kits.",
                  svgPath: "assets/images/experience_code.svg",
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
