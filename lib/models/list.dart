import './todo.dart';

class ListModel {
  String title;
  List<TodoModel> todos;

  ListModel({
    required this.title,
    required this.todos,
  });
}
