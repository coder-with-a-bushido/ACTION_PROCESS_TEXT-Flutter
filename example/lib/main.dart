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
  _MyAppState() {
    initActionProcessText();
  }

  String inputText = '';
  Future<void> initActionProcessText() async {
    inputText = await ActionProcessText.getInputText;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ActionProcessText.calledFromNative ? MainPage(inputText) : Home(),
    );
  }
}

class MainPage extends StatefulWidget {
  final String text;
  MainPage(this.text);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('ACTION_PROCESS_TEXT Example'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(child: Text('Selected Text:\n')),
            Container(child: Text('${widget.text}')),
          ]),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Not called from native side.'),
    );
  }
}
