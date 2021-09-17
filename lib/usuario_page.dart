import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UsuarioPage extends StatefulWidget {
  @override
  _UsuarioPageState createState() => _UsuarioPageState();
}

class _UsuarioPageState extends State<UsuarioPage> {
  final formKey = GlobalKey<FormState>();
  final nomeKey = GlobalKey<FormFieldState>();

  TextEditingController _nomeTEC = TextEditingController();

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
                  controller: _nomeTEC,
                  decoration: InputDecoration(hintText: "Digite seu nome"),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Nome Obrigatório";
                    }
                  }),
              ElevatedButton(
                  onPressed: () {
                    formKey.currentState?.validate();
                    var _nome = _nomeTEC.text;

                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Alert"),
                          content: Text("Olá " + _nome),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Exit"))
                          ],
                        );
                      },
                    );

                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  child: Text("Show")),
              Visibility(
                  visible: isVisible,
                  child: ElevatedButton(
                      onPressed: () {
                        nomeKey.currentState?.reset();
                        var _nome = _nomeTEC;
                        _nome.clear();
                      },
                      child: Text("Reset"))),
            ],
          )),
    ));
  }
}
