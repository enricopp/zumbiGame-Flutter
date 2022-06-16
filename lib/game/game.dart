import 'package:flutter/material.dart';
import 'package:login/game/derrota1.dart';
import 'dart:math';
import 'vitoria1.dart';
import 'derrota1.dart';
import 'vitoria2.dart';
import 'derrota2.dart';

void main() => runApp(Game());

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  int numeroesquerdo = 1;
  int numerodireito = 1;
  int pontuador = 0;
  void EscolhaEsquerda() {
    setState(() {
      numeroesquerdo = Random().nextInt(2) + 1;
    });
  }

  void EscolhaDireita() {
    setState(() {
      numerodireito = Random().nextInt(2) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Escolha um lado para mover as tropas'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/inicial.png'),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  EscolhaEsquerda();
                  print(numeroesquerdo);
                  if (numeroesquerdo == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Vitoria1();
                        },
                      ),
                    );
                    pontuador = pontuador + 1;
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Derrota1();
                        },
                      ),
                    );
                    pontuador = 0;
                  }
                  ;
                },
                child: Text('ENVIAR TROPAS'), //e
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                color: Colors.green,
                child: Text(
                  '$pontuador',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  EscolhaDireita();
                  print(numeroesquerdo);
                  if (numerodireito == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Vitoria2();
                        },
                      ),
                    );
                    pontuador = pontuador + 1;
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Derrota2();
                        },
                      ),
                    );
                    pontuador = 0;
                  }
                },
                child: Text(
                  'ENVIAR TROPAS',
                ), //d
              ),
            ],
          ),
        ),
      ),
    );
  }
}
