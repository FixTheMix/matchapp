import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import '../models/question.dart';

class SwipeView extends StatelessWidget {
  final List<Question> questions = [
    Question(
      id: '1',
      text: 'Wat is je favoriete film?',
      authorId: 'user456',
      createdAt: DateTime.now(),
    ),
    Question(
      id: '2',
      text: 'Zou je liever kunnen vliegen of onzichtbaar zijn?',
      authorId: 'user789',
      createdAt: DateTime.now(),
    ),
    Question(
      id: '3',
      text: 'Wat is je guilty pleasure?',
      authorId: 'user456',
      createdAt: DateTime.now(),
    ),
  ];

  SwipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Swipe Vragen")),
      body: Swiper(
        itemCount: questions.length,
        layout: SwiperLayout.STACK,
        itemWidth: MediaQuery.of(context).size.width * 0.85,
        itemHeight: MediaQuery.of(context).size.height * 0.5,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: const EdgeInsets.all(24),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  questions[index].text,
                  style: const TextStyle(fontSize: 22),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
        onIndexChanged: (int index) {
          // Index van huidige kaart verandert
        },
        onTap: (int index) {
          print("Tik op vraag: ${questions[index].text}");
        },
      ),
    );
  }
}
