import 'package:flutter/material.dart';
import 'package:netflixclone/view/splash_screen/splash_screen.dart';
import 'package:netflixclone/view/user_Selection/user_selection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}
