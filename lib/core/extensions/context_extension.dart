import 'package:commerce_app/core/theme/colors_extension.dart';
import 'package:commerce_app/core/theme/image_extension.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  MyColors get color => Theme.of(this).extension<MyColors>()!;

  MyImages get assets => Theme.of(this).extension<MyImages>()!;

  Future<dynamic> pushName(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() => Navigator.of(this).pop();
}
