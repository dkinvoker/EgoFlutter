import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class Globals {
  static AccessToken? facebookToken;

  static bool get isLogged => Globals.facebookToken != null;
}
