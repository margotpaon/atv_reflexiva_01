import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final tabs = [
    // Página lista de cidades
    Center(
      child: ListView(
        children: <Widget>[
          Container(
            child: Center(
              child: Text('Curitiba 1200'),
            ),
          ),
          Container(
            child: Center(
              child: Text('Londrina 135'),
            ),
          ),
          Container(
            child: Center(
              child: Text('Maringa 12'),
            ),
          ),
          Container(
            child: Center(
              child: Text('Pinhal 35460'),
            ),
          ),
        ],
      ),
    ),

    //Página pega nome do usuarios
    Center(child: Text('Usuário'))
  ];

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
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        iconSize: 40,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_location), label: 'Cidades do Paraná'),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user), label: 'Usuário')
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
