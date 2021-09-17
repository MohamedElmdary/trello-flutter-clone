import 'package:flutter/material.dart';
import 'package:flutter_trello/seed/lists.dart';
import 'package:flutter_trello/widgets/list.dart';
import './models/list.dart';

void main() {
  // my awesome app
  runApp(TrelloApp());
}

class TrelloApp extends StatefulWidget {
  createState() => _TrelloApp();
}

class _TrelloApp extends State<TrelloApp> {
  List<ListModel> lists = listsSeed;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView.builder(
            itemCount: lists.length,
            padding: const EdgeInsets.symmetric(vertical: 15),
            itemBuilder: (ctx, i) => TrelloList(lists[i]),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
