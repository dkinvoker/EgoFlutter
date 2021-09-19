import 'package:ego_flutter/globals.dart';
import 'package:ego_flutter/widgets/main_frame/login_page.dart';
import 'package:ego_flutter/widgets/navigation_frame/navigation_frame.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  Globals.mainNagigation.push(LoginPage());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EgoFlutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: NavigationFrame(
          navigationStream: Globals.mainNagigation,
        ),
      ),
    );
  }
}
