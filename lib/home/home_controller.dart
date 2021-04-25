import 'package:DevQuiz/home/home_repository.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/cupertino.dart';



class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value; 

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void fetchData () async {
    state = HomeState.loading;
    user = await repository.getUser();
    quizzes = await repository.getQuizzes();
    state = HomeState.sucess;
  }

  // void getUser() async {
  //   state = HomeState.loading;
    
  //   user = await repository.getUser();
    
  //   // user = UserModel(
  //   //   name: "João",
  //   //   photoUrl: "https://static1.patasdacasa.com.br/articles/6/21/06/@/9702-o-que-voce-sabe-sobre-o-pug-desvendamos-articles_media_mobile-2.jpg"
  //   // );

  //   state = HomeState.sucess;
  // }

  // void getQuizzes() async {
  //   state = HomeState.loading;
    
  //   quizzes = await repository.getQuizzes();

  //   // quizzes = [
  //   //   QuizModel(
  //   //     title: "Teste",
  //   //     image: "",
  //   //     questionsAnswered: 1,
  //   //     level: Level.FACIL,
  //   //     questions: [
  //   //       QuestionModel(
  //   //         title: "Pergunta 1",
  //   //         answers: [
  //   //           AnswerModel(title: "1"),
  //   //           AnswerModel(title: "2"),
  //   //           AnswerModel(title: "3"),
  //   //           AnswerModel(title: "4"),
  //   //         ]
  //   //       )
  //   //     ]
  //   //   )
  //   // ];

  //   state = HomeState.sucess;
  // }
  
}