class QuizQuestion {
  final String question;
  final List<String> answers;
  // final int correctAnswer;

  const QuizQuestion(
     this.question,
     this.answers,
    // required this.correctAnswer,
  );

  List<String> get shuffledAnswers {
    final answers = this.answers.toList();
    answers.shuffle();
    return answers;
  }
}