import 'package:flutter/material.dart';
import 'package:music_player/screens/onBording_Screeen/onbordingScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: OnBordingScreen());
  }
}
