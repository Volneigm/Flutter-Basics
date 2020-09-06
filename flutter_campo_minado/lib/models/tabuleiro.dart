import 'dart:math';

import 'package:flutter/cupertino.dart';

import 'campo.dart';

class Tabuleiro {
  final int linhas;
  final int colunas;
  final int qtdBomnbas;
  final List<Campo> _campos = [];

  Tabuleiro(
      {@required this.linhas,
      @required this.colunas,
      @required this.qtdBomnbas}) {
    _criarCampos();
    _relacionarVizinhos();
    _sortearMinas();
  }

  void reiniciar() {
    _campos.forEach((c) => c.reiniciar());
    _sortearMinas();
  }

  void revelarBombas() {
    _campos.forEach((c) => c.revelarBombas());
  }

  void _criarCampos() {
    for (var l = 0; l < linhas; l++) {
      for (var c = 0; c < colunas; c++) {
        _campos.add(Campo(linha: l, coluna: c));
      }
    }
  }

  void _relacionarVizinhos() {
    for (var campo in _campos) {
      for (var vizinho in _campos) {
        campo.adicionarVizinho(vizinho);
      }
    }
  }

  void _sortearMinas() {
    int sorteadas = 0;

    if (qtdBomnbas > linhas * colunas) {
      return;
    }

    while (sorteadas < qtdBomnbas) {
      int i = Random().nextInt(_campos.length);
      if (!_campos[i].minado) {
        sorteadas++;
        _campos[i].minar();
      }
    }
  }

  List<Campo> get campos {
    return _campos;
  }

  bool get resolvido {
    return _campos.every((c) => c.resolvido);
  }
}
