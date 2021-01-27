import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('春日の父親はゴルフのカートで国道へ出た。', true),
    Question('オードリー春日のギャグは４種類である。', true),
    Question('オードリー 若林は小さい頃空手を習っていた。', false),
    Question('春日はボケではない。', true),
    Question('若林は仕事中に骨折した。', false),
    Question('春日の奥さんはミクさんである。', false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}

// '５月３日は憲法記念日である。', true,
// 'オードリー春日のギャグは４種類である。', true,
// 'オードリー 若林は小さい頃空手を習っていた。', false,
// '春日はボケではない。', true,
// '若林は仕事中に骨折した。', false,
// '春日の奥さんはミクさんである。'
