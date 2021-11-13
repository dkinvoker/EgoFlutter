import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddQuestionButton extends StatelessWidget {
  AddQuestionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => _onPresed(context), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              size: 90,
            ),
            Text(
              "Dodaj!",
              style: TextStyle(fontSize: 48),
            )
          ],
        )
      ),
    );
  }

  void _onPresed(BuildContext context) {

  }
}