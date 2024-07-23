import 'package:flutter/material.dart';

import 'package:reco/utils/constants/colors.dart';
import 'package:reco/utils/constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class TElevatedButtonTheme {
  TElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: RColors.light,
      backgroundColor: RColors.primary,
      disabledForegroundColor: RColors.darkGrey,
      disabledBackgroundColor: RColors.buttonDisabled,
      side: const BorderSide(color: RColors.primary),
      padding: const EdgeInsets.symmetric(vertical: Sizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: RColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: RColors.light,
      backgroundColor: RColors.primary,
      disabledForegroundColor: RColors.darkGrey,
      disabledBackgroundColor: RColors.darkerGrey,
      side: const BorderSide(color: RColors.primary),
      padding: const EdgeInsets.symmetric(vertical: Sizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: RColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.buttonRadius)),
    ),
  );
}
