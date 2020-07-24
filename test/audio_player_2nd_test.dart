import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:audio_player_2nd/audio_player_2nd.dart';

void main() {
  const MethodChannel channel = MethodChannel('audio_player_2nd');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await AudioPlayer2nd.platformVersion, '42');
  });
}
