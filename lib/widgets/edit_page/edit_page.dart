import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ego_flutter/models/question_tag.dart';
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
        child: FutureBuilder(
          future: _firestoreTest(),
          builder: (con, AsyncSnapshot<List<Widget>> snapshot) {
            if (snapshot.hasData)
              return Row(
                children: snapshot.data!,
              );
            return Container();
          },
        )
      ),
    );
  }
}

Future<List<Widget>> _firestoreTest() async {
  List<Widget> result = [];
  final tagsRef = QuestionTag.getFirestoreRef();
  final tags = await tagsRef.get();
  tags.docs.forEach((tag) {
    result.add(Text(tag["name"]));
  });
  return result;
}
