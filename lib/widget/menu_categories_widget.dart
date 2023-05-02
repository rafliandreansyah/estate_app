import 'package:estate_app/theme/color.dart';
import 'package:estate_app/theme/text_style.dart';
import 'package:flutter/material.dart';

class MenuCategoriesWidget extends StatelessWidget {
  final String icon;
  final String title;
  const MenuCategoriesWidget(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colorWhite,
          ),
          child: Image.asset(
            icon,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          title,
          style: poppinsMedium.copyWith(
            fontSize: 14,
          ),
          maxLines: 1,
        ),
      ],
    );
  }
}
