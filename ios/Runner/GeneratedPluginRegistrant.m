//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<flutter_unity_widget/FlutterUnityWidgetPlugin.h>)
#import <flutter_unity_widget/FlutterUnityWidgetPlugin.h>
#else
@import flutter_unity_widget;
#endif

#if __has_include(<url_launcher/UrlLauncherPlugin.h>)
#import <url_launcher/UrlLauncherPlugin.h>
#else
@import url_launcher;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FlutterUnityWidgetPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterUnityWidgetPlugin"]];
  [FLTUrlLauncherPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTUrlLauncherPlugin"]];
}

@end
