// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Todo List'),
        ),
        body: Todolist(),
      ),
    );
  }
}

class Todolist extends StatefulWidget {
  @override
  _TodolistState createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {

  List<String> todos = List<String>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ListView(
        children: [
          Text(
            "TO DO",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),
          ),
          Todo(text: "Be good at Flutter"),
        ],
      ),
    );
  }
}

class Todo extends StatefulWidget {
  final String text;

  const Todo ({ Key key, this.text }): super(key: key);

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  bool done = false;

  @override
  Widget build(BuildContext context) {
    return (Card(
      margin: EdgeInsets.only(top: 15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                done ? Icons.check_box_outlined : Icons.check_box_outline_blank,
                size: 35,
                color: Colors.blueGrey,
              ),
              onPressed: () {
                setState(() {
                  done = !done;
                });
              },
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              widget.text,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    ));
  }
}
