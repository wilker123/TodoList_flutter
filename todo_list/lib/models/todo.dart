class Todo {
  String title;
  DateTime dateTime;

  Todo.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        dateTime = DateTime.parse(json['dateTime']);

  Todo({
    required this.title,
    required this.dateTime,
  });

  toJson() {
    return {
      'title': title,
      'dateTime': dateTime.toIso8601String(),
    };
  }
}
