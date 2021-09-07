import 'package:atv_reflexiva/cidades_page.dart';
import 'package:atv_reflexiva/usuario_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final tabs = [
    CidadesPage(),
    UsuarioPage(),
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
                      'App criando por Margot Paon de Andrade Garcia / Curso Desenvolvimento Mobile ',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                );
              }));
            },
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        iconSize: 40,
        selectedFontSize: 16,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_location),
              label: 'Cidades do Paraná',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user),
              label: 'Usuário',
              backgroundColor: Colors.green)
        ],
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
