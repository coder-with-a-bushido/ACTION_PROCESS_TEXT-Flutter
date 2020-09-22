import 'package:flutter/material.dart';
import 'dart:async';
import 'package:action_process_text/action_process_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  _MainPageState() {
    initActionProcessText();
  }

  Future<void> initActionProcessText() async {
    inputText = await ActionProcessText.getInputText;
    setState(() {});
  }

  String inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Center(
        child: Text('Copied Text: $inputText\n'),
      ),
    );
  }
}
