import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

class BottomZekrItem extends StatelessWidget {
  final Color color;
  final String zekrNumber;
  final String zekrCounter;

  const BottomZekrItem({
    Key? key,
    required this.color,
    required this.zekrNumber,
    required this.zekrCounter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.w),
            child: Text(
              zekrNumber,
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 2.w),
            child: Text(
              zekrCounter,
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
