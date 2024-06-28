// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:quiz_app/constants/color.dart';
import 'package:quiz_app/constants/text.dart';
import 'package:quiz_app/controller/quiz_controller.dart';

class ScoreCardView extends ConsumerWidget {
  const ScoreCardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quiz = ref.read(quizProvider);
    return Scaffold(
      backgroundColor: AppColors.offwhite,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.offwhite,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              ref.read(quizProvider.notifier).clearScore();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.black,
            )),
        title: const Text(
          "Quiz Progress",
          style: AppTheme.spaceTitle3,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                GridView.builder(
                    itemCount: 15,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 9,
                            crossAxisSpacing: 9,
                            childAspectRatio: 0.92,
                            crossAxisCount: 5),
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: tileColors(quiz.report![index], true),
                            border: Border.all(
                                color: tileColors(quiz.report![index], false)),
                            borderRadius: BorderRadius.circular(12)),
                        child: Text(
                          "${index + 1}",
                          style: AppTheme.urbanistsubTitle1,
                        ),
                      );
                    }),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AcknowledgementTile(
                          color: AppColors.secondaryYellow,
                          lable: "Solved",
                        ),
                        AcknowledgementTile(
                          color: AppColors.white,
                          lable: "Unsolved",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AcknowledgementTile(
                          color: AppColors.primaryGreen,
                          lable: "Current Question",
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Color tileColors(Answer answer, bool border) {
    if (border) {
      switch (answer) {
        case Answer.correct:
          return AppColors.secondaryYellow;
        case Answer.wrong:
          return AppColors.red;
        case Answer.skiped:
          return AppColors.white;

        default:
          return AppColors.white;
      }
    } else {
      switch (answer) {
        case Answer.correct:
          return AppColors.secondaryYellow;
        case Answer.wrong:
          return AppColors.red;
        case Answer.skiped:
          return AppColors.grey;
        default:
          return AppColors.grey;
      }
    }
  }
}

class AcknowledgementTile extends StatelessWidget {
  final Color color;
  final String lable;
  const AcknowledgementTile({
    Key? key,
    required this.color,
    required this.lable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              border: Border.all(
                  color: (lable.contains("Unsolved")) ? AppColors.grey : color),
              color: color,
              borderRadius: BorderRadius.circular(6)),
        ),
        const SizedBox(width: 20),
        Text(
          lable,
          style: AppTheme.urbanistsubTitle1,
        ),
        const SizedBox(width: 40)
      ],
    );
  }
}
