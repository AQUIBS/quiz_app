import 'package:quiz_app/models/question_model.dart';

import '../controller/quiz_controller.dart';

class QuizModel {
  final QuestionsModel? question;
  final Answer? answer;
  final int? userSelectedOption;
  final int? correctOption;
  final int? questionsIndex;
  final int? score;
  final int questionCount;
  final bool? onComplete;
  final List<Answer>? report;

  QuizModel(
      this.question,
      this.answer,
      this.userSelectedOption,
      this.correctOption,
      this.questionsIndex,
      this.score,
      this.questionCount,
      this.onComplete,
      this.report);

  factory QuizModel.init() {
    return QuizModel(
        QuestionsModel(), Answer.uncheck, -1, -1, 0, 0, 0, false, []);
  }

  QuizModel copyWith(
      {QuestionsModel? question,
      Answer? answer,
      int? userSelectedOption,
      int? correctOption,
      int? questionsIndex,
      int? score,
      bool? onComplete,
      int? questionCount,
      List<Answer>? report}) {
    return QuizModel(
        question ?? this.question,
        answer ?? this.answer,
        userSelectedOption ?? this.userSelectedOption,
        correctOption ?? this.correctOption,
        questionsIndex ?? this.questionsIndex,
        score ?? this.score,
        questionCount ?? this.questionCount,
        onComplete ?? this.onComplete,
        report ?? this.report);
  }
}
