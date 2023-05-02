import 'package:estate_app/theme/color.dart';
import 'package:estate_app/theme/text_style.dart';
import 'package:flutter/material.dart';

class SubtitleWidget extends StatelessWidget {
  final String text;
  const SubtitleWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: poppinsSemiBold.copyWith(
        fontSize: 20,
        color: colorBlack,
      ),
    );
  }
}
