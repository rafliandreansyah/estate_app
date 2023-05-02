import 'package:estate_app/theme/color.dart';
import 'package:estate_app/theme/text_style.dart';
import 'package:estate_app/widget/badge_widget.dart';
import 'package:flutter/material.dart';

class CardStaffPickWidget extends StatelessWidget {
  final String image;
  final String title;
  final String ft;
  final String price;
  final bool isNew;
  const CardStaffPickWidget({
    super.key,
    required this.image,
    required this.title,
    required this.ft,
    required this.price,
    required this.isNew,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      margin: const EdgeInsets.only(
        right: 26,
      ),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colorWhite,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              if (isNew) const BadgetWidget(title: 'NEW')
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: poppinsBold.copyWith(
                        fontSize: 18,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      ft,
                      style: poppinsRegular.copyWith(
                        fontSize: 16,
                        color: colorGrey,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Text(
                price,
                style: poppinsSemiBold.copyWith(
                  fontSize: 18,
                  color: colorOrange,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
