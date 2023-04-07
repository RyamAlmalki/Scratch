import 'package:digital_card_application/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

// hi
class MyApp extends StatelessWidget {
  final Color accentColor = HexColor("#2702F5");
  final Color primaryColor = HexColor("#5A0EF5");

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Card Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData( 
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: accentColor),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: accentColor)
      ),
      home: SplashScreen(title: 'Digital Card'),
    );
  }
}



