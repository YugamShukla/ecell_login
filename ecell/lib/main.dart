import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

void main() {
  runApp(new MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.deepOrangeAccent,
      ),
      home: Scaffold(
          body: Container(
                child: CustomPaint(
               painter: ShapesPainter(),
              child: Container(
              height: 700,
            
                child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                  Image.asset('assets/images/logo.png',scale: 0.75),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              VerticalDivider(
                thickness: 2,
                width: 100,
                indent: 200,
                endIndent: 200,
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
               
              
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(),
                  GoogleSignInButton(
                    
                    onPressed: () {},
                    darkMode: true,
                  ),
                  new Container(height: 25,),
                  MicrosoftSignInButton(
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      )))));
    
  }
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Color(0xff253036);
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, paint);
    paint.color = Color(0xff29363f);
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}