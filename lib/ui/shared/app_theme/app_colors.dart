import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors {
  AppColors._();

  // General colors
  static const Color background = Color(0xFFFFFFFF);
  static const Color white = Color(0xFFFFFFFF);

  // Gray Palette
  static const Color gray50 = Color(0xFFF8F9F9);
  static const Color gray100 = Color(0xFFF1F2F4);
  static const Color gray150 = Color(0xFFE2E4E9);
  static const Color gray200 = Color(0xFFA9AFBC);
  static const Color gray300 = Color(0xFF81899C);
  static const Color gray400 = Color(0xFF5A6172);
  static const Color gray600 = Color(0xFF434956);
  static const Color gray900 = Color(0xFF0B0C0E);
  static const Color grayScale50 = Color(0xFFF1F2F4);
  static const Color grayScale100 = Color(0xFFE2E4E9);
  static const Color grayScale200 = Color(0xFFC6CAD2);
  static const Color grayScale300 = Color(0xFFA9AFBC);
  static const Color grayScale400 = Color(0xFF8D94A5);
  static const Color grayScale500 = Color(0xFF81899C);
  static const Color grayScale600 = Color(0xFF5A6172);
  static const Color grayScale700 = Color(0xFF434956);
  static const Color grayScale950 = Color(0xFF0B0C0E);

  //Additional colors
  static const Color cyan = Color.fromRGBO(50, 175, 230, 1);
  static const Color cyan100 = Color.fromRGBO(50, 175, 130, 0.1);
  static const Color blue = Color.fromRGBO(0, 127, 255, 1.0);
  static const Color transparent = Color.fromRGBO(0, 0, 0, 0);
  static const Color red = Color.fromRGBO(195, 68, 68, 1.0);
  static const Color green = Color.fromRGBO(68, 195, 68, 1.0);
  static const Color greenDim = Color.fromRGBO(74, 158, 74, 1.0);


  static const Color shadow = Color(0x14001A14);

  static const BoxShadow iconButtonShadow = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 12,
    offset: Offset(0, 6),
  );

  static const BoxShadow dialogShadow = BoxShadow(
    color: AppColors.shadow,
    blurRadius: 32,
    offset: Offset(0, 0),
  );
}

