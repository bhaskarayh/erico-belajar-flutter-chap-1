import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Container"),
        ),
        body: Container(
          color: Colors.red,
          // margin: EdgeInsets.all(10), // Pasang Semua
          margin: EdgeInsets.fromLTRB(10, 15, 20, 25), // Satu Satu
          // padding: EdgeInsets.all(10),
          padding: EdgeInsets.only(bottom: 20, top: 20), // Salah satu
          child: Container(
            // color: Colors.blue,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.amber,
                  Colors.blue,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
