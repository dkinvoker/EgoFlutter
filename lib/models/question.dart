import 'package:ego_flutter/answer_providers/answer_provider.dart';
import 'package:ego_flutter/game_context/game_context.dart';
import 'package:ego_flutter/globals.dart';

class Question {
  final String question;
  final DateTime createdDate;
  final String createdBy;
  final int usageCount;
  final List<AnswerProvider> answerProviders;
  final List<String> tags;

  Question(
      {required this.question,
      required this.createdDate,
      required this.createdBy,
      required this.usageCount,
      required this.answerProviders,
      required this.tags});

  String resolveQuestion(GameContext context) {
    String result = this.question;
    Globals.macros.forEach((macro) {
      result = result.replaceAll(macro.macro, macro.resolve(context));
    });
    return result;
  }

  List<String> renderAnswers(GameContext context) {
    final List<String> result = [];
    this.answerProviders.forEach((provider) {
      result.addAll(provider.renderAnswers(context));
    });
    return result;
  }
}
