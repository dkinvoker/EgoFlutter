import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import '../../globals.dart';

class FacebookLoginButton extends StatelessWidget {
  const FacebookLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("Zaloguj przez FB"),
      onPressed: () => _login(context),
    );
  }

  void _login(BuildContext context) async {
    final LoginResult result = await FacebookAuth.instance.login();
    if (result.status == LoginStatus.success) {
      // you are logged
      final AccessToken accessToken = result.accessToken!;
      Globals.facebookToken = accessToken;
      final userData = await FacebookAuth.instance.getUserData();
      Navigator.push(
        context, 
        MaterialPageRoute(
          builder: (context) =>
          Column(
            children: [
              Text(userData["name"]),
              Image.network(userData["picture"]["data"]["url"])
            ],
          )
        )
      );
    }
  }
}
