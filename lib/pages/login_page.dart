import 'package:digital_card_application/common/theme_helper.dart';
import 'package:digital_card_application/pages/profile_page.dart';
import 'package:digital_card_application/pages/registration_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/header_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Key _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
  final Color accentColor = HexColor("#2702F5");
  final Color primaryColor = HexColor("#5A0EF5");
  double _headerHeight = 150;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: const HeaderWidget(),
            ),

            SafeArea(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Column(
                  children: [
                  Text(" SIGN IN ", style: GoogleFonts.poppins(fontSize: 30)),

                  const SizedBox(height: 10.0),

                  Form(
                    key: _formKey,
                    child: Column(children: [
                       TextField(
                        decoration: ThemeHelper().textInputDecoration('User Name', 'Enter your username')
                      ),
                      
                      SizedBox(height: 30.0),
                      
                      TextField(
                        obscureText: true,
                        decoration: ThemeHelper().textInputDecoration('Password', 'Enter your password')
                      ),
                 

                    SizedBox(height: 50.0),


                    Container(
                      child: ElevatedButton(
                      child: Text("LOGIN", style: TextStyle(fontSize: 20)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        elevation: 0,
                        padding: EdgeInsets.fromLTRB(20,10,20,10),

                      ),
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  ProfilePage(title: '')));
                      },
                    ),
                    ),
                    
                    
                    SizedBox(height: 25.0),

                    RichText(
                    text: TextSpan(
                      text: 'Don\'t have an account? ',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Create', 
                          style: TextStyle(fontSize: 15, color: primaryColor),
                          recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  RegistrationPage()));
                            }
                          )
                        ],
                    ),
                  )


                


                  
                  ],))
                
                ]
                
                
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
