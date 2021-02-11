import 'package:first/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                child: Image.network(
                    'https://thumbs.dreamstime.com/b/logotipo-do-fc-barcelona-87358931.jpg'),
              ),
              Container(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  email = value;
                },
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Email'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  password = value;
                },
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Password'),
              ),
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                onPressed: () {
                  if (email == 'emerson.coutinho@hotmail.com' &&
                      password == '123') {
                    Navigator.of(context).pushReplacementNamed('/home');
                  }
                },
                child: Text('Entrar'),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
