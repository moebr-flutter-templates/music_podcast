import 'package:flutter/material.dart';
import 'package:music_podcast/screen/MPSplashScreen.dart';
import 'package:nb_utils/nb_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Podcast',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      home: MPSplashScreen(),
    );
  }
}
