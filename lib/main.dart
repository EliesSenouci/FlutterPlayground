// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

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
            Padding(
              padding: EdgeInsets.only(bottom: 0),
              child: Image.asset('images/background.png'),
            ),
            Positioned(
              top: 40,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/photo.jpeg'),
                radius: 40,
              ),
            ),
          ],
        ),
        primarySection()
      ],
    );
  }

  Widget primarySection() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(15.0),
      child: Column(children: [
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
}
