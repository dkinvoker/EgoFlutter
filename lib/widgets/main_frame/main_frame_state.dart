import 'package:ego_flutter/widgets/facebook/facebook_login_button.dart';
import 'package:ego_flutter/widgets/main_frame/main_frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainFrameState extends State<MainFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: FacebookLoginButton()
        ));
  }
}
