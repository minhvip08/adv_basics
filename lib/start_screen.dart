import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: 0.8,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: Color.fromARGB(167, 250, 250, 250),
            ),
          const SizedBox(height: 50),
          const Text(
            'Let\'s start the quiz!',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            label: const Text('Start Quiz'),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(color: Colors.white, width: 2),
              shape: const StadiumBorder(),
            ),
            icon: const Icon(Icons.arrow_right),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
