import 'package:commerce_app/core/extensions/context_extension.dart';
import 'package:commerce_app/core/presentation/widgets/text_widget.dart';
import 'package:commerce_app/utils/font_family_helper.dart';
import 'package:commerce_app/utils/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTitleInfo extends StatelessWidget {
  const AuthTitleInfo({
    // required this.title,
    required this.description,
    super.key,
  });

  // final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        // TextWidget(text: title, theme: context.textStyle.copyWith(
        //   fontSize: 24.sp,
        //   fontWeight: FontWeightHelper.bold,
        //   fontFamily: FontFamilyHelper.poppinsEnglish,
        //   color: context.color.textColor,
        // ),),

        SizedBox(height: 10.h,),

        TextWidget(text: description, theme: context.textStyle.copyWith(
          fontSize: 24.sp,
          fontWeight: FontWeightHelper.medium,
          fontFamily: FontFamilyHelper.cairoArabic,
          color: context.color.textColor,
        ),
        textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
