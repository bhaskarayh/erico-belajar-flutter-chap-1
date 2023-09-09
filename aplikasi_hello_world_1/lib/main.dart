import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Hello World'),
          // backgroundColor: Color('#f3f3f3'),
        ),
        body: Center(
          child: Container(
              color: Colors.green,
              width: 150,
              height: 100,
              child: Text(
                'Saya sedang melatih kemampuan flutter saya.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
                // maxLines: 2,
                // overflow: TextOverflow.clip,
                // softWrap: false,
              )),
        ),
      ),
    );
  }
}
