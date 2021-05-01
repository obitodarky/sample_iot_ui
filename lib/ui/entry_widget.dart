import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_ui/ui/onboarding_screen.dart';
import 'package:sample_ui/utils/color_utils.dart';

class AppEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorUtils.scaffoldBackgroundColor,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white)
        ),
        primaryColor: ColorUtils.primaryColor,
      ),

      home: OnBoarding(),
    );
  }
}
