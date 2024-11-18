import 'package:commerce_app/core/extensions/context_extension.dart';
import 'package:commerce_app/core/languages/lang_keys.dart';
import 'package:commerce_app/core/presentation/widgets/custom_linear_button.dart';
import 'package:commerce_app/core/presentation/widgets/text_widget.dart';
import 'package:commerce_app/core/routes/routes.dart';
import 'package:commerce_app/utils/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomLinearButton(
      onPressed: () {
        
      },
      height: 50.h,
      width: double.infinity,
      child: TextWidget(text: context.translate(LangKeys.login), theme: context.textStyle.copyWith(
        fontSize: 18.sp,
        fontWeight: FontWeightHelper.bold,
        color: Colors.white,
      )),
    );
  }
}