import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TelaHome(),
  ));
}

/////////////////////////////////////////
class TelaHome extends StatefulWidget {
  @override
  _TelaHomeState createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/logo.png"),
            ],
          ),
        ),
      ),
    );
  }
}
