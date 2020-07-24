import Flutter
import UIKit

public class SwiftAudioPlayer2ndPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "audio_player_2nd", binaryMessenger: registrar.messenger())
    let instance = SwiftAudioPlayer2ndPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
