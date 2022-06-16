import 'package:flutter/material.dart';

class Derrota2 extends StatefulWidget {
  const Derrota2({Key? key}) : super(key: key);

  @override
  State<Derrota2> createState() => _Derrota2State();
}

class _Derrota2State extends State<Derrota2> {
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
            image: AssetImage('images/s2.png'),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
      ),
    );
  }
}
