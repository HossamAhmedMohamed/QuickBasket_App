// ignore_for_file: lines_longer_than_80_chars

import 'package:commerce_app/core/extensions/context_extension.dart';
import 'package:commerce_app/core/languages/lang_keys.dart';
import 'package:commerce_app/core/presentation/animations/animation_do.dart';
import 'package:commerce_app/core/presentation/widgets/cutom_field.dart';
import 'package:commerce_app/utils/regression.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginFormField extends StatefulWidget {
  const LoginFormField({super.key});

  @override
  State<LoginFormField> createState() => _LoginFormFieldState();
}

class _LoginFormFieldState extends State<LoginFormField> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomFadeInRight(
              duration: 200,
              child: CustomTextField(
                controller: emailController,
                hintText: context.translate(LangKeys.email),
                prefixIcon: Icon(Icons.email , color: context.color.textColor,),
                keyboardType: TextInputType.emailAddress,
                validator: (email) {
                  if (!AppRegex.isEmailValid(emailController.text)) {
                    return context.translate(LangKeys.validEmail);
                  }
                  return null;
                },

              ),),

              SizedBox(height: 25.h,),

                CustomFadeInRight(
              duration: 200,
              child: CustomTextField(
                controller: passwordController,
                hintText: context.translate(LangKeys.password),
                prefixIcon:  Icon(Icons.lock , color: context.color.textColor,),
                keyboardType: TextInputType.emailAddress,
                obscureText: isShowPassword,
                validator: (password) {
                  if (password == null || password.isEmpty || password.length <6) {
                    return context.translate(LangKeys.validPasswrod);
                  }
                  return null;
                },

                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                }, icon: isShowPassword?  Icon(Icons.visibility , color: context.color.textColor,) : Icon(Icons.visibility_off , color: context.color.textColor,),),

              ),),


        ],
      ),
    );
  }
}
