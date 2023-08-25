import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

/// Flutter code sample for [CheckboxListTile].

void main() => runApp(const CheckboxListTileApp());

class CheckboxListTileApp extends StatelessWidget {
  const CheckboxListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const CheckboxListTileExample(),
    );
  }
}

class CheckboxListTileExample extends StatefulWidget {
  const CheckboxListTileExample({super.key});

  @override
  State<CheckboxListTileExample> createState() =>
      _CheckboxListTileExampleState();
}

class _CheckboxListTileExampleState extends State<CheckboxListTileExample> {
  List<String> taskList = ["Alice", "Bob", "Carol"];
  var backColorChecked = Color.fromRGBO(255, 255, 255, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CheckboxListTile Sample')),
      body: Center(
          child: Column(
        children: [
          for (var taskItem in taskList)
            CheckboxListTile(
                title: Text(taskItem),
                value: timeDilation != 1.0,
                onChanged: (bool? value) {
                  setState(() {
                    timeDilation = value! ? 2.0 : 1.0;
                    backColorChecked = value
                        ? Color.fromRGBO(0, 255, 0, 1)
                        : Color.fromRGBO(255, 255, 255, 1);
                  });
                },
                secondary: const Icon(Icons.hourglass_empty),
                tileColor: backColorChecked)
                value = 1;
        ],
      )),
    );
  }
}
