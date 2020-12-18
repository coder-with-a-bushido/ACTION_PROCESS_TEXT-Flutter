import 'dart:async';

import 'package:flutter/services.dart';

class ActionProcessText {
  ///Defines the channel for text transaction from the native code.
  static const MethodChannel _channel =
      const MethodChannel('action_process_text');

  ///The var for storing the text from the action.
  static String _inputText = '';
  static bool _fromIntend = false;
  static get calledFromNative => _fromIntend;

  ///Returns the selected text from the action.
  static Future<String> get getInputText async {
    _channel.setMethodCallHandler(_handleMethod);
    return _inputText;
  }

  ///Used for handling the text trasaction and updating the
  ///inputText with it.
  static Future<dynamic> _handleMethod(MethodCall call) async {
    switch (call.method) {
      case "copiedText":
        _fromIntend = true;
        _inputText = call.arguments.toString();
        return call.arguments;
    }
  }
}
