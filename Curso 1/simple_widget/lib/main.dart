import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget{
  MyAppBar({this.title});

  //Fields in a widget subclass need marked as final
  final Widget title;
  @override
  Widget build(BuildContext buildContext){
    return Container(
      height: 60.0,
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      //Row configures horizontal/linear layout
      child: Row(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navigation Menu',
              onPressed: null,
          ),
          //Use expanded child to fill the available space
          Expanded(child: title,
          ),
          IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext buildContext){
    //Material is a conceptual piece of paper on witch the UI appears
    return Material(
      //Column configures vertical/linear position
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text('Example',
            style: Theme.of(buildContext).primaryTextTheme.headline6,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
              child: Center(
                child: Text('Hello World!'),
              ),
          ),
        ],
      ),
    );
  }
}

void main(){
  runApp(MaterialApp(
    title: 'My App', //This part is used by the OS task switcher
    home: MyScaffold(),
  ));
}