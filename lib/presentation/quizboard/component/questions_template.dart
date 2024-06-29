import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz_app/constants/color.dart';
import 'package:quiz_app/constants/data.dart';
import 'package:quiz_app/constants/text.dart';
import 'package:quiz_app/controller/quiz_controller.dart';
import 'package:quiz_app/models/quiz_model.dart';

class QuestionBox extends ConsumerWidget {
  const QuestionBox({
    super.key,
  });
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
            quiz.questionsArray![quiz.questionsIndex!].question!,
            style: AppTheme.spaceTitle2.copyWith(color: AppColors.primaryGreen),
          ),
          const SizedBox(height: 12),
          ListView.builder(
            itemCount:
                quiz.questionsArray![quiz.questionsIndex!].options!.length,
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
                      quiz.questionsArray![quiz.questionsIndex!]
                          .options![index],
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
