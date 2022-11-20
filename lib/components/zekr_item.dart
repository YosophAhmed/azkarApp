import 'package:azkar/cubit/zekr_cubit.dart';
import 'package:azkar/cubit/zekr_states.dart';
import 'package:azkar/models/zekr.dart';
import 'package:azkar/pages/widgets/bottom_zekr_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class ZekrItem extends StatelessWidget {
  final Zekr zekr;
  final Color containerColor1;
  final Color containerColor2;
  final Color containerColor3;
  final Color containerColor4;

  ZekrItem({
    Key? key,
    required this.zekr,
    required this.containerColor1,
    required this.containerColor2,
    required this.containerColor3,
    required this.containerColor4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ZekrCubit, ZekrState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(1.w, 1.h, 1.w, 0),
              height: 60.h,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  child: Text(
                    zekr.content,
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                BlocProvider.of<ZekrCubit>(context).zekrIncrement(
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: 16.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      containerColor1,
                      containerColor2,
                      containerColor3,
                      containerColor4,
                    ],
                  ),
                ),
                child: Text(
                  '${BlocProvider.of<ZekrCubit>(context).counter}',
                  style: TextStyle(
                    fontSize: 80.sp,
                  ),
                ),
              ),
            ),
            BottomZekrItem(
              color: containerColor4,
              zekrNumber: zekr.zekrNumber,
              zekrCounter: zekr.zekrCounter,
            ),
          ],
        );
      },
    );
  }
}
