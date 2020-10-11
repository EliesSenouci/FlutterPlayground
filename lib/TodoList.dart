import 'package:flutter/material.dart';

import 'Todo.dart';

class Todolist extends StatefulWidget {
  @override
  _TodolistState createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {
  List<String> todos = [];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: Color(0xFFEBEBEB),
              ),
              padding: EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 250,
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Todo',
                            border: InputBorder.none,
                            hintStyle: TextStyle(fontSize: 18)),
                        onSubmitted: (String value) {
                          setState(() {
                            if (value.length > 0) {
                              todos.add(value);
                            }
                          });
                        }),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "TO DO",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return (Todo(text: todos[index]));
              },
            ),
          ],
        )
    );
  }
}
