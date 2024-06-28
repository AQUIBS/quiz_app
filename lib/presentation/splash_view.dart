import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz_app/constants/color.dart';
import 'package:quiz_app/constants/text.dart';
import 'dashboard/dashboard_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
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
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const DashBoardView()));
    });
  }
}
