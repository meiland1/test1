class Habit {
  String? id;
  String? habitText;
  bool isDone;

  Habit({
    required this.id,
    this.habitText,
    this.isDone = false,
  });

  static List<Habit> habitList() {
    return [
      Habit(id: '01', habitText: 'Exercise', isDone: true),
      Habit(id: '02', habitText: 'Code', isDone: true),
      Habit(id: '03', habitText: 'Buy Groceries', isDone: false),
      Habit(id: '04', habitText: 'Meditate', isDone: false),
      Habit(id: '05', habitText: 'Read', isDone: false),
      Habit(id: '06', habitText: 'Laundry', isDone: false),
    ];
  }
}
