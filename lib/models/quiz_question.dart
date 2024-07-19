class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // Create a new list with the same elements as the original list
    // because the shuffle method changes the original list
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
