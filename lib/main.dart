// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Linkedin"),
        ),
        body: profile(),
        backgroundColor: Colors.white70,
      ),
    );
  }

  Widget profile() {
    return ListView(
      children: [
        Stack(
          children: [
            Image.asset('images/background.png'),
            Positioned(
              top: 50,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/photo.jpeg'),
                radius: 40,
              ),
            ),
          ],
        ),
        primarySection(),
        SizedBox(height: 3),
        aboutSection(),
        SizedBox(height: 3),
        contactSection()
      ],
    );
  }

  Widget primarySection() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(15.0),
      child: Column(children: [
        SizedBox(height: 3),
        Text("Elies Senouci",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
        SizedBox(height: 3),
        Text("Développeur Java", style: TextStyle(fontSize: 18)),
        SizedBox(height: 3),
        Text("Jobijoba - EPITECH"),
        SizedBox(height: 3),
        Text("Bordeaux, Nouvelle-Aquitaine, France")
      ], crossAxisAlignment: CrossAxisAlignment.start),
    );
  }

  Widget aboutSection() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(15.0),
      child: Column(children: [
        Text("À propos",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
        SizedBox(height: 6),
        Text(
            "Développeur back-end, mes expériences m'ont principalement poussées à développer en Java et en Python. "
            "Je prépare un titre d'expert en technologie de l'information à EPITECH.")
      ], crossAxisAlignment: CrossAxisAlignment.start),
    );
  }

  Widget contactSection() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(
            "Contact",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 10),
          buildContactRow(
              "Linkedin",
              "http://linkedin.com/in/elies-senouci",
              Icon(
                Icons.link,
                size: 20,
              )),
          SizedBox(height: 10),
          buildContactRow(
              "E-mail",
              "elies.senouci@gmail.com",
              Icon(
                Icons.alternate_email,
                size: 20,
              ))
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }

  Widget buildContactRow(String headline, String text, Icon icon) {
    return Row(
      children: [
        icon,
        SizedBox(width: 20),
        Column(
          children: [
            Text(
              headline,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(text),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ],
    );
  }
}
class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        // The containers in the background
        new Column(
          children: <Widget>[
            new Container(
              height: MediaQuery.of(context).size.height * .65,
              color: Colors.blue,
            ),
            new Container(
              height: MediaQuery.of(context).size.height * .35,
              color: Colors.white,
            )
          ],
        ),
        // The card widget with top padding,
        // incase if you wanted bottom padding to work,
        // set the `alignment` of container to Alignment.bottomCenter
        new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .58,
              right: 20.0,
              left: 20.0),
          child: new Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            child: new Card(
              color: Colors.white,
              elevation: 4.0,
            ),
          ),
        )
      ],
    );
  }
}
