import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:action_process_text/action_process_text.dart';

void main() {
  const MethodChannel channel = MethodChannel('action_process_text');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  // test('getPlatformVersion', () async {
  //   expect(await ActionProcessText.platformVersion, '42');
  // });
}
