#import "RNYandexMapKitView.h"
#import <YandexMapKit/YMKMapView.h>


@implementation RNYandexMapKitView {
    YMKMapView *_map;
};

- (instancetype)init
{
    self = [super init];
    
    _map = [[YMKMapView alloc] initWithFrame:self.bounds];
    _map.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [self addSubview:_map];
    
    return self;
}
@end
