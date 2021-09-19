import 'package:ego_flutter/widgets/main_frame/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 320,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nazwa Gracza",
              ),
            )
          ),
        ],
      )
    );
  }
}
