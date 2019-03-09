import 'package:flutter/material.dart';

class Dia extends StatelessWidget {
  final _dia;

  Dia (this._dia);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          Scaffold(
            appBar: AppBar(
              title: Text("$_diaº dia: dd/MM/yyyy"),
            ),
            body: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean auctor neque id felis condimentum, a sollicitudin dui ornare. Sed tincidunt porttitor lacus, sit amet tempus magna aliquam id. Quisque porttitor leo congue, tempor nulla ut, feugiat eros. Aliquam mattis risus bibendum, imperdiet nisi posuere, suscipit tellus. Quisque pellentesque est nisl, ac placerat augue pharetra in. Duis bibendum ligula quis dolor viverra, non tincidunt erat congue. Sed pharetra sagittis interdum. Nulla quis diam ipsum. Donec ac aliquet purus. Ut finibus lacus a dictum facilisis."
            ),
          ),
        ],
      ),
    );
  }
}