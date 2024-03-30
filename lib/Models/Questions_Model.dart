class QuestionsModel {
  final int id;
  final String text;
  final List<QuestionsModel> options;
  bool isLocked;
  QuestionsModel? selectedWiidgetOption;
  QuestionsModel correctAnswer;

  QuestionsModel({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });
}