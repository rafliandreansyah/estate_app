import 'package:estate_app/theme/color.dart';
import 'package:estate_app/theme/text_style.dart';
import 'package:estate_app/widget/badge_widget.dart';
import 'package:flutter/material.dart';

class CardCityWidget extends StatelessWidget {
  final String image;
  final String cityName;
  final String property;
  final bool isHot;
  const CardCityWidget({
    super.key,
    required this.image,
    required this.cityName,
    required this.property,
    required this.isHot,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      constraints: const BoxConstraints(
        maxHeight: 120,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        color: colorWhite,
      ),
      margin: const EdgeInsets.only(
        bottom: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cityName,
                  style: poppinsBold.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  property,
                  style: poppinsLight.copyWith(
                    fontSize: 14,
                    color: colorGrey,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          if (isHot) const BadgetWidget(title: 'HOT'),
        ],
      ),
    );
  }
}
