import 'package:ego_flutter/answer_providers/answer_provider.dart';
import 'package:ego_flutter/game_context/game_context.dart';

class SimpleAnswerProvider extends AnswerProvider {
  final String answer;

  SimpleAnswerProvider(this.answer);

  @override
  List<String> renderAnswers(GameContext context) {
    return [answer];
  }
}
