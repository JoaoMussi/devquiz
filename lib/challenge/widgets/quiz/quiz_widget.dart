import 'package:DevQuiz/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key ? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            this.title,
            style: AppTextStyles.heading
          ),
          SizedBox(
            height: 24
          ),
          AnswerWidget(
            title: "Possibilita a renderização"
          ),
          AnswerWidget(
            title: "Possibilita a renderização"
          ),
          AnswerWidget(
            title: "Possibilita a renderização"
          ),
          AnswerWidget(
            isRight: false,
            isSelected: true,
            title: "Possibilita a renderização"
          ),
        ],
      ),
    );
  }
}