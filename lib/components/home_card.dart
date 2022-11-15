import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:azkar/models/home_card_model.dart';

class HomeCard extends StatelessWidget {
  final HomeCardModel homeCardModel;

  const HomeCard({
    Key? key,
    required this.homeCardModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: homeCardModel.onTap,
      child: Container(
        height: 40.h,
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 2.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.sp),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              homeCardModel.color1,
              homeCardModel.color2,
              homeCardModel.color3,
              homeCardModel.color4,
            ],
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              homeCardModel.icon,
              color: homeCardModel.iconColor,
              size: 70.sp,
            ),
            Text(
              homeCardModel.title,
              style: TextStyle(
                fontSize: 50.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


