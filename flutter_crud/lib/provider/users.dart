import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_crud/data/dummy_users.dart';
import 'package:flutter_crud/models/user.dart';

class Users with ChangeNotifier{ //Equivale a um observer que atualiza a interface grafica a cada atualização

  final Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all{
    return [..._items.values];
  }

  int get count{
    return _items.length;
  }

  User byIndex(int i){
    return _items.values.elementAt(i);
  }

  void put(User user){ //Metodo adiciona ou altera a lista de usuarios
    if(user == null){
      return;
    }

    //adicionar
    final id = Random().nextDouble.toString();
    _items.putIfAbsent(id, () => User(
      id: id,
      name: user.name,
      email: user.email,
      avatarUrl: user.avatarUrl,
    ));

    //notifyListeners();
  }
}