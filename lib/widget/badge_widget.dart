import 'package:flutter/material.dart';

import '../theme/color.dart';
import '../theme/text_style.dart';

class BadgetWidget extends StatelessWidget {
  final String title;
  const BadgetWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 8,
        left: 8,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: colorDarkPurple,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: poppinsSemiBold.copyWith(
          fontSize: 10,
          color: colorOrange,
        ),
      ),
    );
  }
}
