import 'dart:async';

import 'package:flutter/material.dart';

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
      body: Container(alignment: Alignment.center, child: const Text("Quizo")),
    );
  }

  void autoNavigateToDashBoardView() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const DashBoardView()));
    });
  }
}
