import 'package:azkar/cubit/zekr_cubit.dart';
import 'package:azkar/cubit/zekr_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class CustomBottomBar extends StatelessWidget {
  final Color color;

  const CustomBottomBar({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ZekrCubit, ZekrState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is ZekrInitialState) {
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
              ],
            ),
          );
        } else if(state is ZekrFirstBottomState) {
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
              ],
            ),
          );
        }
        else if(state is ZekrLastBottomState) {
          return Container(
            color: color,
            child: Row(
              children: [
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
        else {
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
      },
    );
  }
}
