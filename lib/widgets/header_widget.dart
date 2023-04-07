import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
 final Color accentColor = HexColor("#2702F5");
 final Color primaryColor = HexColor("#5A0EF5");

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Stack(
        children: [
              ClipPath(
              clipper: WaveClipper(),
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

class WaveClipper extends CustomClipper<Path>{
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
  
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = Path();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width / 5, size.height);
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);

    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width - ( size.width / 3.24), size.height - 105);
    var secondEnd = Offset(size.width, size.height - 10);

    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0);

    return path;
  }
}
