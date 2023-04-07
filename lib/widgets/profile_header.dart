import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileHeader> {
 final Color accentColor = HexColor("#2702F5");
 final Color primaryColor = HexColor("#5A0EF5");

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Stack(
        children: [
              ClipPath(
              clipper: AppBarCustomClipper(),
              child: Container( 
                color: primaryColor,
                height: 600,
              ),
            ), 
        ],
      ),
    );
  }
}

class AppBarCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
