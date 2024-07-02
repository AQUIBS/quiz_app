enum Answer { correct, wrong, uncheck, skiped }

class Constant {
  ///"AIzaSyBk3XaFzIr1pzKA5nukmfaH21y0irUEtEk";

  static const hello = "Hello";
  static const discription = "What Langauge do\nyou want to improve Today?";

  static const List<Map<String, dynamic>> templates = [
    {
      "name": "React.Js",
      "questionCode": "ReactQuestions",
      "questionCount": 15,
      "level": "bignner"
    },
    {
      "name": "Python",
      "questionCode": "PythonQuestions",
      "questionCount": 15,
      "level": "intermediate"
    },
    {
      "name": "Java",
      "questionCode": "JavaQuestions",
      "questionCount": 15,
      "level": "advanced"
    },
    {
      "name": "JavaScript",
      "questionCode": "JSQuestions",
      "questionCount": 15,
      "level": "beginner"
    },
    {
      "name": "C++",
      "questionCode": "CQuestions",
      "questionCount": 15,
      "level": "intermediate"
    },
    {
      "name": "Flutter",
      "questionCode": "FlutterQuestions",
      "questionCount": 15,
      "level": "beginner"
    },
  ];
}
