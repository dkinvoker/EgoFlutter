import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookUtils {

  static void initFacebook() {
    FacebookAuth.instance.webInitialize(
      appId: "1161368211040906",
      cookie: true,
      xfbml: true,
      version: "v11.0",
    );
  }
  
}
