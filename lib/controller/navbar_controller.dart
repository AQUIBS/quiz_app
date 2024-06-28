import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigatorBarProvider = StateNotifierProvider<NavigatorBarController, int>(
    (ref) => NavigatorBarController());

class NavigatorBarController extends StateNotifier<int> {
  NavigatorBarController() : super(0);

  void changeIndex(int index) {
    state = index;
  }
}
