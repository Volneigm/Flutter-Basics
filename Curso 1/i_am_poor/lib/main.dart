import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[600],
        body: Center(
          child: Image(
            image: AssetImage('images/i_am_poor.png'),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('I Am Poor'),
        ),
      ),
    );
  }
}
