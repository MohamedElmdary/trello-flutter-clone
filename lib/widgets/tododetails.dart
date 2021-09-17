import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_trello/models/todo.dart';

class TrelloCheckListItem extends StatelessWidget {
  final ChecklistModel checklist;
  TrelloCheckListItem(this.checklist);

  Widget build(BuildContext context) {
    return ListTile(
      title: Text(checklist.description),
      leading: Checkbox(value: checklist.done, onChanged: (v) {}),
    );
  }
}

class TrelloTodoDetails extends StatelessWidget {
  final TodoModel todo;
  TrelloTodoDetails(this.todo);

  Iterable<Widget> get _buildCheckListItems {
    return todo.list.map((l) => TrelloCheckListItem(l));
  }

  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(15),
      children: [
        Text(todo.title),
        Text("Description"),
        Text(todo.description),
        ..._buildCheckListItems
      ],
    );
  }
}
