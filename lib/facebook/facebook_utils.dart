import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookUtils {

  static void initFacebook() {
    FacebookAuth.instance.webInitialize(
      appId: "885070802415861",
      cookie: true,
      xfbml: true,
      version: "v11.0",
    );
  }

}
