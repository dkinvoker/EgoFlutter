import 'package:ego_flutter/game_context/game_context.dart';

class Macro {
  final String macro;
  final String Function(GameContext context) resolve;

  Macro(this.macro, this.resolve);
}
