import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomBottomBar extends StatelessWidget {
  final Color color;

  const CustomBottomBar({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.w),
            child: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
          Text(
            'الذكر التالى',
            style: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'IBMPlexSansArabic',
            ),
          ),
          const Spacer(),
          Text(
            'الذكر السابق',
            style: TextStyle(
              fontSize: 16.sp,
              fontFamily: 'IBMPlexSansArabic',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 1.w),
            child: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
        ],
      ),
    );
  }
}