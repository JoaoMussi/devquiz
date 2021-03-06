import 'dart:convert';

import 'package:DevQuiz/shared/models/question_model.dart';

enum Level {
  FACIL,
  MEDIO,
  DIFICIL,
  PERITO
}

extension LevelStringExt on String {
  Level get parse => {
    "facil": Level.FACIL,
    "medio": Level.MEDIO,
    "dificil": Level.DIFICIL,
    "perito": Level.PERITO
  }[this]!;
}

extension LevelExt on Level {
  String get parse => {
    Level.FACIL : "facil",
    Level.MEDIO : "medio",
    Level.DIFICIL : "dificil",
    Level.PERITO : "perito"
  }[this]!;
}

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionsAnswered;
  final String image;
  final Level level;

  QuizModel({
    required this.title,
    required this.questions,
    this.questionsAnswered = 0,
    required this.image,
    required this.level
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'questions': questions.map((x) => x.toMap()).toList(),
      'questionsAnswered': questionsAnswered,
      'image': image,
      'level': level.parse,
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    var teste = QuizModel(
      title: map['title'],
      questions: List<QuestionModel>.from(map['questions']?.map((x) => QuestionModel.fromMap(x))),
      questionsAnswered: map['questionsAnswered'],
      image: map['image'],
      level: map['level'].toString().parse,
    );

    return teste;
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) => QuizModel.fromMap(json.decode(source));
}
