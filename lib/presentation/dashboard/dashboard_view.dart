import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz_app/constants/color.dart';
import 'package:quiz_app/constants/enums.dart';
import 'package:quiz_app/constants/text.dart';
import 'package:quiz_app/controller/quiz_controller.dart';
import 'package:quiz_app/controller/searchbar_contoller.dart';
import 'package:quiz_app/presentation/dashboard/component/navigationbar.dart';
import 'package:quiz_app/presentation/quizboard/quiz_view.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      extendBody: true,
      bottomNavigationBar: const FloatingMenu(),
      body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  GreetingWidget(),
                  UserName(),
                  DefaultWelcomeText(),
                  SearchBar(),
                  QuizPalette()
                ]),
          )),
    );
  }
}

class QuizPalette extends ConsumerWidget {
  const QuizPalette({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final template = ref.read(dashBoardProvider);

    return GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 0.92),
        shrinkWrap: true,
        itemCount: template.length,
        itemBuilder: (constext, index) {
          return InkWell(
            onTap: () {
              ref
                  .read(quizProvider.notifier)
                  .loadData(template[index].questionCode!);
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const QuizView()));
            },
            child: Container(
              height: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColors.secondaryYellow,
                  borderRadius: BorderRadius.circular(22)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.ac_unit_rounded,
                    size: 70,
                    color: AppColors.primaryGreen,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    template[index].name!,
                    style: AppTheme.spaceTitle1,
                  )
                ],
              ),
            ),
          );
        });
  }
}

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Text(
        Constant.hello,
        style: AppTheme.urbanistsubTitle1,
      ),
    );
  }
}

class DefaultWelcomeText extends StatelessWidget {
  const DefaultWelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Text(
        Constant.discription,
        style: AppTheme.spaceHeadline,
      ),
    );
  }
}

class UserName extends ConsumerWidget {
  const UserName({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Padding(
        padding: EdgeInsets.only(top: 3, bottom: 20),
        child: Text("Brooklyn Simmoms", style: AppTheme.spaceSubtile2));
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primaryGreen,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          color: AppColors.grey,
        ),
        hintText: "Search Here",
        hintStyle: AppTheme.spaceTitle1.copyWith(color: AppColors.grey),
        filled: true,
        fillColor: AppColors.secondaryYellow,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.secondaryYellow),
          borderRadius: BorderRadius.circular(30),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.secondaryYellow),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
