#import "AlgeographyPlugin.h"
#if __has_include(<algeography/algeography-Swift.h>)
#import <algeography/algeography-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "algeography-Swift.h"
#endif

@implementation AlgeographyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAlgeographyPlugin registerWithRegistrar:registrar];
}
@end
