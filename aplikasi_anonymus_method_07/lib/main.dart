import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String message = "Ini adalah Text";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(message),
                // Anonymous method cuma bisa dipakai/dipanggil sekali
                ElevatedButton(
                  onPressed: () => setState(() {
                    message = "Tombol sudah ditekan";
                  }),
                  child: Text("Tekan saya"),
                )
              ]),
        ),
      ),
    );
  }
}
