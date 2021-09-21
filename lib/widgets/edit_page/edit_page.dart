import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../globals.dart';

class EditPage extends StatefulWidget {
  EditPage({Key? key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
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