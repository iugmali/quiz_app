class QuizQuestion {
  final String question;
  final List<String> options;

  const QuizQuestion(this.question, this.options);
  
  get shuffledOptions {
    final List<String> copyOptions = List.of(options);
    copyOptions.shuffle();
    return copyOptions;
  }
}