import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Photo Gallery')),
        body: Container(
          decoration: BoxDecoration(color: Colors.grey),
          child: GridView.count(
            primary: false,
            padding: EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(8),
                  child: Image.network('https://i.imgur.com/FlZ9pkG.jpg'),
                  color: Colors.teal[100])
            ],
          ),
        ));
  }
}
