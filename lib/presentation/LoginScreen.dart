import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: cuerpo(),
    );
  }

  Widget cuerpo() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "assets/login.jpg"),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            nombre(),
            campoUsuario(),
            campoPassword(),
            botonEntrar()
          ],
        ),
      ),
    );
  }

  Widget nombre() {
    return Text("Sing in",
        style: TextStyle(
            color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold));
  }

  Widget campoUsuario() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextField(
          decoration: InputDecoration(
              hintText: "User", fillColor: Colors.white, filled: true),
        ));
  }

  Widget campoPassword() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
              hintText: "Pass", fillColor: Colors.white, filled: true),
        ));
  }

  Widget botonEntrar() {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
        padding: const EdgeInsets.all(16.0),
        textStyle: const TextStyle(fontSize: 20),
      ),
      child: Text("Entrar"),
    );
  }
}
