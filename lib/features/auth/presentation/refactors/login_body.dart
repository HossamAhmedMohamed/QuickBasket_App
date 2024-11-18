// ignore_for_file: lines_longer_than_80_chars

import 'package:commerce_app/core/extensions/context_extension.dart';
import 'package:commerce_app/core/languages/lang_keys.dart';
import 'package:commerce_app/core/presentation/animations/animation_do.dart';
import 'package:commerce_app/core/presentation/widgets/text_widget.dart';
import 'package:commerce_app/features/auth/presentation/widgets/login/auth_title_info.dart';
import 'package:commerce_app/features/auth/presentation/widgets/login/login_button.dart';
import 'package:commerce_app/features/auth/presentation/widgets/login/login_form_field.dart';
import 'package:commerce_app/utils/font_family_helper.dart';
import 'package:commerce_app/utils/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 50.h),
      child: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          AuthTitleInfo(
            // title: context.translate(LangKeys.login),
            description: context.translate(LangKeys.welcome),
          ),
          SizedBox(
            height: 30.h,
          ),
          const LoginFormField(),
          SizedBox(
            height: 40.h,
          ),
          const LoginButton(),
          SizedBox(
            height: 30.h,
          ),

          CustomFadeInDown(
            duration: 400,
            child: TextButton(onPressed: (){},
             child: TextWidget(text: context.translate(LangKeys.createAccount), theme: context.textStyle.copyWith(
              fontSize: 16.sp,
              color: context.color.bluePinkLight,
              fontFamily: FontFamilyHelper.cairoArabic,
              fontWeight: FontWeightHelper.bold,
              
             ))),
          )
        ],
      ),
    );
  }
}
