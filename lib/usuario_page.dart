import 'package:flutter/material.dart';

class UsuarioPage extends StatefulWidget {
  @override
  _UsuarioPageState createState() => _UsuarioPageState();
}

class _UsuarioPageState extends State<UsuarioPage> {
  final formKey = GlobalKey<FormState>();
  final nomeKey = GlobalKey<FormFieldState>();
  final nomeController = new TextEditingController();
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                  key: nomeKey,
                  controller: nomeController,
                  decoration: InputDecoration(hintText: "Digite seu nome"),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Nome Obrigatório";
                    }
                  }),
              ElevatedButton(
                  onPressed: () {
                    formKey.currentState?.validate();
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  child: Text("Ok")),
              Visibility(
                  visible: isVisible,
                  child: ElevatedButton(
                      onPressed: () {
                        nomeKey.currentState?.reset();
                      },
                      child: Text("Reset"))),
            ],
          )),
    ));
  }
}
