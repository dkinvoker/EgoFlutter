import 'package:ego_flutter/widgets/edit_page/edit_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditQuestionButton extends StatelessWidget {
  const EditQuestionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (con) { 
                return EditPage(); 
              }
            )
          );
        }, 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.edit,
              size: 90,
            ),
            Text(
              "Edytuj pytania",
              style: TextStyle(fontSize: 48),
            )
          ],
        )
      ),
    );;
  }
}