// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz_app/constants/data.dart';

import 'package:quiz_app/models/data/dummie.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/models/quiz_model.dart';

final quizProvider =
    StateNotifierProvider<QuizContoller, QuizModel>((ref) => QuizContoller());

class QuizContoller extends StateNotifier<QuizModel> {
  QuizContoller() : super(QuizModel.init());

  void loadData(String questionCode) {
    List<QuestionsModel> model = [];

    print("**** $questionCode ****".toUpperCase());
    Map<String, dynamic> data = SampleData().data;

    List<Map<String, dynamic>> loaded = data[questionCode];

    for (var question in loaded) {
      model.add(QuestionsModel.fromJson(question));
    }
    state = state.copyWith(questionsArray: [...model]);
  }

  void loadQuestion() {
    state = state.copyWith(questionCount: state.questionsArray!.length);
  }

  void check(int inputOption) {
    state = state.copyWith(
      userSelectedOption: inputOption,
      correctOption: state.questionsArray![state.questionsIndex!].correctOption,
    );

    if (inputOption ==
        state.questionsArray![state.questionsIndex!].correctOption) {
      state = state.copyWith(
          score: state.score! +
              state.questionsArray![state.questionsIndex!].points!,
          answer: Answer.correct);
    } else {
      state = state = state.copyWith(score: state.score!, answer: Answer.wrong);
    }

    /// Do Not Move this [State] As it need to update after answer [State] is updated
    state = state.copyWith(
      report: [...state.report!, state.answer!],
    );
  }

  void nextQuestion() {
    int counter = state.questionsIndex!;
    if (state.questionCount == state.questionsIndex! + 1) {
      state = state.copyWith(onComplete: true);
    } else {
      state = state.copyWith(questionsIndex: counter + 1);

      loadQuestion();
      _resetState();
    }
  }

  void skipQuestion() {
    int counter = state.questionsIndex!;

    /// Adding [Answer.Skiped] to report array
    state = state.copyWith(answer: Answer.skiped);
    state = state.copyWith(report: [...state.report!, state.answer!]);

    if (state.questionCount == state.questionsIndex! + 1) {
      state = state.copyWith(onComplete: true);
    } else {
      state = state.copyWith(
        questionsIndex: counter + 1,
      );

      loadQuestion();
      _resetState();
    }
  }

  void _resetState() {
    state = state.copyWith(
        correctOption: -1, userSelectedOption: -1, answer: Answer.uncheck);
  }

  void clearState() {
    print("State Clear");
    state = state.copyWith(
        correctOption: -1,
        userSelectedOption: -1,
        answer: Answer.uncheck,
        onComplete: false,
        questionsIndex: 0);
  }

  void clearScore() {
    print("Score Clear");
    state = state.copyWith(report: [], score: 0);
  }
}
