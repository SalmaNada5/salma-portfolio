import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions.dart';

class Constants {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static final isFullWidth =
      (navigatorKey.currentContext?.mediaWidth ?? 0) > 1000;

  static const primaryColor = Color(0xFF1A0B2E);
}
