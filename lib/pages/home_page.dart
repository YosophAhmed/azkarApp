import 'package:azkar/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:azkar/pages/widgets/home_body.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'HomePage';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primaryColor,
      body: HomeBody(),
    );
  }
}






