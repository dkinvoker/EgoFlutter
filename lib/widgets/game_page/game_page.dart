import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../globals.dart';

class GamePage extends StatefulWidget {
  GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gracz: ${Globals.playerName}"),
      ),
      body: Container(),
    );
  }
}