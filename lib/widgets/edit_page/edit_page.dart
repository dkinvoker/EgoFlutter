import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ego_flutter/models/question_tag.dart';
import 'package:ego_flutter/widgets/edit_page/add_question_button.dart';
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
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            AddQuestionButton()
          ],
        )
      ),
    );
  }
}