import 'package:flutter/material.dart';

extension Updates on BuildContext {
  double get mediaWidth => MediaQuery.sizeOf(this).width;
  double get mediaHeight => MediaQuery.sizeOf(this).height;
}
