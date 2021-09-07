import 'package:flutter/material.dart';

class UsuarioPage extends StatefulWidget {
  @override
  _UsuarioPageState createState() => _UsuarioPageState();
}

class _UsuarioPageState extends State<UsuarioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
        decoration: InputDecoration(hintText: "Digite seu nome"),
      ),
    );
  }
}
