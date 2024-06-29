import 'package:quiz_app/constants/data.dart';
import 'package:quiz_app/models/question_model.dart';

class QuizModel {
  final List<QuestionsModel>? questionsArray;
  final Answer? answer;
  final int? userSelectedOption;
  final int? correctOption;
  final int? questionsIndex;
  final int? score;
  final int questionCount;
  final bool? onComplete;
  final List<Answer>? report;

  QuizModel(
      this.questionsArray,
      this.answer,
      this.userSelectedOption,
      this.correctOption,
      this.questionsIndex,
      this.score,
      this.questionCount,
      this.onComplete,
      this.report);

  factory QuizModel.init() {
    return QuizModel([], Answer.uncheck, -1, -1, 0, 0, 0, false, []);
  }

  QuizModel copyWith(
      {List<QuestionsModel>? questionsArray,
      Answer? answer,
      int? userSelectedOption,
      int? correctOption,
      int? questionsIndex,
      int? score,
      bool? onComplete,
      int? questionCount,
      List<Answer>? report}) {
    return QuizModel(
        questionsArray ?? this.questionsArray,
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
