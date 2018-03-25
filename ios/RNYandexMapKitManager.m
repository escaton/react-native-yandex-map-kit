#import "RNYandexMapKitManager.h"
#import "RNYandexMapKitView.h"

@implementation RNYandexMapKitManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    return [[RNYandexMapKitView alloc] init];
}

@end
