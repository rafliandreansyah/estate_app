import 'package:estate_app/theme/color.dart';
import 'package:estate_app/theme/text_style.dart';
import 'package:flutter/material.dart';

class CardAgentWidget extends StatelessWidget {
  final String imageAgent;
  final String agentName;
  final String sold;
  const CardAgentWidget({
    super.key,
    required this.imageAgent,
    required this.agentName,
    required this.sold,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 130,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        color: colorWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 45,
            height: 45,
            child: CircleAvatar(
              child: Image.asset(
                imageAgent,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            agentName,
            style: poppinsSemiBold.copyWith(
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            sold,
            style: poppinsLight.copyWith(
              color: colorGrey,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
