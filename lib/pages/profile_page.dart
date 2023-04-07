import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/profile_header.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.title});

  final String title;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}


class _ProfilePageState extends State<ProfilePage> {
  Key _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: Colors.white,
          
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 200,
              child: const ProfileHeader(),
            ),

                  Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(0, 120, 0, 0),
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column( children: [
                    Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 20, color: Colors.white),
                    color: Colors.white,
                    boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 20, offset: const Offset(5, 5),),
                      ],
                    ),
                    child: Icon(Icons.person, size: 80, color: Colors.grey.shade300,),
                    ),
                    SizedBox(height: 20,),
                    Text('Ryam AlMalki', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),

                    Container( //apply margin and padding using Container Widget.
                  padding: EdgeInsets.fromLTRB(20,0,0,20), //You can use EdgeInsets like above
                  margin: EdgeInsets.fromLTRB(10,0,10,10),
                  child: Text('passionate programmer with a keen eye for detail and a drive to tackle challenges others deem too difficult', style: TextStyle(fontSize: 15, ),
                ),),
                
                Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        
                        Card(
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    ...ListTile.divideTiles(
                                      color: Colors.grey,
                                      tiles: const [
                                        ListTile(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 4),
                                          leading: Icon(Icons.my_location),
                                          title: Text("Location"),
                                          subtitle: Text("Saudi"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.email),
                                          title: Text("Email"),
                                          subtitle: Text("ryam.malki@gmail.com"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.phone),
                                          title: Text("Phone"),
                                          subtitle: Text("0558238881"),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.person),
                                          title: Text("linkedin"),
                                          subtitle: Text(
                                              "https://www.linkedin.com/in/ryam-almalki-a5b307201/"),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),

                        )
                      ]
                    )
                )
                    
                      
          ])


                  
                 

                  ),


                  



                ],

              )
                  
            
              )  
            
      );
    }
  }