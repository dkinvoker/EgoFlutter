import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String text;

  const ErrorDialog({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Icon(
            Icons.error_rounded,
            color: Colors.red,
          ),
          SizedBox(width: 8,),
          Text(this.text)
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
          child: Text("No k...")
        )
      ],
    );
  }
}
