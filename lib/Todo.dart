import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  final String text;

  const Todo({Key key, this.text}) : super(key: key);

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
