// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'data/dummie.dart';

class QuestionsModel {
  String? question;
  List<String>? options;
  int? correctOption;
  int? points;

  QuestionsModel(
      {this.question, this.options, this.correctOption, this.points});

  QuestionsModel.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    options = json['options'].cast<String>();
    correctOption = json['correctOption'];
    points = json['points'];
  }

  factory QuestionsModel.loaded(String type, int questionIndex) {
    Map<String, dynamic> rawdata = SampleData().data;
    return QuestionsModel.fromJson(rawdata[type][questionIndex]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['question'] = question;
    data['options'] = options;
    data['correctOption'] = correctOption;
    data['points'] = points;
    return data;
  }

  QuestionsModel copyWith({
    String? question,
    List<String>? options,
    int? correctOption,
    int? points,
  }) {
    return QuestionsModel(
      question: question ?? this.question,
      options: options ?? this.options,
      correctOption: correctOption ?? this.correctOption,
      points: points ?? this.points,
    );
  }
}
