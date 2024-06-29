import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz_app/constants/color.dart';
import 'package:quiz_app/constants/data.dart';
import 'package:quiz_app/constants/text.dart';
import 'package:quiz_app/controller/quiz_controller.dart';
import 'package:quiz_app/presentation/score_card_view.dart';

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
                
                if (quiz.answer == Answer.uncheck) {
                  ref.read(quizProvider.notifier).skipQuestion();
                } else {
                  print("Can't Skip if any answer if selected");
                }
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
                } else {
                  print("Please select provided options");
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
