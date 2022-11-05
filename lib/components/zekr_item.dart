import 'package:azkar/models/zekr.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ZekrItem extends StatefulWidget {
  final Zekr zekr;
  final Color containerColor1;
  final Color containerColor2;
  final Color containerColor3;
  final Color containerColor4;

  const ZekrItem({
    Key? key,
    required this.zekr,
    required this.containerColor1,
    required this.containerColor2,
    required this.containerColor3,
    required this.containerColor4,
  }) : super(key: key);

  @override
  State<ZekrItem> createState() => _ZekrItemState();
}

class _ZekrItemState extends State<ZekrItem> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(1.w,1.h,1.w,0),
          height: 50.h,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
              child: Text(
                widget.zekr.content,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'IBMPlexSansArabic',
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            if (counter == widget.zekr.contentCounter) {
              return;
            } else {
              setState(() {
                counter++;
              });
            }
          },
          child: Container(
            alignment: Alignment.center,
            height: 22.h,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  widget.containerColor1,
                  widget.containerColor2,
                  widget.containerColor3,
                  widget.containerColor4,
                ],
              ),
            ),
            child: Text(
              '$counter',
              style: TextStyle(
                fontSize: 120.sp,
              ),
            ),
          ),
        ),
        Container(
          color: widget.containerColor4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 2.w),
                child: Text(
                  widget.zekr.zekrNumber,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 2.w),
                child: Text(
                  widget.zekr.zekrCounter,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}