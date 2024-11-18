import 'package:commerce_app/core/extensions/context_extension.dart';
import 'package:commerce_app/core/languages/lang_keys.dart';
import 'package:commerce_app/core/presentation/animations/animation_do.dart';
import 'package:commerce_app/core/presentation/widgets/custom_linear_button.dart';
import 'package:commerce_app/core/presentation/widgets/text_widget.dart';
import 'package:commerce_app/utils/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DarkAndLangButtons extends StatelessWidget {
  const DarkAndLangButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Dark Mode Button
        CustomFadeInRight(
          duration: 400,
          child: CustomLinearButton(
            onPressed: () {},
            child: const Icon(
              Icons.light_mode_rounded,
              color: Colors.white,
            ),
          ),
        ),
        //Language Button
        CustomFadeInLeft(
          duration: 400,
          child: CustomLinearButton(
            onPressed: () {},
            height: 44.h,
            width: 100.w,
            child: TextWidget(
              text: context.translate(LangKeys.language),
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
