import 'package:flutter/material.dart';
import '../components/resultado_widget.dart';

class CampoMinadoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: ResultadoWidget(),
        body: Container(
          child: Text('Tabuleiro'),
        ),
      ),
    );
  }
}
