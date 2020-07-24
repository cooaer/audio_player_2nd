#import "AudioPlayer2ndPlugin.h"
#if __has_include(<audio_player_2nd/audio_player_2nd-Swift.h>)
#import <audio_player_2nd/audio_player_2nd-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "audio_player_2nd-Swift.h"
#endif

@implementation AudioPlayer2ndPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAudioPlayer2ndPlugin registerWithRegistrar:registrar];
}
@end
