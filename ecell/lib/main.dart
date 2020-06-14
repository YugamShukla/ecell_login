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
      home: Scaffold(
          body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text("hello"),
              ),
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
                  SizedBox(height: 25.0),
                  GoogleSignInButton(
                    onPressed: () {},
                    darkMode: true,
                  ),
                  MicrosoftSignInButton(
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
