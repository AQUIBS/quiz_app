import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quiz_app/constants/color.dart';
import 'package:quiz_app/constants/text.dart';
import 'package:quiz_app/controller/searchbar_contoller.dart';
import 'dashboard/dashboard_view.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  @override
  void initState() {
    autoNavigateToDashBoardView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryGreen,
      body: Container(
          alignment: Alignment.center,
          child: Text(
            "Quizo",
            style: AppTheme.spaceHeadline
                .copyWith(color: AppColors.secondaryYellow),
          )),
    );
  }

  void autoNavigateToDashBoardView() {
    Timer(const Duration(seconds: 3), () {
      ref.read(dashBoardProvider.notifier).loadTemplate();

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const DashBoardView()));
    });
  }
}
