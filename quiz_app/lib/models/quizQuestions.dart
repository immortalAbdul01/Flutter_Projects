class QuizQuestions {
  const QuizQuestions(this.text, this.ans);
  final String text;
  final List<String> ans;

  List<String> getShuffledList() {
    final List<String> shuffeldList = List.of(ans);
    shuffeldList.shuffle();
    return shuffeldList;
  }
}
