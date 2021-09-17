import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_trello/models/list.dart';
import 'package:flutter_trello/widgets/todo.dart';

class TrelloList extends StatelessWidget {
  final ListModel list;

  TrelloList(this.list);

  Widget get _buildTodos {
    return Expanded(
      child: ListView.builder(
        itemCount: list.todos.length,
        itemBuilder: (ctx, i) => TrelloTodo(list.todos[i]),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: 350,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Text(list.title),
          _buildTodos,
        ],
      ),
    );
  }
}
