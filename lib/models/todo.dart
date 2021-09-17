class TodoModel {
  String title;
  String description;
  List<ChecklistModel> list;

  TodoModel({
    required this.title,
    required this.description,
    required this.list,
  });
}

class ChecklistModel {
  String description;
  bool done;

  ChecklistModel({
    required this.description,
    this.done = false,
  });
}
