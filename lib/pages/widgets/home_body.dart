import 'package:azkar/constants/colors.dart';
import 'package:azkar/models/home_card_model.dart';
import 'package:azkar/pages/morning_page.dart';
import 'package:azkar/pages/night_page.dart';
import 'package:azkar/pages/widgets/custom_app_bar.dart';
import 'package:azkar/pages/widgets/custom_home_card.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);
  
  final List<HomeCardModel> homeCards = const [
    HomeCardModel(
        color1: morningColor1,
        color2: morningColor2,
        color3: morningColor3,
        color4: morningColor4,
        icon: Icons.sunny,
        iconColor: Colors.amber,
        title: 'أذكار الصباح',
    ),
    HomeCardModel(
      color1: nightColor1,
      color2: nightColor2,
      color3: nightColor3,
      color4: nightColor4,
      icon: Icons.mode_night,
      iconColor: Color(0xff381C59),
      title: 'أذكار المساء',
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                HomeCard(
                    homeCardModel: homeCards[0],
                    onTap: (){
                      Navigator.pushNamed(
                        context,
                        MorningPage.routeName,
                      );
                    },
                ),
                HomeCard(
                  homeCardModel: homeCards[1],
                  onTap: (){
                    Navigator.pushNamed(
                      context,
                      NightPage.routeName,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
