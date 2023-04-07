import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isVisible = false;
  final Color accentColor = HexColor("#2702F5");
  final Color primaryColor = HexColor("#5A0EF5");

  _SplashScreenState(){
    Timer(const Duration(milliseconds: 2000), (){
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const LoginPage(title: '',)), (route) => false);
      });
    });

     Timer(
      Duration(milliseconds: 10),(){
        setState(() {
          _isVisible = true; // Now it is showing fade effect and navigating to Login page
        });
      }
    );
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        gradient:  LinearGradient(
          colors: [accentColor, primaryColor],
          begin: const FractionalOffset(1, 0),
          end: const FractionalOffset(1.0, 0.0),
          stops: const [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: AnimatedOpacity(
        opacity: _isVisible ? 1.0 : 0,
        duration: const Duration(milliseconds: 1200),
        child: Center(
          child: Container(
            height: 140.0,
            width: 140.0,
            child: const Center(
              child: ClipOval(
                child: Icon(Icons.code_off_outlined, size: 210, color: Colors.white,),
              ),
            ),
          ),
        ),
      ),
    );
  }
}