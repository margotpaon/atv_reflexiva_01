import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atividade Reflexiva'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.navigate_next),
            tooltip: 'Sobre',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(title: Text('Voltar')),
                  body: Center(
                    child: Text(
                      'Aqui é sobre alguma coisa',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                );
              }));
            },
          ),
        ],
      ),
    );
  }
}
