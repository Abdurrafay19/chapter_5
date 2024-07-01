import 'package:chapter_5_6/screen_two.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id : (context) => const HomeScreen(),
        ScreenTwo.id : (context) => const ScreenTwo(),
      },
    );
  }
}



