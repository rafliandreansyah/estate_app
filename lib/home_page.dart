import 'package:estate_app/theme/color.dart';
import 'package:estate_app/theme/text_style.dart';
import 'package:estate_app/widget/card_agent_widget.dart';
import 'package:estate_app/widget/card_city_widget.dart';
import 'package:estate_app/widget/card_staffpick_widget.dart';
import 'package:estate_app/widget/menu_categories_widget.dart';
import 'package:estate_app/widget/subtitle_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            child: Column(
              children: [
                header(),
                const SizedBox(
                  height: 28,
                ),
                categories(),
                const SizedBox(
                  height: 28,
                ),
                staffPicks(),
                const SizedBox(
                  height: 28,
                ),
                listAgents(),
                const SizedBox(
                  height: 28,
                ),
                cities(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget header() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Estate',
                style: poppinsBold.copyWith(fontSize: 28),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Best discover ever',
                style: poppinsRegular.copyWith(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 45,
          height: 45,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icon/ic_notification.png'),
            ),
          ),
        )
      ],
    );
  }

  Widget categories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SubtitleWidget(text: 'Categories'),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              MenuCategoriesWidget(
                icon: 'assets/icon/ic_menu_hutan.png',
                title: 'Hutan',
              ),
              SizedBox(
                width: 25,
              ),
              MenuCategoriesWidget(
                icon: 'assets/icon/ic_menu_toko.png',
                title: 'Toko',
              ),
              SizedBox(
                width: 25,
              ),
              MenuCategoriesWidget(
                icon: 'assets/icon/ic_menu_gudang.png',
                title: 'Gudang',
              ),
              SizedBox(
                width: 25,
              ),
              MenuCategoriesWidget(
                icon: 'assets/icon/ic_menu_hujan.png',
                title: 'Hujan',
              ),
              SizedBox(
                width: 25,
              ),
              MenuCategoriesWidget(
                icon: 'assets/icon/ic_menu_office.png',
                title: 'Office',
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget staffPicks() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SubtitleWidget(text: 'Staff Picks'),
        const SizedBox(
          height: 8,
        ),
        Container(
          constraints: const BoxConstraints(
            maxHeight: 250,
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CardStaffPickWidget(
                image: 'assets/images/img_lagon_sky.png',
                title: 'Lagon Sky',
                ft: '412 sq ft.',
                price: '\$920',
                isNew: true,
              ),
              CardStaffPickWidget(
                image: 'assets/images/img_inn_parapatt.png',
                title: 'Inn Parapatt',
                ft: '800 sq ft.',
                price: '\$920',
                isNew: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget listAgents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SubtitleWidget(text: 'Best Agents'),
        const SizedBox(
          height: 10,
        ),
        Container(
          constraints: const BoxConstraints(
            maxHeight: 130,
          ),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CardAgentWidget(
                imageAgent: 'assets/images/agent3.png',
                agentName: 'Satthu',
                sold: '1902 sold',
              ),
              CardAgentWidget(
                imageAgent: 'assets/images/agent3.png',
                agentName: 'Satthu',
                sold: '1902 sold',
              ),
              CardAgentWidget(
                imageAgent: 'assets/images/agent3.png',
                agentName: 'Satthu',
                sold: '1902 sold',
              ),
              CardAgentWidget(
                imageAgent: 'assets/images/agent3.png',
                agentName: 'Satthu',
                sold: '1902 sold',
              ),
              CardAgentWidget(
                imageAgent: 'assets/images/agent3.png',
                agentName: 'Satthu',
                sold: '1902 sold',
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget cities() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SubtitleWidget(text: 'Cities'),
        const SizedBox(
          height: 10,
        ),
        ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: const [
            CardCityWidget(
              image: 'assets/images/img_jaksel.png',
              cityName: 'Jakarta Selatan',
              property: '194 property',
              isHot: true,
            ),
            CardCityWidget(
              image: 'assets/images/img_denpasar.png',
              cityName: 'Denpasar',
              property: '100 property',
              isHot: false,
            ),
            CardCityWidget(
              image: 'assets/images/img_bandung.png',
              cityName: 'Bandung',
              property: '200 property',
              isHot: false,
            ),
          ],
        ),
      ],
    );
  }
}
