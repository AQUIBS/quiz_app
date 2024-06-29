// ignore_for_file: public_member_api_docs, sort_constructors_firstew

class TemplateModel {
  String? name;
  String? questionCode;
  int? questionCount;
  String? level;

  TemplateModel({this.name, this.questionCode, this.questionCount, this.level});

  TemplateModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    questionCode = json['questionCode'];
    questionCount = json['questionCount'];
    level = json['level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['questionCode'] = questionCode;
    data['questionCount'] = questionCount;
    data['level'] = level;
    return data;
  }

  TemplateModel copyWith({
    String? name,
    String? questionCode,
    int? questionCount,
    String? level,
  }) {
    return TemplateModel(
      name: name ?? this.name,
      questionCode: questionCode ?? this.questionCode,
      questionCount: questionCount ?? this.questionCount,
      level: level ?? this.level,
    );
  }
}
