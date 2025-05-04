import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/portfolio/about/about_section.dart';
import 'package:my_portfolio/portfolio/contact_me/contact_me_section.dart';
import 'package:my_portfolio/portfolio/experience/work_experience_section.dart';
import 'package:my_portfolio/portfolio/projects/projects_section.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Portfolio')),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 100.w, vertical: 20),
        child: Column(
          spacing: 40,
          children: [
            AboutSection().animate().slideY(
              duration: Duration(milliseconds: 500),
            ),
            WorkExperienceSection().animate().slideY(),
            ProjectsSection().animate().slideY(
              duration: Duration(milliseconds: 500),
            ),
            ContactMeSection().animate().slideY(
              duration: Duration(milliseconds: 500),
            ),
          ],
        ),
      ),
    );
  }
}
