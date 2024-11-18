import 'package:commerce_app/core/theme/colors_dark.dart';
import 'package:commerce_app/core/theme/colors_extension.dart';
import 'package:commerce_app/core/theme/colors_light.dart';
import 'package:flutter/material.dart';

ThemeData themeDark() {
  return ThemeData(

    scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark ],
    useMaterial3: true,
  );
}

ThemeData themeLight() {
  return ThemeData(

    scaffoldBackgroundColor: ColorsLight.mainColor,
    extensions: const <ThemeExtension<dynamic>>[MyColors.light],
    useMaterial3: true,
  );
}
