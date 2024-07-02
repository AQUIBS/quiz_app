import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:quiz_app/constants/enums.dart';
import 'package:quiz_app/models/template_model.dart';

final templateProvider =
    StateProvider<List<Map<String, dynamic>>>((ref) => Constant.templates);

final dashBoardProvider =
    StateNotifierProvider<DashBoardController, List<TemplateModel>>(
        (ref) => DashBoardController());

class DashBoardController extends StateNotifier<List<TemplateModel>> {
  DashBoardController() : super([]);

  void loadTemplate() {
    List<TemplateModel> templateModel = [];

    for (var element in Constant.templates) {
      templateModel.add(TemplateModel.fromJson(element));
    }
    state = [...templateModel];
  }

  void search(String value) {
    final search = state.where((element) =>
        element.name.toString().toLowerCase().contains(value.toLowerCase()));
    state = [...search];
  }

  void selected(int index) {
    
  }
}
