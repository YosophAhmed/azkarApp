import 'package:azkar/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const AzkarApp());
}

class AzkarApp extends StatelessWidget {
  const AzkarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType){
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      }
    );
  }
}
