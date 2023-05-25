
import 'package:flutter/material.dart';
import 'package:punching_attendance/src/constants/colors/colors.dart';

class AppTheme{
  static final colors=AppColors();
  static ThemeData define(){
    return ThemeData(
      primaryColor: const Color(0xff00CECE),

    );
  }
}

