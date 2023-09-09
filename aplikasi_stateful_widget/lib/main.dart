import 'package:flutter/material.dart';
import 'package:raised_buttons/raised_buttons.dart';

void main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int number = 0;

  void tekanTombol() {
    // Berfungsi untuk merubah tampilan
    setState(() {
      number = number + 1;
    });
    // print(number);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(number.toString()),
              // Gantinya RaisedButton
              ElevatedButton(
                child: Text("Tambah Bilangan",
                    style: TextStyle(fontSize: 10 + number.toDouble())),
                // child: Text('Looks like a RaisedButton'),
                onPressed: tekanTombol,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
