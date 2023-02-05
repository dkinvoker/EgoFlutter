import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ego_flutter/models/question_tag.dart';
import 'package:ego_flutter/widgets/MarcinNumberPicker.dart';
import 'package:ego_flutter/widgets/edit_page/add_question_button.dart';
import 'package:ego_flutter/widgets/item_tree/item_node.dart';
import 'package:ego_flutter/widgets/item_tree/item_tree.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../../globals.dart';

class EditPage extends StatefulWidget {
  EditPage({Key? key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {

  ItemNode tree = ItemNode(
    "0.jpg",
    dupa: [
      ItemNode(
        "A.jpg",
        dupa: [ItemNode("AA.jpg")]
      ),
      ItemNode(
        "B.jpg",
        dupa: [
          ItemNode("BA.jpg"),
          ItemNode("BB.jpg")
        ]
      ),
      ItemNode(
        "C.jpg",
        dupa: [
          ItemNode("CA.jpg"),
          ItemNode(
            "CB.jpg",
            dupa: [ItemNode("CBA.jpg")]
          ),
          ItemNode("CC.jpg")
        ]
      )
    ]
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gracz: ${Globals.playerName}"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
         child: ItemTree(tree: tree)
        ),
      )
    );
  }
}
