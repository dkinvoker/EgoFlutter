import 'dart:math';

import 'package:ego_flutter/macros/macro.dart';

class Globals {
  static String playerName = "";
  static List<Macro> macros = [
    Macro("@activePlayer", (context) => context.activePlayer),
    Macro("@randomPlayer", (context) {
      final random = new Random();
      return context.allPlayers[random.nextInt(context.allPlayers.length)];
    }),
    Macro("@otherPlayer", (context) {
      final random = new Random();
      final otherPlayers = context.otherPlayers;
      return otherPlayers[random.nextInt(otherPlayers.length)];
    })
  ];
}
