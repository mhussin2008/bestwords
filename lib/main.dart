import 'package:flutter/material.dart';
import 'data.dart';
import 'package:flutter/services.dart';

import 'mainScreen.dart';

/// Flutter code sample for [LogicalKeyboardKey].

void main() => runApp(const KeyExampleApp());

class KeyExampleApp extends StatefulWidget {
  const KeyExampleApp({super.key});

  @override
  State<KeyExampleApp> createState() => _KeyExampleAppState();
}

class _KeyExampleAppState extends State<KeyExampleApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  print(data.gk.currentState);
                  if (data.gk.currentState != null) {
                    data.gk.currentState!.setState(() {
                    data.pageNumber++;
                  });}
                },
                icon: Icon(
                  Icons.arrow_left_rounded,
                  size: 50,
                )),
            const Text('مصحف خير الكلام'),
            IconButton(
                onPressed: () {
                  if (data.gk.currentState != null) {
                    data.gk.currentState!.setState(() {
                      data.pageNumber--;
                    });
                  }
                },
                icon: Icon(
                  Icons.arrow_right_rounded,
                  size: 50,
                )),
          ],
        )),
        body: mainScreen(parent_update),
      ),
    );
  }

  parent_update() {
      print('object');
    setState(() {

    });
  }
}
