import 'package:commerce_app/core/extensions/context_extension.dart';
import 'package:commerce_app/features/auth/presentation/refactors/login_body.dart';
import 'package:commerce_app/features/auth/presentation/widgets/login/auth_custom_print.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomPaint(
          size: Size(MediaQuery.of(context).size.width, 150.h),
          painter: AuthCustomPainter(gradient: LinearGradient(colors: [
            context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkDark!,
          ],),),
        ),
        body: const LoginBody(),
      ),
    );
  }
}
