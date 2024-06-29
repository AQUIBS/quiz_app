import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz_app/constants/color.dart';
import 'package:quiz_app/constants/text.dart';
import 'package:quiz_app/controller/quiz_controller.dart';
import 'package:quiz_app/presentation/quizboard/component/button.dart';

import 'component/questions_template.dart';

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
              "${quiz.questionsArray!.length} Questions",
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
