import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz_app/constants/color.dart';
import 'package:quiz_app/constants/text.dart';
import 'package:quiz_app/controller/quiz_controller.dart';
import 'package:quiz_app/models/quiz_model.dart';
import 'package:quiz_app/presentation/score_card_view.dart';

class QuizView extends ConsumerWidget {
  const QuizView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quiz = ref.watch(quizProvider);
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_outlined,
                color: AppColors.black,
              ))
        ],
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              ref.read(quizProvider.notifier).clearState();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.black,
            )),
        title: Column(
          children: [
            const Text(
              "React JS Quiz",
              style: AppTheme.spaceTitle3,
            ),
            Text(
              "${quiz.questionCount} Questions",
              style: AppTheme.urbanistsubTitle1,
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const QuestionBox(),
          Visibility(
            visible: quiz.onComplete!,
            replacement: const ActionButton(),
            child: const FinishButton(),
          )
        ],
      ),
    );
  }
}

class ActionButton extends ConsumerWidget {
  const ActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quiz = ref.watch(quizProvider);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                ref.read(quizProvider.notifier).skipQuestion();
                print(
                    "index ${quiz.questionsIndex!}  count ${quiz.questionCount}");
              },
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      border:
                          Border.all(width: 1, color: AppColors.primaryGreen),
                      borderRadius: BorderRadius.circular(24)),
                  height: 50,
                  child: Text(
                    "Skip",
                    style: AppTheme.spaceSubtile1
                        .copyWith(color: AppColors.primaryGreen),
                  )),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                if (quiz.answer != Answer.uncheck) {
                  ref.read(quizProvider.notifier).nextQuestion();
                }
              },
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColors.primaryGreen,
                      borderRadius: BorderRadius.circular(24)),
                  height: 50,
                  child: Text(
                    "Save & Next",
                    style:
                        AppTheme.spaceSubtile1.copyWith(color: AppColors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class FinishButton extends ConsumerWidget {
  const FinishButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: InkWell(
        onTap: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (_) => const ScoreCardView()));
          ref.read(quizProvider.notifier).clearState();
        },
        child: Container(
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppColors.primaryGreen,
                borderRadius: BorderRadius.circular(24)),
            height: 50,
            child: Text(
              "Finish Quiz",
              style: AppTheme.spaceSubtile1.copyWith(color: AppColors.white),
            )),
      ),
    );
  }
}

class QuestionBox extends ConsumerWidget {
  const QuestionBox({
    super.key,
  });
  final int correctAns = 3;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quiz = ref.watch(quizProvider);
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 20, right: 15, bottom: 25),
      margin: const EdgeInsets.all(20),
      width: double.maxFinite,
      decoration: BoxDecoration(
          border: Border.all(width: 0.6, color: AppColors.grey),
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Question ${quiz.questionsIndex! + 1}",
                style: AppTheme.spaceTitle1,
              ),
              Text(
                "Score ${quiz.score}",
                style: AppTheme.spaceTitle1,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            quiz.question!.question.toString(),
            style: AppTheme.spaceTitle2.copyWith(color: AppColors.primaryGreen),
          ),
          const SizedBox(height: 12),
          ListView.builder(
            itemCount: quiz.question!.options!.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return AbsorbPointer(
                absorbing: quiz.answer != Answer.uncheck,
                child: GestureDetector(
                  onTap: () {
                    ref.read(quizProvider.notifier).check(index);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 6, bottom: 6),
                    width: double.maxFinite,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: setColor(index, quiz),
                        border: Border.all(
                            width: .5, color: setBoarderColor(index, quiz)),
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      quiz.question!.options![index],
                      textAlign: TextAlign.center,
                      style: AppTheme.spaceSubtile1
                          .copyWith(color: AppColors.primaryGreen),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Color setColor(int index, QuizModel quiz) {
    if (index == quiz.correctOption && quiz.correctOption == index) {
      return AppColors.secondaryYellow;
    }
    if (index == quiz.userSelectedOption && quiz.correctOption != index) {
      return AppColors.red;
    } else {
      return AppColors.white;
    }
  }

  Color setBoarderColor(int index, QuizModel quiz) {
    if (index == quiz.correctOption && quiz.correctOption == index) {
      return AppColors.secondaryYellow;
    }
    if (index == quiz.userSelectedOption && quiz.correctOption != index) {
      return AppColors.red;
    } else {
      return AppColors.grey;
    }
  }
}
