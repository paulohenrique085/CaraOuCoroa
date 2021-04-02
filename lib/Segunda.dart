import 'package:flutter/material.dart';

class Segunda extends StatefulWidget {
  var imagem;
  Segunda({this.imagem});
  @override
  _SegundaState createState() => _SegundaState();
}

class _SegundaState extends State<Segunda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Image(
          image: widget.imagem,
        ),
      ),
    );
  }
}
