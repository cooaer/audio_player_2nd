import 'dart:async';

import 'package:flutter/services.dart';

class AudioPlayer2nd {
  static const MethodChannel _channel =
      const MethodChannel('audio_player_2nd');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
