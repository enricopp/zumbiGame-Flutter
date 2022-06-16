import 'package:flutter/material.dart';

class Derrota1 extends StatefulWidget {
  const Derrota1({Key? key}) : super(key: key);

  @override
  State<Derrota1> createState() => _Derrota1State();
}

class _Derrota1State extends State<Derrota1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Você Perdeu'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/s4.png'),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
      ),
    );
  }
}
