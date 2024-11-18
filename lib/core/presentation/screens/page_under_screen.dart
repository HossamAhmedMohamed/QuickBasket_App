import 'package:commerce_app/utils/app_images.dart';
import 'package:flutter/material.dart';

class PageUnderScreen extends StatelessWidget {
  const PageUnderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesCorePageUnderBuild),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
