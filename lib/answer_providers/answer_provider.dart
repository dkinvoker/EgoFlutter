import 'package:ego_flutter/game_context/game_context.dart';

abstract class AnswerProvider {
  List<String> renderAnswers(GameContext context);
}
