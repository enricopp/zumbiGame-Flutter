import 'package:flutter/material.dart';

class Vitoria2 extends StatefulWidget {
  const Vitoria2({Key? key}) : super(key: key);

  @override
  State<Vitoria2> createState() => _Vitoria2State();
}

class _Vitoria2State extends State<Vitoria2> {
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
            image: AssetImage('images/s1.png'),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
      ),
    );
  }
}
