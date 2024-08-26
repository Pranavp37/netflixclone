import 'package:flutter/material.dart';
import 'package:netflixclone/utils/color_constants.dart';
import 'package:netflixclone/utils/image_constants.dart';
import 'package:netflixclone/view/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:netflixclone/view/home_screen/home_screen.dart';
import 'package:netflixclone/view/user_Selection/user_selection.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => UserSelection(),
          )),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainColor,
      body: Center(
        child: Image.asset(ImageConstants.netflix_logo),
      ),
    );
  }
}
