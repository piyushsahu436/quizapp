class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];


  list.add(Question(
    "Who owns Leeza?",
    [
      Answer("Mohammed Ibrahim Raza", true),
      Answer("Ahmed", false),
      Answer("Ali", false),
      Answer("Hassan", false),
    ],
  ));
  list.add(Question(
    "Who is the owner of Kotlin?",
    [
      Answer("Nokia", false),
      Answer("Samsung", false),
      Answer("Google", true),
      Answer("Apple", false),
    ],
  ));



  list.add(Question(
    "Flutter user dart as a language?",
    [
      Answer("True", true),
      Answer("False", false),
      Answer("None", false),
      Answer("All", false),
    ],
  ));
  list.add(Question(
    "Youtube is _________  platform?",
    [
      Answer("Music Sharing", false),
      Answer("Video Sharing", false),
      Answer("Live Streaming", false),
      Answer("All of the above", true),
    ],
  ));



  return list;
}
