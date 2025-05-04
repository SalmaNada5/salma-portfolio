import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/app_theme.dart';
import 'package:my_portfolio/core/constants.dart';
import 'package:my_portfolio/portfolio/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppThemes.appTheme,
          home: child,
          navigatorKey: Constants.navigatorKey,
        );
      },
      child: MainPage(),
    );
  }
}
