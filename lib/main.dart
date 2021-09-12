import 'package:ego_flutter/facebook/facebook_utils.dart';
import 'package:ego_flutter/widgets/main_frame/main_frame.dart';
import 'package:flutter/material.dart';

void main() {
  FacebookUtils.initFacebook();
  runApp(MyApp());
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
      home: MainFrame(),
    );
  }
}
