// ignore_for_file: always_put_required_named_parameters_first

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.text,
      required this.theme,
      this.maxlines,
      this.softwrap,
      this.textOverflow,
      this.textAlign,});

  final String text;
  final TextStyle theme;
  final int? maxlines;
  final bool? softwrap;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: theme,
      maxLines: maxlines,
      softWrap: softwrap,
      overflow: textOverflow,
      textAlign: textAlign,
    );
  }
}
