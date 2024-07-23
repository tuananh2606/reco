import 'package:flutter/material.dart';

import 'package:reco/utils/constants/colors.dart';

/// Custom Class for Light & Dark Text Themes
class LTextTheme {
  LTextTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
      headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: RColors.dark),
      headlineMedium: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w600, color: RColors.dark),
      headlineSmall: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: RColors.dark),
      titleLarge: const TextStyle().copyWith(fontSize: 20, fontWeight: FontWeight.w600, color: RColors.dark),
      titleMedium: const TextStyle()
          .copyWith(fontSize: 16, letterSpacing: 0.15, fontWeight: FontWeight.w500, color: RColors.dark),
      titleSmall: const TextStyle()
          .copyWith(fontSize: 14, letterSpacing: 0.1, fontWeight: FontWeight.w500, color: RColors.dark),
      bodyLarge: const TextStyle()
          .copyWith(fontSize: 16, letterSpacing: 0.15, fontWeight: FontWeight.normal, color: RColors.dark),
      bodyMedium: const TextStyle()
          .copyWith(fontSize: 14, letterSpacing: 0.25, fontWeight: FontWeight.normal, color: RColors.dark),
      bodySmall: const TextStyle()
          .copyWith(fontSize: 12, letterSpacing: 0.4, fontWeight: FontWeight.normal, color: RColors.dark),
      labelLarge: const TextStyle()
          .copyWith(fontSize: 14, letterSpacing: 0.15, fontWeight: FontWeight.normal, color: RColors.dark),
      labelMedium: const TextStyle()
          .copyWith(fontSize: 12, letterSpacing: 0.5, fontWeight: FontWeight.normal, color: RColors.dark),
      labelSmall: const TextStyle()
          .copyWith(fontSize: 11, letterSpacing: 0.5, fontWeight: FontWeight.normal, color: RColors.dark),);

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
      headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: RColors.light),
      headlineMedium: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w600, color: RColors.light),
      headlineSmall: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: RColors.light),
      titleLarge: const TextStyle().copyWith(fontSize: 20, fontWeight: FontWeight.w600, color: RColors.light),
      titleMedium: const TextStyle()
          .copyWith(fontSize: 16, letterSpacing: 0.15, fontWeight: FontWeight.w500, color: RColors.light),
      titleSmall: const TextStyle()
          .copyWith(fontSize: 14, letterSpacing: 0.1, fontWeight: FontWeight.w400, color: RColors.light),
      bodyLarge: const TextStyle()
          .copyWith(fontSize: 16, letterSpacing: 0.15, fontWeight: FontWeight.normal, color: RColors.light),
      bodyMedium: const TextStyle()
          .copyWith(fontSize: 14, letterSpacing: 0.25, fontWeight: FontWeight.normal, color: RColors.light),
      bodySmall: const TextStyle()
          .copyWith(fontSize: 12, letterSpacing: 0.4, fontWeight: FontWeight.normal, color: RColors.light),
      labelLarge: const TextStyle()
          .copyWith(fontSize: 14, letterSpacing: 0.15, fontWeight: FontWeight.normal, color: RColors.light),
      labelMedium: const TextStyle()
          .copyWith(fontSize: 12, letterSpacing: 0.5, fontWeight: FontWeight.normal, color: RColors.light),
      labelSmall: const TextStyle()
          .copyWith(fontSize: 11, letterSpacing: 0.5, fontWeight: FontWeight.normal, color: RColors.light),);
}
