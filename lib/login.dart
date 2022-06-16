import 'package:flutter/material.dart';
import 'package:login/game/game.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String usuarioo = "enricopp12";
  String senhaa = "enrico12";
  TextEditingController _usuario = TextEditingController();
  TextEditingController _senha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Padding(
        padding: EdgeInsets.all(19),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.text,
                controller: _usuario,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  labelText: "Nome de Usuário",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
              TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                controller: _senha,
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
              Divider(),
              ButtonTheme(
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () => {
                    print(_usuario),
                    if (_usuario.text == usuarioo && _senha.text == senhaa)
                      {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Game();
                        }))
                      }
                    else
                      {
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.error,
                              size: 100,
                            )
                          ],
                        ),
                      },
                  },
                  child: Text(
                    'Entrar',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
