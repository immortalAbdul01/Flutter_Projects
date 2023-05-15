class QuizQuestions {
  const QuizQuestions(
    this.text,
    this.image,
    this.ans,
  );
  final String text;
  final String image;
  final List<String> ans;

  List<String> getShuffledList() {
    final List<String> shuffeldList = List.of(ans);
    shuffeldList.shuffle();
    return shuffeldList;
  }
}
