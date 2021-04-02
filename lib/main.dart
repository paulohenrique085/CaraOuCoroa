import 'package:caraoucoroa/Segunda.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TelaHome(),
  ));
}

/////////////////////////////////////////
class TelaHome extends StatefulWidget {
  @override
  _TelaHomeState createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  var _teste = AssetImage("assets/logo.png");

  jogar() {
    List<AssetImage> caracora = [
      AssetImage("assets/moeda_cara.png"),
      AssetImage("assets/moeda_coroa.png")
    ];

    var numero = Random().nextInt(2);
    var resultado = caracora[numero];
    return resultado;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image(image: this._teste)),
              Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          child: Image.asset("assets/botao_jogar.png")),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Segunda(
                              imagem: jogar(),
                            ),
                          ));
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
