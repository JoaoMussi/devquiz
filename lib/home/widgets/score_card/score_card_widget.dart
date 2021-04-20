import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class ScoreCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: 80,
              height: 80,
              color: AppColors.red,
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Column(children: [
                Text("Vamos começar"),
                Text("Complete os desafios e avance em conhecimento"),
              ],),
            ),
          ) 
        ],
        
      ),
      
    );
  }
}