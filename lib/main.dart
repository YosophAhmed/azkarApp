import 'package:azkar/cubit/zekr_cubit.dart';
import 'package:azkar/pages/home_page.dart';
import 'package:azkar/pages/morning_page.dart';
import 'package:azkar/pages/night_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const AzkarApp());
}

class AzkarApp extends StatelessWidget {
  const AzkarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ZekrCubit(),
      child: Sizer(
          builder: (context, orientation, deviceType){
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blueGrey,
                fontFamily: 'IBMPlexSansArabic',
              ),
              initialRoute: HomePage.routeName,
              routes: {
                HomePage.routeName: (context) => const HomePage(),
                MorningPage.routeName: (context) => const MorningPage(),
                NightPage.routeName: (context) => const NightPage(),
              },
            );
          }
      ),
    );
  }
}
