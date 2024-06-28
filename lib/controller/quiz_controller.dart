// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz_app/models/data/dummie.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/models/quiz_model.dart';

// ignore: constant_identifier_names
enum Answer { correct, wrong, uncheck, skiped }

const String rectQuiz = "ReactQuestions";
const String flutterQuiz = "FlutterQuestions";

final quizProvider =
    StateNotifierProvider<QuizContoller, QuizModel>((ref) => QuizContoller());

class QuizContoller extends StateNotifier<QuizModel> {
  QuizContoller() : super(QuizModel.init());

  void loadQuestion() {
    final questions = QuestionsModel.loaded(rectQuiz, state.questionsIndex!);
    Map<String, dynamic> rawdata = SampleData().data;
    if (rawdata.isNotEmpty) {
      List<Map<String, dynamic>> data = rawdata[rectQuiz];
      state = state.copyWith(questionCount: data.length);
      state = state.copyWith(
        question: questions,
      );
    }
    print(state.questionsIndex);
    print("Report Len: ${state.report!.length}");
  }

  void check(int inputOption) {
    state = state.copyWith(
      userSelectedOption: inputOption,
      correctOption: state.question!.correctOption,
    );

    if (inputOption == state.question!.correctOption) {
      state = state.copyWith(
          score: state.score! + state.question!.points!,
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
      print("*************{ FINISH }***********");
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
      print("*************{ FINISH }***********");
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
