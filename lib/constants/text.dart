import 'package:flutter/material.dart';
import 'package:quiz_app/constants/color.dart';

class AppTheme {
  AppTheme._();

  static const _urbanist = 'Urbanist';
  static const _spaceGrotest = 'SpaceGrotesk';

  static const TextStyle spaceHeadline = TextStyle(
    fontFamily: _spaceGrotest,
    fontWeight: FontWeight.w500,
    fontSize: 36,
    letterSpacing: 0.27,
    color: AppColors.primaryGreen,
  );
  static const TextStyle urbanistTitle1 = TextStyle(
    fontFamily: _urbanist,
    fontWeight: FontWeight.w500,
    fontSize: 36,
    letterSpacing: 0.27,
    color: AppColors.primaryGreen,
  );
  static const TextStyle urbanistsubTitle1 = TextStyle(
    fontFamily: _urbanist,
    fontWeight: FontWeight.w400,
    fontSize: 15,
    letterSpacing: 0.27,
    color: AppColors.black,
  );
  static const TextStyle spaceTitle1 = TextStyle(
    fontFamily: _spaceGrotest,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 0.27,
    color: AppColors.black,
  );
  static const TextStyle spaceTitle2 = TextStyle(
    fontFamily: _spaceGrotest,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    letterSpacing: 0.27,
    color: AppColors.black,
  );
  static const TextStyle spaceTitle3 = TextStyle(
    fontFamily: _spaceGrotest,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    letterSpacing: 0.27,
    color: AppColors.black,
  );
  static const TextStyle spaceSubtile1 = TextStyle(
    fontFamily: _spaceGrotest,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 0.27,
    color: AppColors.black,
  );
  static const TextStyle spaceSubtile2 = TextStyle(
    fontFamily: _spaceGrotest,
    fontWeight: FontWeight.w500,
    fontSize: 18,
    letterSpacing: 0.27,
    color: AppColors.black,
  );
}
