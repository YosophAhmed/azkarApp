import 'package:azkar/components/home_card.dart';
import 'package:azkar/constants/colors.dart';
import 'package:azkar/models/home_card_model.dart';
import 'package:azkar/pages/morning_page.dart';
import 'package:azkar/pages/night_page.dart';
import 'package:azkar/pages/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<HomeCardModel> homeCards = [
      HomeCardModel(
        onTap: () {
          Navigator.pushNamed(
            context,
            MorningPage.routeName,
          );
        },
        color1: morningColor1,
        color2: morningColor2,
        color3: morningColor3,
        color4: morningColor4,
        icon: Icons.sunny,
        iconColor: Colors.amber,
        title: 'أذكار الصباح',
      ),
      HomeCardModel(
        onTap: () {
          Navigator.pushNamed(
            context,
            NightPage.routeName,
          );
        },
        color1: nightColor1,
        color2: nightColor2,
        color3: nightColor3,
        color4: nightColor4,
        icon: Icons.mode_night,
        iconColor: const Color(0xff381C59),
        title: 'أذكار المساء',
      ),
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: Column(
        children: [
          SizedBox(
            height: 3.h,
          ),
          const CustomAppBar(
            title: 'الأذكار',
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) =>
                  HomeCard(homeCardModel: homeCards[index]),
              itemCount: homeCards.length,
            ),
          ),
        ],
      ),
    );
  }
}
