import 'package:flutter/material.dart';
import 'package:reco/utils/constants/colors.dart';
import 'package:reco/utils/constants/sizes.dart';

class LAppBarTheme {
  LAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    //backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: RColors.black, size: Sizes.iconMd),
    actionsIconTheme: IconThemeData(color: RColors.black, size: Sizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: RColors.black),
  );
  static final darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.red.shade800,
    surfaceTintColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.white, size: Sizes.iconMd),
    actionsIconTheme: const IconThemeData(color: Colors.white, size: Sizes.iconMd),
    titleTextStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: RColors.white),
  );
}
