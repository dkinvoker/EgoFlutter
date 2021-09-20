import 'package:ego_flutter/globals.dart';
import 'package:ego_flutter/widgets/login_page/login_page.dart';
import 'package:ego_flutter/widgets/main_page/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 320,
              child: TextField(
                autofocus: true,
                onChanged: (text) => Globals.playerName = text,
                onEditingComplete: () {
                  goNext(context);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nazwa Gracza",
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  goNext(context);
                },
                child: Text("Zatwierdź"))
          ],
        ),
      ],
    ));
  }

  void goNext(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (con) {
      return MainPage();
    }));
  }
}
