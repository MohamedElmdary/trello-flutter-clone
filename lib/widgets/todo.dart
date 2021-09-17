import 'package:flutter/material.dart';
import 'package:flutter_trello/models/todo.dart';
import 'package:flutter_trello/widgets/tododetails.dart';

class TrelloTodo extends StatelessWidget {
  final TodoModel todo;
  TrelloTodo(this.todo);

  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (ctx) {
            return Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
              ),
              color: Colors.transparent,
              child: Container(
                height: 350,
                color: Colors.white,
                child: TrelloTodoDetails(todo),
              ),
            );
          },
        );
      },
      child: Container(
        color: Colors.white,
        // decoration: ,
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: Text(todo.title),
      ),
    );
  }
}
