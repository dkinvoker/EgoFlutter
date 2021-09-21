import 'package:ego_flutter/globals.dart';
import 'package:ego_flutter/widgets/main_page/edit_questions.dart';
import 'package:ego_flutter/widgets/main_page/play_button.dart';
import 'package:flutter/material.dart';

class SelectPage extends StatefulWidget {
  SelectPage({Key? key}) : super(key: key);

  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Gracz: ${Globals.playerName}"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            PlayButton(),
            SizedBox(width: 8.0),
            EditQuestionButton()
          ],
        ),
      ),
    );
  }
}