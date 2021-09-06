import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_location), label: 'Cidades do Paraná'),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user), label: 'Usuário')
        ],
      ),
    );
  }
}
