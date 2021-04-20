import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() : super(
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 250,
      decoration: BoxDecoration(gradient: AppGradients.linear),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(
                  text: "Olá, ",
                  style: AppTextStyles.title,
                  children: [
                    TextSpan(
                      text: "João",
                      style: AppTextStyles.titleBold
                    ),
                    
                  ]
                )),
                Container(
                  height: 58,
                  width: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: NetworkImage("https://static1.patasdacasa.com.br/articles/6/21/06/@/9702-o-que-voce-sabe-sobre-o-pug-desvendamos-articles_media_mobile-2.jpg"))
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    )
  );
}