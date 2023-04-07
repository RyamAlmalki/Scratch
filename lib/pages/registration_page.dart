import 'package:digital_card_application/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../common/theme_helper.dart';
import '../widgets/header_widget.dart';

class RegistrationPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return _RegistrationPageState();
  }
}

class _RegistrationPageState extends State<RegistrationPage>{
  Key _formKey = GlobalKey<FormState>();
  final Color accentColor = HexColor("#2702F5");
  final Color primaryColor = HexColor("#5A0EF5");
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          
          Container(
              height: 150,
              child: const HeaderWidget(),
            ),

          SafeArea(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Column(
                  children: [
                  Text(" SIGN UP ", style: GoogleFonts.poppins(fontSize: 30)),

                  SizedBox(height: 10.0),

                  Form(
                    key: _formKey,
                    child: Column(children: [
                       TextField(
                        decoration: ThemeHelper().textInputDecoration('Full Name', 'Enter your full name')
                      ),
                      
                      SizedBox(height: 30.0),
                      
                      TextField(
                        obscureText: true,
                        decoration: ThemeHelper().textInputDecoration('Email', 'Enter your Email')
                      ),

                      SizedBox(height: 30.0),

                      TextField(
                        obscureText: true,
                        decoration: ThemeHelper().textInputDecoration('Password', 'Enter your password')
                      ),
                      
                      SizedBox(height: 30.0),

                      TextField(
                        obscureText: true,
                        decoration: ThemeHelper().textInputDecoration('Country', 'Enter your country')
                      ),
                      
                      SizedBox(height: 30.0),

                      TextField(
                        obscureText: true,
                        decoration: ThemeHelper().textInputDecoration('linkedin', 'Enter your linkedin URL')
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

                   


                


                  
                  ],))
                
                ]
                
                
                ),
              )
            )












        ]),
      ),
    );

  }
}
