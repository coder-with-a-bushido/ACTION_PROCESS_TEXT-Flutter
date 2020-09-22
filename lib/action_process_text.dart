import 'dart:async';

import 'package:flutter/services.dart';

class ActionProcessText {
  static const MethodChannel _channel =
      const MethodChannel('action_process_text');

  static String inputText = '';

  static Future<String> get getInputText async {
    _channel.setMethodCallHandler(_handleMethod);
    return inputText;
  }

  static Future<dynamic> _handleMethod(MethodCall call) async {
    switch (call.method) {
      case "copiedText":
        inputText = call.arguments.toString();
        return call.arguments;
    }
  }
}
