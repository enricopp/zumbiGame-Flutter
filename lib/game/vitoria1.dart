import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'game.dart';

class Vitoria1 extends StatefulWidget {
  const Vitoria1({Key? key}) : super(key: key);

  @override
  State<Vitoria1> createState() => _Vitoria1State();
}

class _Vitoria1State extends State<Vitoria1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Você Venceu'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/s3.png'),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
      ),
    );
  }
}
